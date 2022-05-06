; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_fifo_runlist_func = type { i8, ptr, ptr, ptr }
%struct.gk104_fifo_pbdma_func = type { ptr, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.gk104_fifo_func = type { %struct.anon, ptr, %struct.anon.128, ptr, %struct.gk104_fifo_user_user, %struct.gk104_fifo_chan_user, i8 }
%struct.anon = type { ptr }
%struct.anon.128 = type { ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo_user_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gk104_fifo_chan_user = type { %struct.nvkm_sclass, ptr }
%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gk104_fifo = type { ptr, %struct.nvkm_fifo, %struct.anon.129, i32, [16 x %struct.anon.130], i32, [16 x %struct.anon.131], i32, %struct.anon.132 }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.129 = type { %struct.work_struct, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.130 = type { ptr, i32, i32 }
%struct.anon.131 = type { [2 x ptr], i32, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.132 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.gk104_fifo_engine_status = type { i8, i8, i8, i8, i8, %struct.anon.139, %struct.anon.139, ptr }
%struct.anon.139 = type { i8, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gk104_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, ptr, %struct.list_head, i8, ptr, [16 x %struct.gk104_fifo_engn] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.gk104_fifo_engn = type { ptr, ptr }
%struct.nvkm_fifo_cgrp = type { i32, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.2, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.2 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvkm_fault_data = type { i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [83 x i8] c"%s: engine %02d: busy %d faulted %d chsw %d save %d load %d %sid %d%s-> %sid %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tsg\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: runlist %d update timeout\0A\00", align 1
@gk104_fifo_runlist = dso_local constant %struct.gk104_fifo_runlist_func { i8 8, ptr null, ptr @gk104_fifo_runlist_chan, ptr @gk104_fifo_runlist_commit }, align 4
@gk104_fifo_pbdma = dso_local constant %struct.gk104_fifo_pbdma_func { ptr @gk104_fifo_pbdma_nr, ptr @gk104_fifo_pbdma_init, ptr null }, align 4
@gk104_fifo_bind_reason = internal constant [7 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 1, ptr @.str.123, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.124, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.125, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.126, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.127, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.128, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: BIND_ERROR %02x [%s]\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s: CHSW_ERROR %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%s: DROPPED_MMU_FAULT %08x\0A\00", align 1
@gk104_fifo_pbdma_intr_0 = internal constant [31 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.129 }, %struct.nvkm_bitfield { i32 2, ptr @.str.130 }, %struct.nvkm_bitfield { i32 4, ptr @.str.131 }, %struct.nvkm_bitfield { i32 8, ptr @.str.132 }, %struct.nvkm_bitfield { i32 16, ptr @.str.133 }, %struct.nvkm_bitfield { i32 32, ptr @.str.134 }, %struct.nvkm_bitfield { i32 64, ptr @.str.135 }, %struct.nvkm_bitfield { i32 128, ptr @.str.136 }, %struct.nvkm_bitfield { i32 256, ptr @.str.137 }, %struct.nvkm_bitfield { i32 512, ptr @.str.138 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.139 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.140 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.141 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.142 }, %struct.nvkm_bitfield { i32 16384, ptr @.str.143 }, %struct.nvkm_bitfield { i32 32768, ptr @.str.144 }, %struct.nvkm_bitfield { i32 65536, ptr @.str.145 }, %struct.nvkm_bitfield { i32 131072, ptr @.str.146 }, %struct.nvkm_bitfield { i32 262144, ptr @.str.147 }, %struct.nvkm_bitfield { i32 524288, ptr @.str.148 }, %struct.nvkm_bitfield { i32 1048576, ptr @.str.149 }, %struct.nvkm_bitfield { i32 2097152, ptr @.str.150 }, %struct.nvkm_bitfield { i32 4194304, ptr @.str.151 }, %struct.nvkm_bitfield { i32 8388608, ptr @.str.152 }, %struct.nvkm_bitfield { i32 33554432, ptr @.str.153 }, %struct.nvkm_bitfield { i32 67108864, ptr @.str.154 }, %struct.nvkm_bitfield { i32 134217728, ptr @.str.155 }, %struct.nvkm_bitfield { i32 536870912, ptr @.str.156 }, %struct.nvkm_bitfield { i32 1073741824, ptr @.str.157 }, %struct.nvkm_bitfield { i32 -2147483648, ptr @.str.158 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.12 = private unnamed_addr constant [71 x i8] c"%s: PBDMA%d: %08x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@gk104_fifo_pbdma_intr_1 = internal constant [6 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.159 }, %struct.nvkm_bitfield { i32 2, ptr @.str.160 }, %struct.nvkm_bitfield { i32 4, ptr @.str.161 }, %struct.nvkm_bitfield { i32 8, ptr @.str.162 }, %struct.nvkm_bitfield { i32 16, ptr @.str.163 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"%s: PBDMA%d: %08x [%s] ch %d %08x %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: %d PBDMA(s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"%s, %d\00", align 1
@nvkm_subdev_type = external dso_local local_unnamed_addr global [51 x ptr], align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"%s: engine %2d: runlist %2d pbdma %2d (%s)\0A\00", align 1
@gk104_fifo_oneinit.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"&fifo->runlist[i].wait\00", align 1
@gk104_fifo_ = internal constant %struct.nvkm_fifo_func { ptr @gk104_fifo_dtor, ptr @gk104_fifo_oneinit, ptr @gk104_fifo_info, ptr @gk104_fifo_init, ptr @gk104_fifo_fini, ptr @gk104_fifo_intr, ptr @gk104_fifo_fault, ptr @gk104_fifo_engine_id, ptr @gk104_fifo_id_engine, ptr null, ptr null, ptr @gk104_fifo_uevent_init, ptr @gk104_fifo_uevent_fini, ptr @gk104_fifo_recover_chan, ptr @gk104_fifo_class_get, ptr @gk104_fifo_class_new, [0 x ptr] zeroinitializer }, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@gk104_fifo_fault_access = dso_local constant [3 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.19, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.20, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [3 x i8] c"GR\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"CAPTURE\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"IFB\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"BAR1\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"BAR2\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"SCHED\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"HOST0\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"HOST1\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"HOST2\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"HOST3\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"HOST4\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"HOST5\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"HOST6\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"HOST7\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"HOSTSR\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"MSVLD\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"MSPPP\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"PERF\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"MSPDEC\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"CE0\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"CE1\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"PTP\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"MSENC\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"CE2\00", align 1
@gk104_fifo_fault_engine = dso_local constant [27 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.21, ptr null, i32 33, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.22, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.23, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.24, ptr null, i32 34, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.25, ptr null, i32 16, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.26, ptr null, i32 12, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.27, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.28, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.29, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.30, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.31, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.32, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.33, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.34, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.35, ptr null, i32 32, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.36, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.37, ptr null, i32 40, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.38, ptr null, i32 39, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.39, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.40, ptr null, i32 38, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.41, ptr null, i32 28, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.42, ptr null, i32 28, i32 1 }, %struct.nvkm_enum { i32 23, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.44, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.45, ptr null, i32 37, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.46, ptr null, i32 28, i32 2 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [4 x i8] c"PDE\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"PDE_SIZE\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"PTE\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"VA_LIMIT_VIOLATION\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"UNBOUND_INST_BLOCK\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"PRIV_VIOLATION\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"RO_VIOLATION\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"WO_VIOLATION\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"PITCH_MASK_VIOLATION\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"WORK_CREATION\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"UNSUPPORTED_APERTURE\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"COMPRESSION_FAILURE\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"UNSUPPORTED_KIND\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"REGION_VIOLATION\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"BOTH_PTES_VALID\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"INFO_TYPE_POISONED\00", align 1
@gk104_fifo_fault_reason = dso_local constant [17 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.47, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.48, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.49, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.50, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.51, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.52, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.53, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.54, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.55, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.56, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.57, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.58, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.59, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.60, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.61, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.62, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.63 = private unnamed_addr constant [4 x i8] c"VIP\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"DNISO\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"FE\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"FECS\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"HOST\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"HOST_CPU\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"HOST_CPU_NB\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"MMU\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"NISO\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"P2P\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"PD\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"RASTERTWOD\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"SCC\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"SCC_NB\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"SEC\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"SSYNC\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"GR_CE\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"XV\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"MMU_NB\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"DFALCON\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"SKED\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"AFALCON\00", align 1
@gk104_fifo_fault_hubclient = dso_local constant [33 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.63, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.41, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.42, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.64, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.65, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.66, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.67, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.68, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.69, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.70, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.71, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.40, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.38, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.37, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.72, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.73, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.74, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.39, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.43, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.75, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.76, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.77, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.78, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.79, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.80, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.46, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.81, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.82, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.45, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 29, ptr @.str.83, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.84, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.85, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.86 = private unnamed_addr constant [5 x i8] c"L1_0\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"T1_0\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"PE_0\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"L1_1\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"T1_1\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"PE_1\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"L1_2\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"T1_2\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"PE_2\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"L1_3\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"T1_3\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"PE_3\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"RAST\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"GPCCS\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"PROP_0\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"PROP_1\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"PROP_2\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"PROP_3\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"L1_4\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"T1_4\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"PE_4\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"L1_5\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"T1_5\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"PE_5\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"L1_6\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"T1_6\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"PE_6\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"L1_7\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"T1_7\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"PE_7\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"GPM\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_0\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_1\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_2\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"LTP_UTLB_3\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"GPC_RGG_UTLB\00", align 1
@gk104_fifo_fault_gpcclient = dso_local constant [38 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.86, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.87, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.88, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.89, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 4, ptr @.str.90, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 5, ptr @.str.91, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 6, ptr @.str.92, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 7, ptr @.str.93, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 8, ptr @.str.94, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 9, ptr @.str.95, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 10, ptr @.str.96, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 11, ptr @.str.97, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 12, ptr @.str.98, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 13, ptr @.str.99, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 14, ptr @.str.100, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 15, ptr @.str.101, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 16, ptr @.str.102, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 17, ptr @.str.103, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 18, ptr @.str.104, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 19, ptr @.str.105, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 20, ptr @.str.106, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 21, ptr @.str.107, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 22, ptr @.str.108, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 23, ptr @.str.109, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 24, ptr @.str.110, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 25, ptr @.str.111, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 26, ptr @.str.112, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 27, ptr @.str.113, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 28, ptr @.str.114, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 29, ptr @.str.115, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 30, ptr @.str.116, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 31, ptr @.str.117, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 32, ptr @.str.118, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 33, ptr @.str.119, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 34, ptr @.str.120, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 35, ptr @.str.121, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 36, ptr @.str.122, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@gk104_fifo = internal constant %struct.gk104_fifo_func { %struct.anon { ptr @gf100_fifo_intr_fault }, ptr @gk104_fifo_pbdma, %struct.anon.128 { ptr @gk104_fifo_fault_access, ptr @gk104_fifo_fault_engine, ptr @gk104_fifo_fault_reason, ptr @gk104_fifo_fault_hubclient, ptr @gk104_fifo_fault_gpcclient }, ptr @gk104_fifo_runlist, %struct.gk104_fifo_user_user zeroinitializer, %struct.gk104_fifo_chan_user { %struct.nvkm_sclass { i32 0, i32 0, i32 41071, ptr null, ptr null }, ptr @gk104_fifo_gpfifo_new }, i8 0 }, align 4
@.str.123 = private unnamed_addr constant [17 x i8] c"BIND_NOT_UNBOUND\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"SNOOP_WITHOUT_BAR1\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"UNBIND_WHILE_RUNNING\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"INVALID_RUNLIST\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"INVALID_CTX_TGT\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"UNBIND_WHILE_PARKED\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"MEMREQ\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"MEMACK_TIMEOUT\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"MEMACK_EXTRA\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"MEMDAT_TIMEOUT\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"MEMDAT_EXTRA\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"MEMFLUSH\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"MEMOP\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"LBCONNECT\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"LBREQ\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"LBACK_TIMEOUT\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"LBACK_EXTRA\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"LBDAT_TIMEOUT\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"LBDAT_EXTRA\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"GPFIFO\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"GPPTR\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"GPENTRY\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"GPCRC\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"PBPTR\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"PBENTRY\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"PBCRC\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"XBARCONNECT\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"METHOD\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"METHODCRC\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"SEMAPHORE\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"ACQUIRE\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"PRI\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"NO_CTXSW_SEG\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"PBSEG\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"SIGNATURE\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"HCE_RE_ILLEGAL_OP\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"HCE_RE_ALIGNB\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"HCE_PRIV\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"HCE_ILLEGAL_MTHD\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c"HCE_ILLEGAL_CLASS\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.164 = private unnamed_addr constant [15 x i8] c"%s: PIO_ERROR\0A\00", align 1
@.str.165 = private unnamed_addr constant [22 x i8] c"%s: FB_FLUSH_TIMEOUT\0A\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"%s: LB_ERROR\0A\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"%s: INTR %08x\0A\00", align 1
@gk104_fifo_sched_reason = internal constant [2 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 10, ptr @.str.169, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], align 4
@.str.168 = private unnamed_addr constant [27 x i8] c"%s: SCHED_ERROR %02x [%s]\0A\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"CTXSW_TIMEOUT\00", align 1
@.str.170 = private unnamed_addr constant [39 x i8] c"%s: engine %d: scheduled for recovery\0A\00", align 1
@.str.171 = private unnamed_addr constant [40 x i8] c"%s: runlist %d: scheduled for recovery\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.172 = private unnamed_addr constant [7 x i8] c"GPC%d/\00", align 1
@nvkm_engine = external dso_local constant %struct.nvkm_subdev_func, align 4
@.str.173 = private unnamed_addr constant [112 x i8] c"%s: fault %02x [%s] at %016llx engine %02x [%s] client %02x [%s%s] reason %02x [%s] on channel %d [%010llx %s]\0A\00", align 1
@.str.174 = private unnamed_addr constant [24 x i8] c"%s: channel %d: killed\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_engine_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 4, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = shl i32 %1, 3
  %11 = add i32 %10, 9792
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %14 = lshr i32 %13, 31
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %2, align 4
  %16 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 1
  %17 = lshr i32 %13, 30
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, ptr %16, align 1
  %20 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 6
  %21 = lshr i32 %13, 28
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  store i8 %23, ptr %20, align 4
  %24 = lshr i32 %13, 16
  %25 = and i32 %24, 4095
  %26 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 6, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 2
  %28 = lshr i32 %13, 15
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  store i8 %30, ptr %27, align 2
  %31 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 3
  %32 = lshr i32 %13, 14
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  store i8 %34, ptr %31, align 1
  %35 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 4
  %36 = lshr i32 %13, 13
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  store i8 %38, ptr %35, align 4
  %39 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 5
  %40 = lshr i32 %13, 12
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  store i8 %42, ptr %39, align 4
  %43 = and i32 %13, 4095
  %44 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 5, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %2, i32 0, i32 7
  store ptr null, ptr %45, align 4
  %46 = icmp sgt i32 %13, -1
  %47 = icmp eq i8 %30, 0
  %48 = select i1 %46, i1 true, i1 %47
  %49 = icmp eq i8 %38, 0
  br i1 %48, label %58, label %50

50:                                               ; preds = %3
  br i1 %49, label %59, label %51

51:                                               ; preds = %50
  %52 = icmp eq i8 %34, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %51
  %54 = icmp eq ptr %5, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = tail call zeroext i1 @nvkm_engine_chsw_load(ptr noundef nonnull %5) #11
  br i1 %56, label %59, label %57

57:                                               ; preds = %55, %53
  br label %59

58:                                               ; preds = %3
  br i1 %49, label %61, label %59

59:                                               ; preds = %58, %57, %55, %51, %50
  %60 = phi ptr [ %39, %57 ], [ %20, %55 ], [ %20, %51 ], [ %39, %50 ], [ %39, %58 ]
  store ptr %60, ptr %45, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi ptr [ null, %58 ], [ %60, %59 ]
  %63 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp ugt i32 %64, 3
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %71 = load i8, ptr %2, align 4, !range !10
  %72 = zext i8 %71 to i32
  %73 = load i8, ptr %16, align 1, !range !10
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %27, align 2, !range !10
  %76 = zext i8 %75 to i32
  %77 = load i8, ptr %31, align 1, !range !10
  %78 = zext i8 %77 to i32
  %79 = load i8, ptr %35, align 4, !range !10
  %80 = zext i8 %79 to i32
  %81 = load i8, ptr %39, align 4, !range !10
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, ptr @.str.2, ptr @.str.1
  %84 = load i32, ptr %44, align 4
  %85 = icmp eq ptr %62, %39
  %86 = select i1 %85, ptr @.str.3, ptr @.str.4
  %87 = load i8, ptr %20, align 4, !range !10
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr @.str.2, ptr @.str.1
  %90 = load i32, ptr %26, align 4
  %91 = icmp eq ptr %62, %20
  %92 = select i1 %91, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str, ptr noundef %70, i32 noundef %1, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, ptr noundef nonnull %83, i32 noundef %84, ptr noundef nonnull %86, ptr noundef nonnull %89, i32 noundef %90, ptr noundef nonnull %92) #12
  br label %93

93:                                               ; preds = %66, %61
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_engine_chsw_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_class_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.gk104_fifo_func, ptr %9, i32 0, i32 5
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gk104_fifo_chan_user, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %6, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #11
  br label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.gk104_fifo_func, ptr %9, i32 0, i32 4
  %18 = icmp eq ptr %8, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gk104_fifo_user_user, ptr %8, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #11
  br label %24

23:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 99, i32 noundef 9, ptr noundef null) #11
  br label %24

24:                                               ; preds = %23, %19, %12
  %25 = phi i32 [ %15, %12 ], [ %22, %19 ], [ -22, %23 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @gk104_fifo_class_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gk104_fifo_func, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.gk104_fifo_func, ptr %5, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %13, ptr noundef align 4 dereferenceable(20) %6, i32 20, i1 false)
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.gk104_fifo_func, ptr %14, i32 0, i32 4
  br label %29

16:                                               ; preds = %10, %3
  %17 = phi i32 [ 1, %10 ], [ 0, %3 ]
  %18 = getelementptr inbounds %struct.gk104_fifo_func, ptr %5, i32 0, i32 5
  %19 = getelementptr inbounds %struct.gk104_fifo_func, ptr %5, i32 0, i32 5, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %17, %1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %26, ptr noundef align 4 dereferenceable(20) %18, i32 20, i1 false)
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.gk104_fifo_func, ptr %27, i32 0, i32 5
  br label %29

29:                                               ; preds = %25, %12
  %30 = phi ptr [ %28, %25 ], [ %15, %12 ]
  %31 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %22, %16
  %33 = phi i32 [ %23, %22 ], [ %17, %16 ], [ 0, %29 ]
  ret i32 %33
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_uevent_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = and i32 %7, 2147483647
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_uevent_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = or i32 %7, -2147483648
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_commit(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.nvkm_timer_wait, align 8
  %6 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %2) #11
  switch i32 %11, label %13 [
    i32 1, label %14
    i32 3, label %12
  ]

12:                                               ; preds = %4
  br label %14

13:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 151, i32 noundef 9, ptr noundef null) #11
  br label %69

14:                                               ; preds = %12, %4
  %15 = phi i32 [ 805306368, %12 ], [ 0, %4 ]
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 %18(ptr noundef %2) #11
  %20 = lshr i64 %19, 12
  %21 = trunc i64 %20 to i32
  %22 = or i32 %15, %21
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 8816
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #11, !srcloc !12
  %26 = shl i32 %1, 20
  %27 = or i32 %26, %3
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr i8, ptr %28, i32 8820
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !13
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %5) #11
  %30 = shl i32 %1, 3
  %31 = add i32 %30, 8836
  br label %32

32:                                               ; preds = %38, %14
  %33 = load ptr, ptr %23, align 4
  %34 = getelementptr i8, ptr %33, i32 %31
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %36 = and i32 %35, 1048576
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %32
  %39 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %5) #11
  %40 = icmp sgt i64 %39, -1
  br i1 %40, label %32, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.nvkm_timer, ptr %42, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = call ptr @dev_driver_string(ptr noundef %46) #11
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds %struct.nvkm_timer, ptr %48, i32 0, i32 1, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load ptr, ptr %52, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = phi ptr [ %57, %56 ], [ %54, %41 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 162, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %47, ptr noundef %59) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  %60 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.7, ptr noundef %67, i32 noundef %1) #12
  br label %69

68:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  br label %69

69:                                               ; preds = %68, %63, %58, %13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_update(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gk104_fifo_func, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 6
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %1
  %8 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [2 x ptr], ptr %7, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq i32 %9, 0
  %13 = zext i1 %12 to i32
  store i32 %13, ptr %8, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %11) #11
  %18 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %1, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %34, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %5, i32 0, i32 2
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi ptr [ %19, %21 ], [ %32, %23 ]
  %25 = phi i32 [ 0, %21 ], [ %28, %23 ]
  %26 = getelementptr i8, ptr %24, i32 -340
  %27 = load ptr, ptr %22, align 4
  %28 = add i32 %25, 1
  %29 = load i8, ptr %5, align 4
  %30 = zext i8 %29 to i32
  %31 = mul i32 %25, %30
  tail call void %27(ptr noundef %26, ptr noundef %11, i32 noundef %31) #11
  %32 = load ptr, ptr %24, align 4
  %33 = icmp eq ptr %32, %18
  br i1 %33, label %34, label %23

34:                                               ; preds = %23, %2
  %35 = phi i32 [ 0, %2 ], [ %28, %23 ]
  %36 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %1, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %69, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %5, i32 0, i32 2
  br label %46

42:                                               ; preds = %58, %46
  %43 = phi i32 [ %56, %46 ], [ %67, %58 ]
  %44 = load ptr, ptr %47, align 4
  %45 = icmp eq ptr %44, %36
  br i1 %45, label %69, label %46

46:                                               ; preds = %42, %39
  %47 = phi ptr [ %37, %39 ], [ %44, %42 ]
  %48 = phi i32 [ %35, %39 ], [ %43, %42 ]
  %49 = getelementptr i8, ptr %47, i32 -4
  %50 = load ptr, ptr %40, align 4
  %51 = load i8, ptr %5, align 4
  %52 = zext i8 %51 to i32
  %53 = mul i32 %48, %52
  tail call void %50(ptr noundef %49, ptr noundef %11, i32 noundef %53) #11
  %54 = getelementptr i8, ptr %47, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = add i32 %48, 1
  %57 = icmp eq ptr %55, %54
  br i1 %57, label %42, label %58

58:                                               ; preds = %58, %46
  %59 = phi i32 [ %67, %58 ], [ %56, %46 ]
  %60 = phi ptr [ %66, %58 ], [ %55, %46 ]
  %61 = getelementptr i8, ptr %60, i32 -340
  %62 = load ptr, ptr %41, align 4
  %63 = load i8, ptr %5, align 4
  %64 = zext i8 %63 to i32
  %65 = mul i32 %59, %64
  tail call void %62(ptr noundef %61, ptr noundef %11, i32 noundef %65) #11
  %66 = load ptr, ptr %60, align 4
  %67 = add i32 %59, 1
  %68 = icmp eq ptr %66, %54
  br i1 %68, label %42, label %58

69:                                               ; preds = %42, %34
  %70 = phi i32 [ %35, %34 ], [ %43, %42 ]
  %71 = load ptr, ptr %11, align 4
  %72 = getelementptr inbounds %struct.nvkm_memory_func, ptr %71, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %11) #11
  %74 = getelementptr inbounds %struct.gk104_fifo_runlist_func, ptr %5, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef %0, i32 noundef %1, ptr noundef %11, i32 noundef %70) #11
  tail call void @mutex_unlock(ptr noundef %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 6
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 4, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %7, ptr %11, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %10, align 4
  %13 = icmp eq ptr %4, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 1
  %21 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %21, align 4
  br label %25

25:                                               ; preds = %19, %14, %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 6
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = icmp eq ptr %4, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %15, i32 3
  %17 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %15, i32 3, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %13, ptr %17, align 4
  store ptr %16, ptr %13, align 4
  %19 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %13, ptr %18, align 4
  br label %20

20:                                               ; preds = %12, %7
  %21 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 4
  %22 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 2
  %23 = getelementptr inbounds %struct.nvkm_fifo_cgrp, ptr %4, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %21, ptr %23, align 4
  store ptr %22, ptr %21, align 4
  %25 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 4, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %21, ptr %24, align 4
  br label %34

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %29, i32 4
  %31 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %29, i32 4, i32 1
  %32 = load ptr, ptr %31, align 4
  store ptr %27, ptr %31, align 4
  store ptr %30, ptr %27, align 4
  %33 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %1, i32 0, i32 4, i32 1
  store ptr %32, ptr %33, align 4
  store volatile ptr %27, ptr %32, align 4
  br label %34

34:                                               ; preds = %26, %20
  tail call void @mutex_unlock(ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_runlist_chan(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_memory, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %0, i32 0, i32 5
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  tail call void %7(ptr noundef %1, i64 noundef %8, i32 noundef %11) #11
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %2, 4
  %16 = zext i32 %15 to i64
  tail call void %14(ptr noundef %1, i64 noundef %16, i32 noundef 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_pbdma_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = shl nsw i32 -1, %5
  %7 = xor i32 %6, -1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 516
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_pbdma_nr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 516
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #11, !srcloc !12
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 516
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %10 = tail call i32 @__sw_hweight32(i32 noundef %9) #11
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_id_engine(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 15
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @nvkm_device_engine(ptr noundef %6, i32 noundef 48, i32 noundef 0) #11
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 764
  %10 = getelementptr [16 x %struct.anon.130], ptr %9, i32 0, i32 %1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %7, %4 ], [ %11, %8 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_engine(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_engine_id(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %1, i32 0, i32 1, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 48
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 956
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne ptr %1, null
  %10 = icmp sgt i32 %8, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %0, i32 764
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %16 = getelementptr [16 x %struct.anon.130], ptr %13, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp slt i32 %20, %8
  br i1 %21, label %14, label %22

22:                                               ; preds = %19, %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 284, i32 noundef 9, ptr noundef null) #11
  br label %23

23:                                               ; preds = %22, %14, %2
  %24 = phi i32 [ -1, %22 ], [ 15, %2 ], [ %15, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_bind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 9516
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = and i32 %7, 255
  %9 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gk104_fifo_bind_reason, i32 noundef %8) #11
  %10 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %18 = icmp eq ptr %9, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nvkm_enum, ptr %9, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ @.str.9, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8, ptr noundef %17, i32 noundef %8, ptr noundef %23) #12
  br label %24

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_chsw(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 9580
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef %15, i32 noundef %7) #12
  br label %16

16:                                               ; preds = %11, %1
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 9580
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %7) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_dropped_fault(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 9628
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef %15, i32 noundef %7) #12
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_pbdma_0(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 1
  %6 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = shl i32 %1, 13
  %12 = add i32 %11, 262412
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %15 = load ptr, ptr %9, align 4
  %16 = add i32 %11, 262408
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %19 = and i32 %18, %14
  %20 = load ptr, ptr %9, align 4
  %21 = add i32 %11, 262336
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %24 = load ptr, ptr %9, align 4
  %25 = add i32 %11, 262340
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %28 = load ptr, ptr %9, align 4
  %29 = add i32 %11, 262432
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %32 = and i32 %31, 4095
  %33 = lshr i32 %23, 16
  %34 = and i32 %33, 7
  %35 = and i32 %23, 16380
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !13
  %36 = and i32 %19, 8388608
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 68
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = tail call zeroext i1 @nvkm_sw_mthd(ptr noundef nonnull %40, i32 noundef %32, i32 noundef %34, i32 noundef %35, i32 noundef %27) #11
  %44 = and i32 %19, -8388609
  %45 = select i1 %43, i32 %44, i32 %19
  br label %46

46:                                               ; preds = %42, %38, %2
  %47 = phi i32 [ %19, %38 ], [ %19, %2 ], [ %45, %42 ]
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr i8, ptr %48, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 -2141192184) #11, !srcloc !12
  %50 = icmp eq i32 %47, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %46
  call void @nvkm_snprintbf(ptr noundef nonnull %5, i32 noundef 128, ptr noundef nonnull @gk104_fifo_pbdma_intr_0, i32 noundef %47) #11
  %52 = call ptr @nvkm_fifo_chan_chid(ptr noundef %6, i32 noundef %32, ptr noundef nonnull %4) #11
  store ptr %52, ptr %3, align 4
  %53 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %61 = icmp eq ptr %52, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %52, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %64, i32 0, i32 4
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %52, i32 0, i32 3, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_client, ptr %68, i32 0, i32 1
  br label %70

70:                                               ; preds = %62, %56
  %71 = phi i64 [ %66, %62 ], [ 0, %56 ]
  %72 = phi ptr [ %69, %62 ], [ @.str.13, %56 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.12, ptr noundef %60, i32 noundef %1, i32 noundef %47, ptr noundef nonnull %5, i32 noundef %32, i64 noundef %71, ptr noundef %72, i32 noundef %34, i32 noundef %35, i32 noundef %27) #12
  br label %73

73:                                               ; preds = %70, %51
  %74 = load i32, ptr %4, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %6, i32 noundef %74, ptr noundef nonnull %3) #11
  br label %75

75:                                               ; preds = %73, %46
  %76 = load ptr, ptr %9, align 4
  %77 = getelementptr i8, ptr %76, i32 %16
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %19) #11, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_sw_mthd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_pbdma_1(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 1
  %4 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = shl i32 %1, 13
  %9 = add i32 %8, 262476
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %12 = load ptr, ptr %6, align 4
  %13 = add i32 %8, 262472
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %16 = and i32 %15, %11
  %17 = load ptr, ptr %6, align 4
  %18 = add i32 %8, 262432
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %21 = and i32 %20, 4095
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !13
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %2
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @gk104_fifo_pbdma_intr_1, i32 noundef %16) #11
  %24 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  %32 = load ptr, ptr %6, align 4
  %33 = add i32 %8, 262480
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %36 = load ptr, ptr %6, align 4
  %37 = add i32 %8, 262484
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14, ptr noundef %31, i32 noundef %1, i32 noundef %16, ptr noundef nonnull %3, i32 noundef %21, i32 noundef %35, i32 noundef %39) #12
  br label %40

40:                                               ; preds = %27, %23, %2
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 %13
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %16) #11, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_runlist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 10752
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %17, %9 ], [ %7, %1 ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true) #11, !range !14
  %12 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 6, i32 %11, i32 2
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %13 = shl nuw i32 1, %11
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 10752
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #11, !srcloc !12
  %16 = xor i32 %13, -1
  %17 = and i32 %10, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %9

19:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_intr_engine(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1
  tail call void @nvkm_fifo_uevent(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_uevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 736
  %5 = tail call zeroext i1 @flush_work(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 8512
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %10 = or i32 %9, 268435456
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #11, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_info(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  switch i64 %1, label %97 [
    i64 4294967296, label %5
    i64 4294967552, label %11
  ]

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1728
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = shl nsw i64 -1, %8
  %10 = xor i64 %9, -1
  store i64 %10, ptr %2, align 8
  br label %97

11:                                               ; preds = %3
  %12 = load i64, ptr %2, align 8
  %13 = getelementptr i8, ptr %0, i32 1728
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %18 = getelementptr i8, ptr %0, i32 960
  %19 = trunc i64 %12 to i32
  %20 = getelementptr [16 x %struct.anon.131], ptr %18, i32 0, i32 %19
  %21 = getelementptr inbounds %struct.anon.131, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %4, align 4
  store i64 0, ptr %2, align 8
  %23 = getelementptr i8, ptr %0, i32 956
  %24 = load i32, ptr %23, align 4
  %25 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %24, i32 noundef 0) #11
  %26 = load i32, ptr %23, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %96

28:                                               ; preds = %17
  %29 = getelementptr i8, ptr %0, i32 764
  br label %30

30:                                               ; preds = %90, %28
  %31 = phi i32 [ %25, %28 ], [ %93, %90 ]
  %32 = getelementptr [16 x %struct.anon.130], ptr %29, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %90, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.nvkm_engine, ptr %33, i32 0, i32 1, i32 2
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %89 [
    i32 48, label %38
    i32 33, label %41
    i32 36, label %44
    i32 35, label %47
    i32 29, label %50
    i32 27, label %53
    i32 50, label %56
    i32 28, label %59
    i32 46, label %62
    i32 40, label %65
    i32 38, label %68
    i32 39, label %71
    i32 37, label %74
    i32 49, label %77
    i32 47, label %80
    i32 41, label %83
    i32 42, label %86
  ]

38:                                               ; preds = %35
  %39 = load i64, ptr %2, align 8
  %40 = or i64 %39, 1
  store i64 %40, ptr %2, align 8
  br label %90

41:                                               ; preds = %35
  %42 = load i64, ptr %2, align 8
  %43 = or i64 %42, 2
  store i64 %43, ptr %2, align 8
  br label %90

44:                                               ; preds = %35
  %45 = load i64, ptr %2, align 8
  %46 = or i64 %45, 4
  store i64 %46, ptr %2, align 8
  br label %90

47:                                               ; preds = %35
  %48 = load i64, ptr %2, align 8
  %49 = or i64 %48, 8
  store i64 %49, ptr %2, align 8
  br label %90

50:                                               ; preds = %35
  %51 = load i64, ptr %2, align 8
  %52 = or i64 %51, 16
  store i64 %52, ptr %2, align 8
  br label %90

53:                                               ; preds = %35
  %54 = load i64, ptr %2, align 8
  %55 = or i64 %54, 32
  store i64 %55, ptr %2, align 8
  br label %90

56:                                               ; preds = %35
  %57 = load i64, ptr %2, align 8
  %58 = or i64 %57, 64
  store i64 %58, ptr %2, align 8
  br label %90

59:                                               ; preds = %35
  %60 = load i64, ptr %2, align 8
  %61 = or i64 %60, 128
  store i64 %61, ptr %2, align 8
  br label %90

62:                                               ; preds = %35
  %63 = load i64, ptr %2, align 8
  %64 = or i64 %63, 256
  store i64 %64, ptr %2, align 8
  br label %90

65:                                               ; preds = %35
  %66 = load i64, ptr %2, align 8
  %67 = or i64 %66, 512
  store i64 %67, ptr %2, align 8
  br label %90

68:                                               ; preds = %35
  %69 = load i64, ptr %2, align 8
  %70 = or i64 %69, 1024
  store i64 %70, ptr %2, align 8
  br label %90

71:                                               ; preds = %35
  %72 = load i64, ptr %2, align 8
  %73 = or i64 %72, 2048
  store i64 %73, ptr %2, align 8
  br label %90

74:                                               ; preds = %35
  %75 = load i64, ptr %2, align 8
  %76 = or i64 %75, 4096
  store i64 %76, ptr %2, align 8
  br label %90

77:                                               ; preds = %35
  %78 = load i64, ptr %2, align 8
  %79 = or i64 %78, 8192
  store i64 %79, ptr %2, align 8
  br label %90

80:                                               ; preds = %35
  %81 = load i64, ptr %2, align 8
  %82 = or i64 %81, 16384
  store i64 %82, ptr %2, align 8
  br label %90

83:                                               ; preds = %35
  %84 = load i64, ptr %2, align 8
  %85 = or i64 %84, 32768
  store i64 %85, ptr %2, align 8
  br label %90

86:                                               ; preds = %35
  %87 = load i64, ptr %2, align 8
  %88 = or i64 %87, 65536
  store i64 %88, ptr %2, align 8
  br label %90

89:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 921, i32 noundef 9, ptr noundef null) #11
  br label %90

90:                                               ; preds = %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %30
  %91 = load i32, ptr %23, align 4
  %92 = add nsw i32 %31, 1
  %93 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %91, i32 noundef %92) #11
  %94 = load i32, ptr %23, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %30, label %96

96:                                               ; preds = %90, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %97

97:                                               ; preds = %96, %11, %5, %3
  %98 = phi i32 [ 0, %96 ], [ 0, %5 ], [ -22, %11 ], [ -22, %3 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_oneinit(ptr noundef %0) #0 {
  %2 = alloca [16 x i8], align 1
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %5) #11
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.gk104_fifo_func, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %3) #11
  %12 = getelementptr i8, ptr %0, i32 760
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.15, ptr noundef %20, i32 noundef %11) #12
  %21 = load i32, ptr %12, align 4
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i32 [ %21, %16 ], [ %11, %1 ]
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4) #11
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %213, label %26, !prof !15

