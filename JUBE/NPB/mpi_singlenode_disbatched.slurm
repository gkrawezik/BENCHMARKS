#!/bin/bash
# sbatch -C rome -p scc -N1 --ntasks-per-node 128 slurmTest.sh

p=/tmp/dbTaskPipe_${SLURM_JOBID}
rm -f $p
mkfifo $p

# We will tell jube to use fauxSub.sh to submit a task.
# It writes the task to disBatch via the pipe.
fs=./fauxSub_${SLURM_JOBID}.sh
cat > ${fs} <<EOF
#!/bin/bash

echo "\$@" > $p 
EOF
chmod +x ${fs}

# Run disBatch in the back ground, reading tasks from the pipe.
module add disBatch/2.0-beta
disBatch -t 1 $p &

# Keep the pipe open.
exec 3>$p

export FAUX_SUB=${fs}; jube run npb_mpi_singlenode_disbatched.xml 2> hw_smdb.log

# Close the pipe
exec 3>&-

# Wait for execution to finish
wait

# Clean up. Probably should put this in an exit function.
rm -f $p ${fs}

