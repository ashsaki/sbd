NVCOPILER_ACC_NOTIFY=3 NVCOMPILER_ACC_TIME=1 mpirun -np 8 -env OMP_NUM_THREADS=1 ./diag --fcidump fcidump_Fe4S4.txt --adetfile AlphaDets.txt \
       --method 0 --block 10 --iteration 4 --tolerance 1.0e-2 \
       --adet_comm_size 4 --bdet_comm_size 2 --task_comm_size 1 \
       --init 0 --shuffle 0 --carryover_type 0 --rdm 0 
# mpirun -np 16 -x OMP_NUM_THREADS=1 ./diag --fcidump fcidump_Fe4S4.txt --adetfile AlphaDets.txt --method 0 --block 10 --iteration 4 --tolerance 1.0e-4 --adet_comm_size 2 --bdet_comm_size 2 --task_comm_size 2 --init 0 --shuffle 0 --carryover_type 3 --carryover_threshold 1.0e-3 --carryover_adetfile carryover_adet.txt --loadname wf --rdm 1