26:                                               ; preds = %22
  %27 = extractvalue { i32, i1 } %24, 0
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %213, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %12, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ 0, %33 ], [ %43, %35 ]
  %37 = load ptr, ptr %34, align 4
  %38 = shl i32 %36, 2
  %39 = add i32 %38, 9104
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %42 = getelementptr i32, ptr %28, i32 %36
  store i32 %41, ptr %42, align 4
  %43 = add nuw nsw i32 %36, 1
  %44 = load i32, ptr %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %35, label %46

46:                                               ; preds = %35, %30
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 23
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvkm_top, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %146, label %52

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %0, i32 764
  %54 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %55 = getelementptr i8, ptr %0, i32 956
  %56 = getelementptr i8, ptr %0, i32 960
  %57 = getelementptr i8, ptr %0, i32 1728
  br label %58

58:                                               ; preds = %141, %52
  %59 = phi ptr [ %48, %52 ], [ %142, %141 ]
  %60 = phi ptr [ %50, %52 ], [ %143, %141 ]
  %61 = getelementptr i8, ptr %60, i32 -32
  %62 = getelementptr i8, ptr %60, i32 -16
  %63 = load i32, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !13
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %141, label %65

65:                                               ; preds = %58
  %66 = load i32, ptr %12, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = getelementptr i8, ptr %60, i32 -12
  %70 = load i32, ptr %69, align 4
  %71 = shl nuw i32 1, %70
  br label %72

