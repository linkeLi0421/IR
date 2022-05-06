; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gv100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.gk104_fifo_func = type { %struct.anon.7, ptr, %struct.anon.8, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon.7 = type { ptr }
%struct.anon.8 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.gk104_fifo_engn = type { ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.9, i32, [16 x %struct.anon.10], i32, [16 x %struct.anon.11], i32, %struct.anon.12 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.6 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.6 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.9 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.10 = type { ptr, i32, i32 }
%struct.anon.11 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.12 = type { ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }

@gv100_fifo_runlist = dso_local constant %struct.gk104_fifo_runlist_func { i8 16, ptr @gv100_fifo_runlist_cgrp, ptr @gv100_fifo_runlist_chan, ptr @gk104_fifo_runlist_commit }, align 4
@.str = private unnamed_addr constant [5 x i8] c"T1_0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"T1_1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"T1_2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"T1_3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"T1_4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"T1_5\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"T1_6\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"T1_7\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PE_0\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"PE_1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PE_2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PE_3\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PE_4\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"PE_5\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PE_6\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"PE_7\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"RAST\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"GPCCS\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"PROP_0\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"PROP_1\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"PROP_2\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"PROP_3\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"GPM\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_0\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_1\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_2\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_3\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_4\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_5\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_6\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_7\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"RGG_UTLB\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"T1_8\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"T1_9\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"T1_10\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"T1_11\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"T1_12\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"T1_13\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"T1_14\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"T1_15\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"TPCCS_0\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"TPCCS_1\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"TPCCS_2\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"TPCCS_3\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"TPCCS_4\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"TPCCS_5\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"TPCCS_6\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"TPCCS_7\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"PE_8\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"PE_9\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"TPCCS_8\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"TPCCS_9\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"T1_16\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"T1_17\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"T1_18\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"T1_19\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"PE_10\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"PE_11\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"TPCCS_10\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"TPCCS_11\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"T1_20\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"T1_21\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"T1_22\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"T1_23\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"PE_12\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"PE_13\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"TPCCS_12\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"TPCCS_13\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"T1_24\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"T1_25\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"T1_26\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"T1_27\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"PE_14\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"PE_15\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"TPCCS_14\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"TPCCS_15\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"T1_28\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"T1_29\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"T1_30\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"T1_31\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"PE_16\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"PE_17\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"TPCCS_16\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"TPCCS_17\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"T1_32\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"T1_33\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"T1_34\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"T1_35\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"PE_18\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"PE_19\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"TPCCS_18\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"TPCCS_19\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"T1_36\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"T1_37\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"T1_38\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"T1_39\00", align 1
@gv100_fifo_fault_gpcclient = dso_local constant [98 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.1, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.2, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.3, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.5, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.6, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.7, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.8, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.9, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.14, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.15, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.16, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.17, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.18, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.21, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.24, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.25, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.26, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.27, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.28, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 29, ptr @.str.29, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.30, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.31, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 32, ptr @.str.32, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.33, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 34, ptr @.str.34, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.35, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 37, ptr @.str.37, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 38, ptr @.str.38, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 39, ptr @.str.39, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 40, ptr @.str.40, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 41, ptr @.str.41, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 42, ptr @.str.42, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 43, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 44, ptr @.str.44, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 45, ptr @.str.45, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 46, ptr @.str.46, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 47, ptr @.str.47, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 48, ptr @.str.48, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 49, ptr @.str.49, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 50, ptr @.str.50, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 51, ptr @.str.51, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 52, ptr @.str.52, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 53, ptr @.str.53, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 54, ptr @.str.54, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 55, ptr @.str.55, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 56, ptr @.str.56, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 57, ptr @.str.57, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 58, ptr @.str.58, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 59, ptr @.str.59, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 60, ptr @.str.60, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 61, ptr @.str.61, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 62, ptr @.str.62, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 63, ptr @.str.63, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 64, ptr @.str.64, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 65, ptr @.str.65, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 66, ptr @.str.66, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 67, ptr @.str.67, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 68, ptr @.str.68, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 69, ptr @.str.69, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 70, ptr @.str.70, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 71, ptr @.str.71, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 72, ptr @.str.72, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 73, ptr @.str.73, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 74, ptr @.str.74, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 75, ptr @.str.75, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 76, ptr @.str.76, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 77, ptr @.str.77, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 78, ptr @.str.78, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 79, ptr @.str.79, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 80, ptr @.str.80, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 81, ptr @.str.81, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 82, ptr @.str.82, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 83, ptr @.str.83, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 84, ptr @.str.84, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 85, ptr @.str.85, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 86, ptr @.str.86, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 87, ptr @.str.87, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 88, ptr @.str.88, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 89, ptr @.str.89, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 90, ptr @.str.90, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 91, ptr @.str.91, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 92, ptr @.str.92, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 93, ptr @.str.93, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 94, ptr @.str.94, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 95, ptr @.str.95, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 96, ptr @.str.96, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.97 = private unnamed_addr constant [4 x i8] c"VIP\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"CE0\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"CE1\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"DNISO\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"FE\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"FECS\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"HOST_CPU\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"HOST_CPU_NB\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"MMU\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"NVDEC\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"NVENC1\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"NISO\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"P2P\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"PERF\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"RASTERTWOD\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"SCC\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"SCC_NB\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"SEC\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"SSYNC\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"CE2\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"XV\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"MMU_NB\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"NVENC0\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"DFALCON\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"SKED\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"AFALCON\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"DONT_CARE\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"HSCE0\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"HSCE1\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"HSCE2\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"HSCE3\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"HSCE4\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"HSCE5\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"HSCE6\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"HSCE7\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"HSCE8\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"HSCE9\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"HSHUB\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"PTP_X0\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"PTP_X1\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"PTP_X2\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"PTP_X3\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"PTP_X4\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"PTP_X5\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"PTP_X6\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"PTP_X7\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"NVENC2\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"VPR_SCRUBBER0\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"VPR_SCRUBBER1\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"DWBIF\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"FBFALCON\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"CE_SHIM\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"GSP\00", align 1
@gv100_fifo_fault_hubclient = dso_local constant [58 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.97, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.98, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.99, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.100, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.101, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.102, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.103, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.104, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.105, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.106, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.107, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.108, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.109, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.110, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.111, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.112, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.113, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.114, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.115, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.116, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.117, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.118, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.119, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.120, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.121, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.122, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.123, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.124, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 29, ptr @.str.125, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.126, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.127, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 32, ptr @.str.128, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.129, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 34, ptr @.str.130, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.131, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.132, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 37, ptr @.str.133, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 38, ptr @.str.134, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 39, ptr @.str.135, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 40, ptr @.str.136, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 41, ptr @.str.137, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 42, ptr @.str.138, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 43, ptr @.str.139, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 44, ptr @.str.140, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 45, ptr @.str.141, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 46, ptr @.str.142, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 47, ptr @.str.143, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 48, ptr @.str.144, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 49, ptr @.str.145, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 50, ptr @.str.146, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 51, ptr @.str.147, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 52, ptr @.str.148, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 53, ptr @.str.149, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 54, ptr @.str.150, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 55, ptr @.str.151, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 56, ptr @.str.152, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 57, ptr @.str.153, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.154 = private unnamed_addr constant [4 x i8] c"PDE\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"PDE_SIZE\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"PTE\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"VA_LIMIT_VIOLATION\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"UNBOUND_INST_BLOCK\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"PRIV_VIOLATION\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"RO_VIOLATION\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"WO_VIOLATION\00", align 1
@.str.162 = private unnamed_addr constant [21 x i8] c"PITCH_MASK_VIOLATION\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"WORK_CREATION\00", align 1
@.str.164 = private unnamed_addr constant [21 x i8] c"UNSUPPORTED_APERTURE\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"COMPRESSION_FAILURE\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"UNSUPPORTED_KIND\00", align 1
@.str.167 = private unnamed_addr constant [17 x i8] c"REGION_VIOLATION\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"POISONED\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"ATOMIC_VIOLATION\00", align 1
@gv100_fifo_fault_reason = dso_local constant [17 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.154, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.155, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.156, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.157, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.158, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.159, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.160, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.161, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.162, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.163, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.164, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.165, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.166, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.167, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.168, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.169, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.170 = private unnamed_addr constant [10 x i8] c"VIRT_READ\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"VIRT_WRITE\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"VIRT_ATOMIC\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"VIRT_PREFETCH\00", align 1
@.str.174 = private unnamed_addr constant [17 x i8] c"VIRT_ATOMIC_WEAK\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"PHYS_READ\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"PHYS_WRITE\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"PHYS_ATOMIC\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"PHYS_PREFETCH\00", align 1
@gv100_fifo_fault_access = dso_local constant [10 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.170, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.171, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.172, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.173, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.174, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.175, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.176, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.177, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.178, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@gv100_fifo = internal constant %struct.gk104_fifo_func { %struct.anon.7 zeroinitializer, ptr @gm200_fifo_pbdma, %struct.anon.8 { ptr @gv100_fifo_fault_access, ptr @gv100_fifo_fault_engine, ptr @gv100_fifo_fault_reason, ptr @gv100_fifo_fault_hubclient, ptr @gv100_fifo_fault_gpcclient }, ptr @gv100_fifo_runlist, %struct.gk104_fifo_user_user { %struct.nvkm_sclass { i32 -1, i32 -1, i32 50017, ptr null, ptr null }, ptr @gv100_fifo_user_new }, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 50031, ptr null, ptr null }, ptr @gv100_fifo_gpfifo_new }, i8 1 }, align 4
@gm200_fifo_pbdma = external dso_local constant %struct.gk104_fifo_pbdma_func, align 4
@gv100_fifo_fault_engine = internal constant [23 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.179, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.180, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.181, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.182, ptr null, i32 12, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.183, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.184, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.113, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.185, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 32, ptr @.str.186, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.187, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 34, ptr @.str.188, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.189, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.190, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 37, ptr @.str.191, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 38, ptr @.str.192, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 39, ptr @.str.193, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 40, ptr @.str.194, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 41, ptr @.str.195, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 42, ptr @.str.196, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 43, ptr @.str.197, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 44, ptr @.str.198, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 45, ptr @.str.199, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.179 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"PTP\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"BAR1\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"BAR2\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"PWR_PMU\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"IFB\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"PHYSICAL\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"HOST0\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"HOST1\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"HOST2\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"HOST3\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"HOST4\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"HOST5\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"HOST6\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c"HOST7\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"HOST8\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"HOST9\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"HOST10\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"HOST11\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"HOST12\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"HOST13\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_fifo_runlist_chan(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gk104_fifo, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i64 %10(ptr noundef %7) #2
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i32
  %15 = shl nuw nsw i32 %14, 9
  %16 = zext i32 %15 to i64
  %17 = add i64 %11, %16
  %18 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %19, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = zext i32 %2 to i64
  %27 = trunc i64 %17 to i32
  tail call void %25(ptr noundef %1, i64 noundef %26, i32 noundef %27) #2
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = add i32 %2, 4
  %32 = zext i32 %31 to i64
  %33 = lshr i64 %17, 32
  %34 = trunc i64 %33 to i32
  tail call void %30(ptr noundef %1, i64 noundef %32, i32 noundef %34) #2
  %35 = load ptr, ptr %22, align 4
  %36 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = add i32 %2, 8
  %39 = zext i32 %38 to i64
  %40 = trunc i64 %21 to i32
  %41 = load i16, ptr %12, align 8
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, %40
  tail call void %37(ptr noundef %1, i64 noundef %39, i32 noundef %43) #2
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = add i32 %2, 12
  %48 = zext i32 %47 to i64
  %49 = lshr i64 %21, 32
  %50 = trunc i64 %49 to i32
  tail call void %46(ptr noundef %1, i64 noundef %48, i32 noundef %50) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gv100_fifo_runlist_cgrp(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = zext i32 %2 to i64
  tail call void %7(ptr noundef %1, i64 noundef %8, i32 noundef -2147287039) #2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = add i32 %2, 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void %11(ptr noundef %1, i64 noundef %13, i32 noundef %15) #2
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = add i32 %2, 8
  %20 = zext i32 %19 to i64
  %21 = load i32, ptr %0, align 4
  tail call void %18(ptr noundef %1, i64 noundef %20, i32 noundef %21) #2
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = add i32 %2, 12
  %26 = zext i32 %25 to i64
  tail call void %24(ptr noundef %1, i64 noundef %26, i32 noundef 0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_fifo_runlist_commit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gk104_fifo_new_(ptr noundef nonnull @gv100_fifo, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 4096, ptr noundef %3) #2
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fifo_user_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gv100_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