72:                                               ; preds = %78, %68
  %73 = phi i32 [ 0, %68 ], [ %79, %78 ]
  %74 = getelementptr i32, ptr %28, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %71, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = add nuw nsw i32 %73, 1
  %80 = icmp eq i32 %79, %66
  br i1 %80, label %81, label %72

81:                                               ; preds = %78, %72, %65
  %82 = phi i32 [ -1, %65 ], [ %73, %72 ], [ -1, %78 ]
  %83 = load i32, ptr %61, align 4
  %84 = getelementptr i8, ptr %60, i32 -28
  %85 = load i32, ptr %84, align 4
  %86 = call ptr @nvkm_device_engine(ptr noundef %5, i32 noundef %83, i32 noundef %85) #11
  %87 = getelementptr [16 x %struct.anon.130], ptr %53, i32 0, i32 %63
  store ptr %86, ptr %87, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, ptr %61, align 4
  %91 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = load i32, ptr %84, align 4
  %94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.16, ptr noundef %92, i32 noundef %93)
  br label %97

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.nvkm_engine, ptr %86, i32 0, i32 1, i32 4
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi ptr [ %96, %95 ], [ %2, %89 ]
  %99 = load i32, ptr %13, align 4
  %100 = icmp ugt i32 %99, 3
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = load i32, ptr %62, align 4
  %106 = getelementptr i8, ptr %60, i32 -12
  %107 = load i32, ptr %106, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.17, ptr noundef %54, i32 noundef %105, i32 noundef %107, i32 noundef %82, ptr noundef %98) #12
  br label %108

108:                                              ; preds = %101, %97
  %109 = getelementptr i8, ptr %60, i32 -12
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.anon.130, ptr %87, i32 0, i32 1
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.anon.130, ptr %87, i32 0, i32 2
  store i32 %82, ptr %112, align 4
  %113 = load i32, ptr %55, align 4
  %114 = add i32 %63, 1
  %115 = call i32 @llvm.smax.i32(i32 %113, i32 %114)
  store i32 %115, ptr %55, align 4
  %116 = shl nuw i32 1, %63
  %117 = load i32, ptr %109, align 4
  %118 = getelementptr [16 x %struct.anon.131], ptr %56, i32 0, i32 %117
  %119 = getelementptr inbounds %struct.anon.131, ptr %118, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = or i32 %120, %116
  store i32 %121, ptr %119, align 4
  %122 = load i32, ptr %109, align 4
  %123 = getelementptr [16 x %struct.anon.131], ptr %56, i32 0, i32 %122
  %124 = getelementptr inbounds %struct.anon.131, ptr %123, i32 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = or i32 %125, %116
  store i32 %126, ptr %124, align 4
  %127 = load i32, ptr %61, align 4
  %128 = icmp eq i32 %127, 33
  br i1 %128, label %129, label %135

129:                                              ; preds = %108
  %130 = load i32, ptr %109, align 4
  %131 = getelementptr [16 x %struct.anon.131], ptr %56, i32 0, i32 %130
  %132 = getelementptr inbounds %struct.anon.131, ptr %131, i32 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = or i32 %133, 32768
  store i32 %134, ptr %132, align 4
  br label %135

135:                                              ; preds = %129, %108
  %136 = load i32, ptr %57, align 4
  %137 = load i32, ptr %109, align 4
  %138 = add i32 %137, 1
  %139 = call i32 @llvm.smax.i32(i32 %136, i32 %138)
  store i32 %139, ptr %57, align 4
  %140 = load ptr, ptr %47, align 8
  br label %141

141:                                              ; preds = %135, %58
  %142 = phi ptr [ %59, %58 ], [ %140, %135 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  %143 = load ptr, ptr %60, align 4
  %144 = getelementptr inbounds %struct.nvkm_top, ptr %142, i32 0, i32 2
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %58

146:                                              ; preds = %141, %46
  call void @kfree(ptr noundef nonnull %28) #11
  %147 = getelementptr i8, ptr %0, i32 1728
  %148 = load i32, ptr %147, align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %189

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 3
  %152 = getelementptr i8, ptr %0, i32 960
  br label %153

153:                                              ; preds = %180, %150
  %154 = phi i32 [ 0, %150 ], [ %186, %180 ]
  %155 = getelementptr [16 x %struct.anon.131], ptr %152, i32 0, i32 %154
  %156 = load i32, ptr %151, align 4
  %157 = shl i32 %156, 1
  %158 = load ptr, ptr %3, align 4
  %159 = getelementptr inbounds %struct.gk104_fifo_func, ptr %158, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = load i8, ptr %160, align 4
  %162 = zext i8 %161 to i32
  %163 = mul i32 %157, %162
  %164 = sext i32 %163 to i64
  %165 = call i32 @nvkm_memory_new(ptr noundef %5, i32 noundef 0, i64 noundef %164, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %155) #11
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %213

167:                                              ; preds = %153
  %168 = load i32, ptr %151, align 4
  %169 = shl i32 %168, 1
  %170 = load ptr, ptr %3, align 4
  %171 = getelementptr inbounds %struct.gk104_fifo_func, ptr %170, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = load i8, ptr %172, align 4
  %174 = zext i8 %173 to i32
  %175 = mul i32 %169, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr [2 x ptr], ptr %155, i32 0, i32 1
  %178 = call i32 @nvkm_memory_new(ptr noundef %5, i32 noundef 0, i64 noundef %176, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %177) #11
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %213

180:                                              ; preds = %167
  %181 = getelementptr inbounds %struct.anon.131, ptr %155, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %181, ptr noundef nonnull @.str.18, ptr noundef nonnull @gk104_fifo_oneinit.__key) #11
  %182 = getelementptr inbounds %struct.anon.131, ptr %155, i32 0, i32 3
  store volatile ptr %182, ptr %182, align 4
  %183 = getelementptr inbounds %struct.anon.131, ptr %155, i32 0, i32 3, i32 1
  store ptr %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.anon.131, ptr %155, i32 0, i32 4
  store volatile ptr %184, ptr %184, align 4
  %185 = getelementptr inbounds %struct.anon.131, ptr %155, i32 0, i32 4, i32 1
  store ptr %184, ptr %185, align 4
  %186 = add nuw nsw i32 %154, 1
  %187 = load i32, ptr %147, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %153, label %189

189:                                              ; preds = %180, %146
  %190 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 3
  %191 = load i32, ptr %190, align 4
  %192 = shl i32 %191, 9
  %193 = sext i32 %192 to i64
  %194 = getelementptr i8, ptr %0, i32 1732
  %195 = call i32 @nvkm_memory_new(ptr noundef %5, i32 noundef 0, i64 noundef %193, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %194) #11
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %189
  %198 = load ptr, ptr %194, align 4
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.nvkm_memory_func, ptr %199, i32 0, i32 5
  %201 = load ptr, ptr %200, align 4
  %202 = call i64 %201(ptr noundef %198) #11
  %203 = getelementptr i8, ptr %0, i32 1736
  %204 = call i32 @nvkm_vmm_get(ptr noundef %6, i8 noundef zeroext 12, i64 noundef %202, ptr noundef %203) #11
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %197
  %207 = load ptr, ptr %194, align 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.nvkm_memory_func, ptr %208, i32 0, i32 9
  %210 = load ptr, ptr %209, align 4
  %211 = load ptr, ptr %203, align 4
  %212 = call i32 %210(ptr noundef %207, i64 noundef 0, ptr noundef %6, ptr noundef %211, ptr noundef null, i32 noundef 0) #11
  br label %213

213:                                              ; preds = %206, %197, %189, %167, %153, %26, %22
  %214 = phi i32 [ %212, %206 ], [ -12, %26 ], [ %195, %189 ], [ %204, %197 ], [ -12, %22 ], [ %178, %167 ], [ %165, %153 ]
  ret i32 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_fifo_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.gk104_fifo_func, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gk104_fifo_pbdma_func, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %2) #11
  %10 = getelementptr i8, ptr %0, i32 760
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %19

15:                                               ; preds = %19
  %16 = icmp sgt i32 %36, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %38

19:                                               ; preds = %19, %13
  %20 = phi i32 [ 0, %13 ], [ %35, %19 ]
  %21 = shl i32 %20, 13
  %22 = add i32 %21, 262460
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %26 = and i32 %25, -268435713
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr i8, ptr %27, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #11, !srcloc !12
  %29 = load ptr, ptr %14, align 4
  %30 = add i32 %21, 262408
  %31 = getelementptr i8, ptr %29, i32 %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #11, !srcloc !12
  %32 = load ptr, ptr %14, align 4
  %33 = add i32 %21, 262412
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -257) #11, !srcloc !12
  %35 = add nuw nsw i32 %20, 1
  %36 = load i32, ptr %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %19, label %15

38:                                               ; preds = %38, %17
  %39 = phi i32 [ 0, %17 ], [ %47, %38 ]
  %40 = load ptr, ptr %18, align 4
  %41 = shl i32 %39, 13
  %42 = add i32 %41, 262472
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 -1) #11, !srcloc !12
  %44 = load ptr, ptr %18, align 4
  %45 = add i32 %41, 262476
  %46 = getelementptr i8, ptr %44, i32 %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 -1) #11, !srcloc !12
  %47 = add nuw nsw i32 %39, 1
  %48 = load i32, ptr %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %38, label %50

50:                                               ; preds = %38, %15, %1
  %51 = getelementptr i8, ptr %0, i32 1736
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_vma, ptr %52, i32 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = lshr i64 %54, 12
  %56 = trunc i64 %55 to i32
  %57 = or i32 %56, 268435456
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 8788
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %57) #11, !srcloc !12
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr inbounds %struct.gk104_fifo_func, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.gk104_fifo_pbdma_func, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %50
  tail call void %65(ptr noundef %2) #11
  br label %68

68:                                               ; preds = %67, %50
  %69 = load ptr, ptr %58, align 4
  %70 = getelementptr i8, ptr %69, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 -1) #11, !srcloc !12
  %71 = load ptr, ptr %58, align 4
  %72 = getelementptr i8, ptr %71, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 2147483647) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gk104_fifo_dtor(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %3) #11
  %5 = getelementptr i8, ptr %0, i32 1732
  %6 = getelementptr i8, ptr %0, i32 1736
  tail call void @nvkm_vmm_put(ptr noundef %4, ptr noundef %6) #11
  tail call void @nvkm_memory_unref(ptr noundef %5) #11
  %7 = getelementptr i8, ptr %0, i32 1728
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 960
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %16, %12 ]
  %14 = getelementptr [16 x %struct.anon.131], ptr %11, i32 0, i32 %13
  %15 = getelementptr [2 x ptr], ptr %14, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %15) #11
  tail call void @nvkm_memory_unref(ptr noundef %14) #11
  %16 = add nuw nsw i32 %13, 1
  %17 = load i32, ptr %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %12, label %19

19:                                               ; preds = %12, %1
  %20 = getelementptr i8, ptr %0, i32 -4
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1744) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.gk104_fifo, ptr %8, i32 0, i32 2
  store i32 -32, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gk104_fifo, ptr %8, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.gk104_fifo, ptr %8, i32 0, i32 2, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.gk104_fifo, ptr %8, i32 0, i32 2, i32 0, i32 2
  store ptr @gk104_fifo_recover_work, ptr %14, align 8
  %15 = getelementptr inbounds %struct.gk104_fifo, ptr %8, i32 0, i32 1
  store ptr %15, ptr %5, align 4
  %16 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @gk104_fifo_, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %15) #11
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i32 [ %16, %10 ], [ -12, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk104_fifo_recover_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -740
  %3 = getelementptr i8, ptr %0, i32 -724
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -120
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.anon.129, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.129, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 9776
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %15 = or i32 %14, %8
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #11, !srcloc !12
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = tail call i32 @llvm.cttz.i32(i32 %10, i1 true) #11, !range !14
  %21 = getelementptr i8, ptr %0, i32 28
  br label %24

22:                                               ; preds = %36, %1
  %23 = icmp eq i32 %8, 0
  br i1 %23, label %49, label %42

24:                                               ; preds = %36, %19
  %25 = phi i32 [ %20, %19 ], [ %40, %36 ]
  %26 = phi i32 [ %10, %19 ], [ %39, %36 ]
  %27 = getelementptr [16 x %struct.anon.130], ptr %21, i32 0, i32 %25
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nvkm_engine, ptr %28, i32 0, i32 1
  %32 = tail call i32 @nvkm_subdev_fini(ptr noundef %31, i1 noundef zeroext false) #11
  %33 = tail call i32 @nvkm_subdev_init(ptr noundef %31) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !16

35:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 310, i32 noundef 9, ptr noundef null) #11
  br label %36

36:                                               ; preds = %35, %30, %24
  %37 = shl nuw i32 1, %25
  %38 = xor i32 %37, -1
  %39 = and i32 %26, %38
  %40 = tail call i32 @llvm.cttz.i32(i32 %39, i1 false) #11, !range !14
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %22, label %24

42:                                               ; preds = %42, %22
  %43 = phi i32 [ %47, %42 ], [ %8, %22 ]
  %44 = tail call i32 @llvm.cttz.i32(i32 %43, i1 true) #11, !range !14
  tail call void @gk104_fifo_runlist_update(ptr noundef %2, i32 noundef %44)
  %45 = shl nuw i32 1, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %43, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %42

49:                                               ; preds = %42, %22
  %50 = xor i32 %8, -1
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr i8, ptr %51, i32 9772
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %8) #11, !srcloc !12
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr i8, ptr %53, i32 9776
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %56 = and i32 %55, %50
  %57 = load ptr, ptr %11, align 4
  %58 = getelementptr i8, ptr %57, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #11, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_fifo_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1744) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  store ptr @gk104_fifo, ptr %6, align 8
  %9 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2
  store i32 -32, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 2, i32 0, i32 2
  store ptr @gk104_fifo_recover_work, ptr %12, align 8
  %13 = getelementptr inbounds %struct.gk104_fifo, ptr %6, i32 0, i32 1
  store ptr %13, ptr %3, align 4
  %14 = tail call i32 @nvkm_fifo_ctor(ptr noundef nonnull @gk104_fifo_, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 4096, ptr noundef %13) #11
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i32 [ %14, %8 ], [ -12, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_subdev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk104_fifo_intr(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gk104_fifo_engine_status, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 8448
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %14 = and i32 %13, %10
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 9516
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %23 = and i32 %22, 255
  %24 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gk104_fifo_bind_reason, i32 noundef %23) #11
  %25 = getelementptr i8, ptr %0, i32 40
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %0, i32 24
  %33 = icmp eq ptr %24, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nvkm_enum, ptr %24, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %36, %34 ], [ @.str.9, %28 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.8, ptr noundef %32, i32 noundef %23, ptr noundef %38) #12
  br label %39

39:                                               ; preds = %37, %17
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr i8, ptr %40, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1) #11, !srcloc !12
  %42 = and i32 %14, -2
  br label %43

43:                                               ; preds = %39, %1
  %44 = phi i32 [ %42, %39 ], [ %14, %1 ]
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.164, ptr noundef %55) #12
  br label %56

56:                                               ; preds = %51, %47
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr i8, ptr %57, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 16) #11, !srcloc !12
  %59 = and i32 %44, -17
  br label %60

60:                                               ; preds = %56, %43
  %61 = phi i32 [ %59, %56 ], [ %44, %43 ]
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %145, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 9548
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %70 = and i32 %69, 255
  %71 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @gk104_fifo_sched_reason, i32 noundef %70) #11
  %72 = getelementptr i8, ptr %0, i32 40
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %64
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr i8, ptr %0, i32 24
  %80 = icmp eq ptr %71, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.nvkm_enum, ptr %71, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %75
  %85 = phi ptr [ %83, %81 ], [ @.str.9, %75 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.168, ptr noundef %79, i32 noundef %70, ptr noundef %85) #12
  br label %86

86:                                               ; preds = %84, %64
  %87 = icmp eq i32 %70, 10
  br i1 %87, label %88, label %141

88:                                               ; preds = %86
  %89 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4
  %90 = getelementptr i8, ptr %0, i32 616
  %91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %90) #11
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 11
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 8512
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %96 = and i32 %95, -257
  %97 = load ptr, ptr %92, align 4
  %98 = getelementptr i8, ptr %97, i32 8512
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #11, !srcloc !12
  %99 = load ptr, ptr %92, align 4
  %100 = getelementptr i8, ptr %99, i32 8448
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 256) #11, !srcloc !12
  %101 = getelementptr i8, ptr %0, i32 956
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %3, i32 0, i32 2
  br label %106

106:                                              ; preds = %117, %104
  %107 = phi i32 [ 0, %104 ], [ %118, %117 ]
  %108 = phi i32 [ 0, %104 ], [ %119, %117 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false) #11, !annotation !13
  call void @gk104_fifo_engine_status(ptr noundef %4, i32 noundef %108, ptr noundef nonnull %3) #11
  %109 = load i8, ptr %3, align 4, !range !10
  %110 = icmp eq i8 %109, 0
  %111 = load i8, ptr %105, align 2
  %112 = icmp eq i8 %111, 0
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %106
  %115 = shl nuw i32 1, %108
  %116 = or i32 %115, %107
  store i32 %116, ptr %2, align 4
  br label %117

117:                                              ; preds = %114, %106
  %118 = phi i32 [ %107, %106 ], [ %116, %114 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #11
  %119 = add nuw i32 %108, 1
  %120 = load i32, ptr %101, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %106, label %122

122:                                              ; preds = %117, %88
  %123 = phi i32 [ 0, %88 ], [ %120, %117 ]
  %124 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %123, i32 noundef 0) #11
  %125 = load i32, ptr %101, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %127, %122
  %128 = phi i32 [ %131, %127 ], [ %124, %122 ]
  call fastcc void @gk104_fifo_recover_engn(ptr noundef %4, i32 noundef %128) #11
  %129 = load i32, ptr %101, align 4
  %130 = add nuw i32 %128, 1
  %131 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %129, i32 noundef %130) #11
  %132 = load i32, ptr %101, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %127, label %134

134:                                              ; preds = %127, %122
  %135 = load ptr, ptr %92, align 4
  %136 = getelementptr i8, ptr %135, i32 8512
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %138 = or i32 %137, 256
  %139 = load ptr, ptr %92, align 4
  %140 = getelementptr i8, ptr %139, i32 8512
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #11, !srcloc !12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %91) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %141

141:                                              ; preds = %134, %86
  %142 = load ptr, ptr %7, align 4
  %143 = getelementptr i8, ptr %142, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 256) #11, !srcloc !12
  %144 = and i32 %61, -257
  br label %145

145:                                              ; preds = %141, %60
  %146 = phi i32 [ %144, %141 ], [ %61, %60 ]
  %147 = and i32 %146, 65536
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %169, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %5, align 4
  %151 = getelementptr inbounds %struct.nvkm_device, ptr %150, i32 0, i32 11
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i8, ptr %152, i32 9580
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %155 = getelementptr i8, ptr %0, i32 40
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %149
  %159 = load ptr, ptr %5, align 4
  %160 = getelementptr inbounds %struct.nvkm_device, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.10, ptr noundef %162, i32 noundef %154) #12
  br label %163

163:                                              ; preds = %158, %149
  %164 = load ptr, ptr %151, align 4
  %165 = getelementptr i8, ptr %164, i32 9580
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %154) #11, !srcloc !12
  %166 = load ptr, ptr %7, align 4
  %167 = getelementptr i8, ptr %166, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 65536) #11, !srcloc !12
  %168 = and i32 %146, -65537
  br label %169

169:                                              ; preds = %163, %145
  %170 = phi i32 [ %168, %163 ], [ %146, %145 ]
  %171 = and i32 %170, 8388608
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %5, align 4
  %179 = getelementptr inbounds %struct.nvkm_device, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.165, ptr noundef %181) #12
  br label %182

182:                                              ; preds = %177, %173
  %183 = load ptr, ptr %7, align 4
  %184 = getelementptr i8, ptr %183, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 8388608) #11, !srcloc !12
  %185 = and i32 %170, -8388609
  br label %186

186:                                              ; preds = %182, %169
  %187 = phi i32 [ %185, %182 ], [ %170, %169 ]
  %188 = and i32 %187, 16777216
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr %5, align 4
  %196 = getelementptr inbounds %struct.nvkm_device, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.166, ptr noundef %198) #12
  br label %199

199:                                              ; preds = %194, %190
  %200 = load ptr, ptr %7, align 4
  %201 = getelementptr i8, ptr %200, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 16777216) #11, !srcloc !12
  %202 = and i32 %187, -16777217
  br label %203

203:                                              ; preds = %199, %186
  %204 = phi i32 [ %202, %199 ], [ %187, %186 ]
  %205 = and i32 %204, 134217728
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %225, label %207

207:                                              ; preds = %203
  %208 = load ptr, ptr %5, align 4
  %209 = getelementptr inbounds %struct.nvkm_device, ptr %208, i32 0, i32 11
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr i8, ptr %210, i32 9628
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %213 = getelementptr i8, ptr %0, i32 40
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %207
  %217 = load ptr, ptr %5, align 4
  %218 = getelementptr inbounds %struct.nvkm_device, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 8
  %220 = getelementptr i8, ptr %0, i32 24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.11, ptr noundef %220, i32 noundef %212) #12
  br label %221

221:                                              ; preds = %216, %207
  %222 = load ptr, ptr %7, align 4
  %223 = getelementptr i8, ptr %222, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 134217728) #11, !srcloc !12
  %224 = and i32 %204, -134217729
  br label %225

225:                                              ; preds = %221, %203
  %226 = phi i32 [ %224, %221 ], [ %204, %203 ]
  %227 = and i32 %226, 268435456
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %247, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr %7, align 4
  %231 = getelementptr i8, ptr %230, i32 9628
  %232 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %231) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %234, %229
  %235 = phi i32 [ %243, %234 ], [ %232, %229 ]
  %236 = call i32 @llvm.cttz.i32(i32 %235, i1 true) #11, !range !14
  %237 = load ptr, ptr %4, align 4
  %238 = load ptr, ptr %237, align 4
  call void %238(ptr noundef %0, i32 noundef %236) #11
  %239 = shl nuw i32 1, %236
  %240 = load ptr, ptr %7, align 4
  %241 = getelementptr i8, ptr %240, i32 9628
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %241, i32 %239) #11, !srcloc !12
  %242 = xor i32 %239, -1
  %243 = and i32 %235, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %234

245:                                              ; preds = %234, %229
  %246 = and i32 %226, -268435457
  br label %247

247:                                              ; preds = %245, %225
  %248 = phi i32 [ %246, %245 ], [ %226, %225 ]
  %249 = and i32 %248, 536870912
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %267, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %7, align 4
  %253 = getelementptr i8, ptr %252, i32 9632
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %265, label %256

256:                                              ; preds = %256, %251
  %257 = phi i32 [ %263, %256 ], [ %254, %251 ]
  %258 = call i32 @llvm.cttz.i32(i32 %257, i1 true) #11, !range !14
  call void @gk104_fifo_intr_pbdma_0(ptr noundef %4, i32 noundef %258)
  call void @gk104_fifo_intr_pbdma_1(ptr noundef %4, i32 noundef %258)
  %259 = shl nuw i32 1, %258
  %260 = load ptr, ptr %7, align 4
  %261 = getelementptr i8, ptr %260, i32 9632
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 %259) #11, !srcloc !12
  %262 = xor i32 %259, -1
  %263 = and i32 %257, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %256

265:                                              ; preds = %256, %251
  %266 = and i32 %248, -536870913
  br label %267

267:                                              ; preds = %265, %247
  %268 = phi i32 [ %266, %265 ], [ %248, %247 ]
  %269 = and i32 %268, 1073741824
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %290, label %271

271:                                              ; preds = %267
  %272 = load ptr, ptr %5, align 4
  %273 = getelementptr inbounds %struct.nvkm_device, ptr %272, i32 0, i32 11
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr i8, ptr %274, i32 10752
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %275) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %288, label %278

278:                                              ; preds = %278, %271
  %279 = phi i32 [ %286, %278 ], [ %276, %271 ]
  %280 = call i32 @llvm.cttz.i32(i32 %279, i1 true) #11, !range !14
  %281 = getelementptr %struct.gk104_fifo, ptr %4, i32 0, i32 6, i32 %280, i32 2
  call void @__wake_up(ptr noundef %281, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %282 = shl nuw i32 1, %280
  %283 = load ptr, ptr %273, align 4
  %284 = getelementptr i8, ptr %283, i32 10752
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %284, i32 %282) #11, !srcloc !12
  %285 = xor i32 %282, -1
  %286 = and i32 %279, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %278

288:                                              ; preds = %278, %271
  %289 = and i32 %268, -1073741825
  br label %290

290:                                              ; preds = %288, %267
  %291 = phi i32 [ %289, %288 ], [ %268, %267 ]
  %292 = icmp sgt i32 %291, -1
  br i1 %292, label %297, label %293

293:                                              ; preds = %290
  %294 = load ptr, ptr %7, align 4
  %295 = getelementptr i8, ptr %294, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 -2147483648) #11, !srcloc !12
  call void @nvkm_fifo_uevent(ptr noundef %0) #11
  %296 = and i32 %291, 2147483647
  br label %297

297:                                              ; preds = %293, %290
  %298 = phi i32 [ %296, %293 ], [ %291, %290 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %319, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %302 = load i32, ptr %301, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %309, label %304

304:                                              ; preds = %300
  %305 = load ptr, ptr %5, align 4
  %306 = getelementptr inbounds %struct.nvkm_device, ptr %305, i32 0, i32 2
  %307 = load ptr, ptr %306, align 8
  %308 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.167, ptr noundef %308, i32 noundef %298) #12
  br label %309

309:                                              ; preds = %304, %300
  %310 = load ptr, ptr %7, align 4
  %311 = getelementptr i8, ptr %310, i32 8512
  %312 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %311) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %313 = xor i32 %298, -1
  %314 = and i32 %312, %313
  %315 = load ptr, ptr %7, align 4
  %316 = getelementptr i8, ptr %315, i32 8512
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 %314) #11, !srcloc !12
  %317 = load ptr, ptr %7, align 4
  %318 = getelementptr i8, ptr %317, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 %298) #11, !srcloc !12
  br label %319

319:                                              ; preds = %309, %297
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk104_fifo_fault(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 792876360, ptr %3, align 8
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.gk104_fifo_func, ptr %7, i32 0, i32 2, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 9
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = tail call ptr @nvkm_enum_find(ptr noundef %9, i32 noundef %12) #11
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.gk104_fifo_func, ptr %14, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 3
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i32
  %20 = tail call ptr @nvkm_enum_find(ptr noundef %16, i32 noundef %19) #11
  %21 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %4, align 4
  br i1 %23, label %32, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.gk104_fifo_func, ptr %24, i32 0, i32 2, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = tail call ptr @nvkm_enum_find(ptr noundef %27, i32 noundef %30) #11
  br label %43

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.gk104_fifo_func, ptr %24, i32 0, i32 2, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call ptr @nvkm_enum_find(ptr noundef %34, i32 noundef %37) #11
  %39 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 5
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull @.str.172, i32 noundef %41)
  br label %43

43:                                               ; preds = %32, %25
  %44 = phi ptr [ %31, %25 ], [ %38, %32 ]
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.gk104_fifo_func, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 7
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = tail call ptr @nvkm_enum_find(ptr noundef %47, i32 noundef %50) #11
  %52 = icmp eq ptr %20, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.nvkm_enum, ptr %20, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  switch i32 %55, label %65 [
    i32 0, label %78
    i32 16, label %56
    i32 12, label %57
    i32 34, label %58
  ]

56:                                               ; preds = %53
  tail call void @nvkm_bar_bar1_reset(ptr noundef %6) #11
  br label %78

57:                                               ; preds = %53
  tail call void @nvkm_bar_bar2_reset(ptr noundef %6) #11
  br label %78

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 5912
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr i8, ptr %63, i32 5912
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #11, !srcloc !12
  br label %78

65:                                               ; preds = %53
  %66 = tail call ptr @nvkm_device_engine(ptr noundef %6, i32 noundef %55, i32 noundef 0) #11
  br label %78

67:                                               ; preds = %43
  %68 = load i8, ptr %17, align 8
  %69 = zext i8 %68 to i32
  %70 = tail call ptr @nvkm_top_fault(ptr noundef %6, i32 noundef %69) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %70, align 4
  %74 = icmp eq ptr %73, @nvkm_engine
  %75 = getelementptr i8, ptr %70, i32 -4
  %76 = select i1 %74, ptr %75, ptr null
  %77 = getelementptr inbounds %struct.nvkm_engine, ptr %76, i32 0, i32 1, i32 4
  br label %82

78:                                               ; preds = %65, %58, %57, %56, %53
  %79 = phi ptr [ null, %53 ], [ null, %56 ], [ null, %57 ], [ null, %58 ], [ %66, %65 ]
  %80 = getelementptr inbounds %struct.nvkm_enum, ptr %20, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %78, %72, %67
  %83 = phi ptr [ %79, %78 ], [ %76, %72 ], [ null, %67 ]
  %84 = phi ptr [ %81, %78 ], [ %77, %72 ], [ @.str.9, %67 ]
  %85 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  %86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %85) #11
  %87 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 1
  %88 = load i64, ptr %87, align 8
  %89 = tail call ptr @nvkm_fifo_chan_inst_locked(ptr noundef %0, i64 noundef %88) #11
  %90 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %143, label %93

93:                                               ; preds = %82
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  %98 = load i8, ptr %48, align 4
  %99 = zext i8 %98 to i32
  %100 = icmp eq ptr %51, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.nvkm_enum, ptr %51, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %93
  %105 = phi ptr [ %103, %101 ], [ @.str.9, %93 ]
  %106 = load i64, ptr %1, align 8
  %107 = load i8, ptr %17, align 8
  %108 = zext i8 %107 to i32
  br i1 %52, label %112, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.nvkm_enum, ptr %20, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi ptr [ %111, %109 ], [ %84, %104 ]
  %114 = getelementptr inbounds %struct.nvkm_fault_data, ptr %1, i32 0, i32 8
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq ptr %44, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.nvkm_enum, ptr %44, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %112
  %122 = phi ptr [ %120, %118 ], [ @.str.9, %112 ]
  %123 = load i8, ptr %10, align 2
  %124 = zext i8 %123 to i32
  %125 = icmp eq ptr %13, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.nvkm_enum, ptr %13, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi ptr [ %128, %126 ], [ @.str.9, %121 ]
  %131 = icmp eq ptr %89, null
  br i1 %131, label %139, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %89, i32 0, i32 5
  %134 = load i16, ptr %133, align 8
  %135 = zext i16 %134 to i32
  %136 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %89, i32 0, i32 3, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.nvkm_client, ptr %137, i32 0, i32 1
  br label %139

139:                                              ; preds = %132, %129
  %140 = phi i32 [ %135, %132 ], [ -1, %129 ]
  %141 = phi ptr [ %138, %132 ], [ @.str.13, %129 ]
  %142 = load i64, ptr %87, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.173, ptr noundef %97, i32 noundef %99, ptr noundef %105, i64 noundef %106, i32 noundef %108, ptr noundef %113, i32 noundef %116, ptr noundef nonnull %3, ptr noundef %122, i32 noundef %124, ptr noundef %130, i32 noundef %140, i64 noundef %142, ptr noundef %141) #12
  br label %143

143:                                              ; preds = %139, %82
  %144 = icmp eq ptr %89, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %89, i32 0, i32 5
  %147 = load i16, ptr %146, align 8
  %148 = zext i16 %147 to i32
  call void @gk104_fifo_recover_chan(ptr noundef %0, i32 noundef %148)
  br label %149

149:                                              ; preds = %145, %143
  %150 = icmp eq ptr %83, null
  br i1 %150, label %160, label %151

151:                                              ; preds = %149
  %152 = load ptr, ptr %0, align 4
  %153 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %152, i32 0, i32 7
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 %154(ptr noundef %0, ptr noundef nonnull %83) #11
  %156 = icmp sgt i32 %155, -1
  %157 = icmp ne i32 %155, 15
  %158 = and i1 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  call fastcc void @gk104_fifo_recover_engn(ptr noundef %4, i32 noundef %155)
  br label %160

160:                                              ; preds = %159, %151, %149
  call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %86) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk104_fifo_recover_chan(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gk104_fifo_engine_status, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = shl i32 %1, 3
  %12 = add i32 %11, 8388612
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %17 = getelementptr i8, ptr %0, i32 960
  %18 = getelementptr [16 x %struct.anon.131], ptr %17, i32 0, i32 %16
  %19 = getelementptr inbounds %struct.anon.131, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %4, align 4
  %21 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %22 = load volatile i32, ptr %21, align 4
  store volatile i32 %22, ptr %3, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %22, 65535
  %25 = icmp eq i32 %24, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %25, label %26, label %27, !prof !15

26:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 381, 0\0A.popsection", ""() #11, !srcloc !17
  unreachable

27:                                               ; preds = %2
  %28 = and i32 %14, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.gk104_fifo, ptr %6, i32 0, i32 6, i32 %16, i32 4
  br label %32

32:                                               ; preds = %36, %30
  %33 = phi ptr [ %31, %30 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %34, i32 -244
  %38 = load i16, ptr %37, align 8
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %32

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %34, i32 -340
  %43 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %43, align 4
  br label %74

47:                                               ; preds = %32
  %48 = getelementptr %struct.gk104_fifo, ptr %6, i32 0, i32 6, i32 %16, i32 3
  br label %49

49:                                               ; preds = %53, %47
  %50 = phi ptr [ %48, %47 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %48
  br i1 %52, label %79, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %51, i32 -4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %1
  br i1 %56, label %57, label %49

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %51, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 -340
  %61 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store volatile ptr %59, ptr %59, align 4
  store ptr %59, ptr %61, align 4
  %65 = getelementptr i8, ptr %51, i32 16
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, -1
  store i32 %67, ptr %65, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %51, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %70, align 4
  br label %74

74:                                               ; preds = %69, %57, %41
  %75 = phi ptr [ %42, %41 ], [ %60, %69 ], [ %60, %57 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.gk104_fifo_chan, ptr %75, i32 0, i32 5
  store i8 1, ptr %78, align 4
  tail call void @nvkm_fifo_kevent(ptr noundef %0, i32 noundef %1) #11
  br label %79

79:                                               ; preds = %77, %74, %49
  %80 = or i32 %14, 2048
  %81 = load ptr, ptr %9, align 4
  %82 = getelementptr i8, ptr %81, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #11, !srcloc !12
  %83 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %84, 1
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load ptr, ptr %7, align 4
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %89, ptr noundef nonnull @.str.174, ptr noundef %90, i32 noundef %1) #12
  br label %91

91:                                               ; preds = %86, %79
  tail call fastcc void @gk104_fifo_recover_runl(ptr noundef %6, i32 noundef %16)
  %92 = getelementptr i8, ptr %0, i32 956
  %93 = load i32, ptr %92, align 4
  %94 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %93, i32 noundef 0) #11
  %95 = load i32, ptr %92, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %5, i32 0, i32 7
  br label %99

99:                                               ; preds = %108, %97
  %100 = phi i32 [ %94, %97 ], [ %111, %108 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false), !annotation !13
  call void @gk104_fifo_engine_status(ptr noundef %6, i32 noundef %100, ptr noundef nonnull %5)
  %101 = load ptr, ptr %98, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.anon.139, ptr %101, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %1
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  call fastcc void @gk104_fifo_recover_engn(ptr noundef %6, i32 noundef %100)
  br label %108

108:                                              ; preds = %107, %103, %99
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #11
  %109 = load i32, ptr %92, align 4
  %110 = add nuw i32 %100, 1
  %111 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %109, i32 noundef %110) #11
  %112 = load i32, ptr %92, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %99, label %114

114:                                              ; preds = %108, %91, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_fifo_recover_engn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gk104_fifo_engine_status, align 4
  %5 = alloca %struct.nvkm_timer_wait, align 8
  %6 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 4, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.gk104_fifo, ptr %0, i32 0, i32 4, i32 %1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !13
  %14 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %15 = load volatile i32, ptr %14, align 4
  store volatile i32 %15, ptr %3, align 4
  %16 = lshr i32 %15, 16
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %17, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %18, label %19, label %20, !prof !15

19:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %129

26:                                               ; preds = %20
  %27 = or i32 %23, %13
  store i32 %27, ptr %22, align 4
  tail call fastcc void @gk104_fifo_recover_runl(ptr noundef %0, i32 noundef %12)
  call void @gk104_fifo_engine_status(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %28 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %4, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.anon.139, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  call void @gk104_fifo_recover_chan(ptr noundef %8, i32 noundef %33)
  br label %34

34:                                               ; preds = %31, %26
  %35 = getelementptr inbounds %struct.gk104_fifo_engine_status, ptr %4, i32 0, i32 1
  %36 = load i8, ptr %35, align 1, !range !10
  %37 = icmp eq i8 %36, 0
  %38 = icmp ne ptr %7, null
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %117

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.nvkm_engine, ptr %7, i32 0, i32 1, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_engine, ptr %7, i32 0, i32 1, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = call i32 @nvkm_top_fault_id(ptr noundef %10, i32 noundef %42, i32 noundef %44) #11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %40
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.gk104_fifo_func, ptr %48, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %75, label %52

52:                                               ; preds = %69, %47
  %53 = phi ptr [ %70, %69 ], [ %50, %47 ]
  %54 = getelementptr inbounds %struct.nvkm_enum, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.nvkm_enum, ptr %53, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr %41, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.nvkm_enum, ptr %53, i32 0, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %43, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, ptr %53, align 4
  br label %72

69:                                               ; preds = %62, %57
  %70 = getelementptr %struct.nvkm_enum, ptr %53, i32 1
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %52

72:                                               ; preds = %69, %67, %52
  %73 = phi i32 [ %68, %67 ], [ %45, %52 ], [ %45, %69 ]
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76, !prof !15

75:                                               ; preds = %72, %47
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 450, i32 noundef 9, ptr noundef null) #11
  br label %117

76:                                               ; preds = %72, %40
  %77 = phi i32 [ %73, %72 ], [ %45, %40 ]
  %78 = or i32 %77, 256
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = shl i32 %1, 2
  %82 = add i32 %81, 10800
  %83 = getelementptr i8, ptr %80, i32 %82
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %78) #11, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !13
  call void @nvkm_timer_wait_init(ptr noundef %10, i64 noundef 2000000000, ptr noundef nonnull %5) #11
  br label %84

84:                                               ; preds = %87, %76
  call void @gk104_fifo_engine_status(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %85 = load i8, ptr %35, align 1, !range !10
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  %88 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %5) #11
  %89 = icmp sgt i64 %88, -1
  br i1 %89, label %84, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %5, align 8
  %92 = getelementptr inbounds %struct.nvkm_timer, ptr %91, i32 0, i32 1, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = call ptr @dev_driver_string(ptr noundef %95) #11
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.nvkm_timer, ptr %97, i32 0, i32 1, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load ptr, ptr %101, align 4
  br label %107

107:                                              ; preds = %105, %90
  %108 = phi ptr [ %106, %105 ], [ %103, %90 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 466, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %96, ptr noundef %108) #11
  br label %109

109:                                              ; preds = %107, %84
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11
  %110 = load ptr, ptr %79, align 4
  %111 = getelementptr i8, ptr %110, i32 %82
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 0) #11, !srcloc !12
  %112 = shl nuw i32 1, %77
  %113 = load ptr, ptr %79, align 4
  %114 = getelementptr i8, ptr %113, i32 9628
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #11, !srcloc !12
  %115 = load ptr, ptr %79, align 4
  %116 = getelementptr i8, ptr %115, i32 8448
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 268435456) #11, !srcloc !12
  br label %117

117:                                              ; preds = %109, %75, %34
  %118 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load ptr, ptr %9, align 4
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %124, ptr noundef nonnull @.str.170, ptr noundef %125, i32 noundef %1) #12
  br label %126

126:                                              ; preds = %121, %117
  %127 = load ptr, ptr @system_wq, align 4
  %128 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %127, ptr noundef %21) #11
  br label %129

129:                                              ; preds = %126, %20
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk104_fifo_recover_runl(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = shl nuw i32 1, %1
  %7 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %8 = load volatile i32, ptr %7, align 4
  store volatile i32 %8, ptr %3, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %8, 65535
  %11 = icmp eq i32 %10, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %11, label %12, label %13, !prof !15

12:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/fifo/gk104.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 330, 0\0A.popsection", ""() #11, !srcloc !19
  unreachable

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = or i32 %16, %6
  store i32 %20, ptr %15, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 9776
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %25 = or i32 %24, %6
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i8, ptr %26, i32 9776
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #11, !srcloc !12
  %28 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %19
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.gk104_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %34, ptr noundef nonnull @.str.171, ptr noundef %35, i32 noundef %1) #12
  br label %36

36:                                               ; preds = %31, %19
  %37 = load ptr, ptr @system_wq, align 4
  %38 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %14) #11
  br label %39

39:                                               ; preds = %36, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_fault_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar1_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_top_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_inst_locked(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_kevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_fifo_intr_fault(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gk104_fifo_gpfifo_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 3982821}
!9 = !{i64 2151522274}
!10 = !{i8 0, i8 2}
!11 = !{i64 2151523496}
!12 = !{i64 3982403}
!13 = !{!"auto-init"}
!14 = !{i32 0, i32 33}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2154881369, i64 2154881882, i64 2154881406, i64 2154881462, i64 2154881496, i64 2154881520, i64 2154881561, i64 2154881582, i64 2154881610, i64 2154881644}
!18 = !{i64 2154884450, i64 2154884963, i64 2154884487, i64 2154884543, i64 2154884577, i64 2154884601, i64 2154884642, i64 2154884663, i64 2154884691, i64 2154884725}
!19 = !{i64 2154868468, i64 2154868981, i64 2154868505, i64 2154868561, i64 2154868595, i64 2154868619, i64 2154868660, i64 2154868681, i64 2154868709, i64 2154868743}
