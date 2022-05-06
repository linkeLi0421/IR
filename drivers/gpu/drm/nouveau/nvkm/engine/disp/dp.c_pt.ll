; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_outp_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dp_rates = type { i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvbios_init = type { ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.nvkm_ior = type { ptr, ptr, i32, i32, [8 x i8], %struct.list_head, i8, %struct.nvkm_ior_state, %struct.nvkm_ior_state, %struct.anon.135, %struct.anon.136 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ior_state = type { ptr, i32, i24 }
%struct.anon.135 = type { i8, i8, i8, i8 }
%struct.anon.136 = type { i8 }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.124 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.124 = type { %struct.spinlock, ptr }
%struct.nvkm_dp = type { %union.anon.143, %struct.nvbios_dpout, i8, ptr, %struct.nvkm_notify, i8, [16 x i8], %struct.mutex, %struct.anon.144 }
%union.anon.143 = type { %struct.nvkm_outp }
%struct.nvkm_outp = type { ptr, ptr, i32, %struct.dcb_output, ptr, %struct.list_head, ptr, i8, i8, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.125, i8 }
%union.anon.125 = type { %struct.anon.129 }
%struct.anon.129 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.nvbios_dpout = type { i16, i16, i8, [5 x i32], i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.144 = type { %struct.atomic_t, i8 }
%struct.nvkm_i2c_ntfy_req = type { i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvif_notify_conn_rep_v0 = type { i8, i8, [6 x i8] }
%struct.nvkm_conn = type { ptr, i32, %struct.nvbios_connE, %struct.nvkm_notify, %struct.list_head }
%struct.nvbios_connE = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.lt_state = type { ptr, [6 x i8], [4 x i8], i8, i8, [2 x i8] }
%struct.nvkm_ior_func = type { %struct.anon.131, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.132, %struct.anon.133, %struct.anon.134 }
%struct.anon.131 = type { ptr, ptr }
%struct.anon.132 = type { ptr, ptr }
%struct.anon.133 = type { [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.134 = type { ptr, ptr, ptr }
%struct.nvbios_dpcfg = type { i8, i8, i8, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_dp_func = internal constant %struct.nvkm_outp_func { ptr @nvkm_dp_dtor, ptr @nvkm_dp_init, ptr @nvkm_dp_fini, ptr @nvkm_dp_acquire, ptr @nvkm_dp_release, ptr @nvkm_dp_disable }, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: outp %02x:%04x:%04x: no aux\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: outp %02x:%04x:%04x: no bios dp data\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: outp %02x:%04x:%04x: bios dp %02x %02x %02x %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s: outp %02x:%04x:%04x: error monitoring aux hpd: %d\0A\00", align 1
@nvkm_dp_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"&dp->mutex\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%s: outp %02x:%04x:%04x: aux power -> always\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: outp %02x:%04x:%04x: aux power -> demand\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/nouveau/include/nvkm/subdev/i2c.h\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"%s: outp %02x:%04x:%04x: data %d KB/s link %d KB/s mst %d->%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s: outp %02x:%04x:%04x: link requirements changed\0A\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"%s: outp %02x:%04x:%04x: failed to read link status, assuming no sink\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"%s: outp %02x:%04x:%04x: lane %d not equalised\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"%s: outp %02x:%04x:%04x: no inter-lane alignment\0A\00", align 1
@nvkm_dp_rates = internal constant [10 x %struct.dp_rates] [%struct.dp_rates { i32 2160000, i8 20, i8 4 }, %struct.dp_rates { i32 1080000, i8 10, i8 4 }, %struct.dp_rates { i32 1080000, i8 20, i8 2 }, %struct.dp_rates { i32 648000, i8 6, i8 4 }, %struct.dp_rates { i32 540000, i8 10, i8 2 }, %struct.dp_rates { i32 540000, i8 20, i8 1 }, %struct.dp_rates { i32 324000, i8 6, i8 2 }, %struct.dp_rates { i32 270000, i8 10, i8 1 }, %struct.dp_rates { i32 162000, i8 6, i8 1 }, %struct.dp_rates zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/dp.c\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"%s: outp %02x:%04x:%04x: training (min: %d x %d MB/s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"%s: outp %02x:%04x:%04x: link rate unsupported by sink\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"%s: outp %02x:%04x:%04x: training failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"%s: outp %02x:%04x:%04x: training done\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"%s: outp %02x:%04x:%04x: training %d x %d MB/s\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"%s: outp %02x:%04x:%04x: train failed with %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"%s: outp %02x:%04x:%04x: config lane %d %02x %02x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.21 = private unnamed_addr constant [47 x i8] c"%s: outp %02x:%04x:%04x: status %6ph pc2 %02x\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"%s: outp %02x:%04x:%04x: status %6ph\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"%s: outp %02x:%04x:%04x: training pattern %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"%s: outp %02x:%04x:%04x: HPD: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_dp_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.nvbios_init, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 24
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1
  store ptr %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 1
  %9 = getelementptr %struct.nvkm_dp, ptr %0, i32 0, i32 1, i32 3, i32 4
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 3
  %13 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 5
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 6
  store i8 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvbios_init, ptr %3, i32 0, i32 7
  %17 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store ptr %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %12, align 4
  %20 = getelementptr inbounds %struct.nvkm_ior, ptr %1, i32 0, i32 7, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 7
  %23 = and i32 %22, 3
  store i32 %23, ptr %13, align 4
  %24 = call i32 @nvbios_exec(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_exec(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_dp_new(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.nvkm_i2c_ntfy_req, align 1
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 1, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dcb_output, ptr %2, i32 0, i32 8
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.dcb_output, ptr %2, i32 0, i32 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  br label %25

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.dcb_output, ptr %2, i32 0, i32 12
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, 256
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i32 [ %24, %20 ], [ %19, %16 ]
  %27 = tail call ptr @nvkm_i2c_aux_find(ptr noundef %12, i32 noundef %26) #7
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 220) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %143, label %31

31:                                               ; preds = %25
  store ptr %29, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8)
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 21
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 26
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  %37 = tail call i32 @nvkm_outp_ctor(ptr noundef nonnull @nvkm_dp_func, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %29) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %141

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.nvkm_dp, ptr %29, i32 0, i32 3
  store ptr %27, ptr %40, align 8
  %41 = icmp eq ptr %27, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_disp, ptr %44, i32 0, i32 1, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %141, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.nvkm_disp, ptr %44, i32 0, i32 1, i32 1, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nvkm_disp, ptr %44, i32 0, i32 1, i32 1, i32 4
  %54 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 3, i32 1
  %57 = load i16, ptr %56, align 8
  %58 = zext i16 %57 to i32
  %59 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 3, i32 2
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef %53, i32 noundef %55, i32 noundef %58, i32 noundef %61) #9
  br label %141

62:                                               ; preds = %39
  %63 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 3, i32 1
  %64 = load i16, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 3, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = getelementptr inbounds %struct.nvkm_dp, ptr %29, i32 0, i32 2
  %68 = getelementptr inbounds %struct.nvkm_dp, ptr %29, i32 0, i32 1
  %69 = call zeroext i16 @nvbios_dpout_match(ptr noundef %34, i16 noundef zeroext %64, i16 noundef zeroext %66, ptr noundef %67, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %68) #7
  %70 = icmp eq i16 %69, 0
  %71 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_disp, ptr %72, i32 0, i32 1, i32 1, i32 5
  %74 = load i32, ptr %73, align 4
  br i1 %70, label %75, label %89

75:                                               ; preds = %62
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %141, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.nvkm_disp, ptr %72, i32 0, i32 1, i32 1, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.nvkm_disp, ptr %72, i32 0, i32 1, i32 1, i32 4
  %83 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = load i16, ptr %63, align 8
  %86 = zext i16 %85 to i32
  %87 = load i16, ptr %65, align 2
  %88 = zext i16 %87 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.1, ptr noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #9
  br label %141

89:                                               ; preds = %62
  %90 = icmp ugt i32 %74, 3
  br i1 %90, label %91, label %111

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.nvkm_disp, ptr %72, i32 0, i32 1, i32 1, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_device, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.nvkm_disp, ptr %72, i32 0, i32 1, i32 1, i32 4
  %97 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = load i16, ptr %63, align 8
  %100 = zext i16 %99 to i32
  %101 = load i16, ptr %65, align 2
  %102 = zext i16 %101 to i32
  %103 = load i8, ptr %67, align 4
  %104 = zext i8 %103 to i32
  %105 = load i8, ptr %5, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, ptr %6, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, ptr %7, align 1
  %110 = zext i8 %109 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.2, ptr noundef %96, i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef %110) #9
  br label %111

111:                                              ; preds = %91, %89
  %112 = getelementptr inbounds %struct.nvkm_i2c, ptr %36, i32 0, i32 5
  store i8 7, ptr %8, align 1
  %113 = getelementptr inbounds %struct.nvkm_i2c_ntfy_req, ptr %8, i32 0, i32 1
  %114 = load ptr, ptr %40, align 8
  %115 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = trunc i32 %116 to i8
  store i8 %117, ptr %113, align 1
  %118 = getelementptr inbounds %struct.nvkm_dp, ptr %29, i32 0, i32 4
  %119 = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %112, ptr noundef nonnull @nvkm_dp_hpd, i1 noundef zeroext true, ptr noundef nonnull %8, i32 noundef 2, i32 noundef 1, ptr noundef %118) #7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %138, label %121

121:                                              ; preds = %111
  %122 = load ptr, ptr %71, align 4
  %123 = getelementptr inbounds %struct.nvkm_disp, ptr %122, i32 0, i32 1, i32 1, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %141, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.nvkm_disp, ptr %122, i32 0, i32 1, i32 1, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.nvkm_device, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8
  %131 = getelementptr inbounds %struct.nvkm_disp, ptr %122, i32 0, i32 1, i32 1, i32 4
  %132 = getelementptr inbounds %struct.nvkm_outp, ptr %29, i32 0, i32 2
  %133 = load i32, ptr %132, align 8
  %134 = load i16, ptr %63, align 8
  %135 = zext i16 %134 to i32
  %136 = load i16, ptr %65, align 2
  %137 = zext i16 %136 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.3, ptr noundef %131, i32 noundef %133, i32 noundef %135, i32 noundef %137, i32 noundef %119) #9
  br label %141

138:                                              ; preds = %111
  %139 = getelementptr inbounds %struct.nvkm_dp, ptr %29, i32 0, i32 7
  call void @__mutex_init(ptr noundef %139, ptr noundef nonnull @.str.4, ptr noundef nonnull @nvkm_dp_ctor.__key) #7
  %140 = getelementptr inbounds %struct.nvkm_dp, ptr %29, i32 0, i32 8
  store volatile i32 0, ptr %140, align 4
  br label %141

141:                                              ; preds = %138, %126, %121, %77, %75, %48, %42, %31
  %142 = phi i32 [ 0, %138 ], [ %37, %31 ], [ -22, %48 ], [ -22, %42 ], [ -22, %77 ], [ -22, %75 ], [ %119, %126 ], [ %119, %121 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8)
  br label %143

143:                                              ; preds = %141, %25
  %144 = phi i32 [ %142, %141 ], [ -12, %25 ]
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_aux_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_outp_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_dpout_match(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_dp_hpd(ptr noundef %0) #0 {
  %2 = alloca %struct.nvif_notify_conn_rep_v0, align 8
  %3 = getelementptr inbounds %struct.nvkm_notify, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -116
  %6 = getelementptr i8, ptr %0, i32 -52
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -112
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8
  %10 = getelementptr inbounds %struct.nvkm_disp, ptr %9, i32 0, i32 1, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvkm_disp, ptr %9, i32 0, i32 1, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_disp, ptr %9, i32 0, i32 1, i32 1, i32 4
  %19 = getelementptr i8, ptr %0, i32 -108
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 -100
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %0, i32 -98
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = load i8, ptr %4, align 1
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.24, ptr noundef %18, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %28) #9
  br label %29

29:                                               ; preds = %13, %1
  %30 = load i8, ptr %4, align 1
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %0, i32 96
  %35 = load volatile i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.nvkm_outp_func, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %5) #7
  br label %42

42:                                               ; preds = %37, %33
  %43 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %2, i32 0, i32 1
  store i8 4, ptr %43, align 1
  br label %46

44:                                               ; preds = %29
  %45 = tail call fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %5, i1 noundef zeroext true)
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i8 [ 0, %44 ], [ 4, %42 ]
  %48 = load i8, ptr %4, align 1
  %49 = and i8 %48, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %2, i32 0, i32 1
  %53 = or i8 %47, 2
  store i8 %53, ptr %52, align 1
  %54 = load i8, ptr %4, align 1
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i8 [ %53, %51 ], [ %47, %46 ]
  %57 = phi i8 [ %54, %51 ], [ %48, %46 ]
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %2, i32 0, i32 1
  %62 = or i8 %56, 1
  store i8 %62, ptr %61, align 1
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i8 [ %62, %60 ], [ %56, %55 ]
  %65 = getelementptr inbounds %struct.nvkm_disp, ptr %9, i32 0, i32 6
  %66 = zext i8 %64 to i32
  %67 = getelementptr inbounds %struct.nvkm_conn, ptr %7, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  call void @nvkm_event_send(ptr noundef %65, i32 noundef %66, i32 noundef %68, ptr noundef nonnull %2, i32 noundef 8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_dp_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 4
  tail call void @nvkm_notify_fini(ptr noundef %2) #7
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_dp_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_disp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_conn, ptr %9, i32 0, i32 3
  tail call void @nvkm_notify_put(ptr noundef %10) #7
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.nvkm_conn, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 71
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = tail call i32 @nvkm_gpio_get(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext -1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @nvkm_gpio_set(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext -1, i32 noundef 1) #7
  br label %20

20:                                               ; preds = %18, %15
  tail call void @msleep(i32 noundef 300) #7
  %21 = tail call fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %0, i1 noundef zeroext true)
  %22 = xor i1 %21, true
  %23 = select i1 %22, i1 %17, i1 false
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = tail call i32 @nvkm_gpio_set(ptr noundef %7, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext -1, i32 noundef 0) #7
  br label %28

26:                                               ; preds = %1
  %27 = tail call fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %0, i1 noundef zeroext true)
  br label %28

28:                                               ; preds = %26, %24, %20
  %29 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 4
  tail call void @nvkm_notify_get(ptr noundef %29) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_dp_fini(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 4
  tail call void @nvkm_notify_put(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_disp, ptr %10, i32 0, i32 1, i32 1, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.nvkm_disp, ptr %10, i32 0, i32 1, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %10, i32 0, i32 1, i32 1, i32 4
  %20 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef %19, i32 noundef %21, i32 noundef %24, i32 noundef %27) #9
  br label %28

28:                                               ; preds = %14, %8
  tail call void @nvkm_i2c_aux_monitor(ptr noundef %4, i1 noundef zeroext false) #7
  store i8 0, ptr %5, align 4
  br label %29

29:                                               ; preds = %28, %1
  %30 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8
  store volatile i32 0, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_dp_acquire(ptr noundef %0) #0 {
  %2 = alloca %struct.nvbios_init, align 4
  %3 = alloca i8, align 1
  %4 = alloca %struct.lt_state, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.nvbios_init, align 4
  %7 = alloca %struct.nvbios_init, align 4
  %8 = alloca %struct.nvbios_init, align 4
  %9 = alloca %struct.nvbios_init, align 4
  %10 = alloca %struct.nvbios_init, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca [3 x i8], align 1
  %16 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %15) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %15, i8 0, i32 3, i1 false), !annotation !8
  %18 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %53, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.nvkm_ior, ptr %17, i32 0, i32 8, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 9
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds %struct.nvkm_ior, ptr %17, i32 0, i32 8, i32 1
  br label %30

30:                                               ; preds = %49, %24
  %31 = phi ptr [ %22, %24 ], [ %51, %49 ]
  %32 = phi i32 [ 0, %24 ], [ %50, %49 ]
  %33 = getelementptr i8, ptr %31, i32 -4
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw i32 1, %34
  %36 = and i32 %28, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %31, i32 48
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %29, align 4
  %42 = lshr i32 %40, %41
  %43 = udiv i32 %42, 1000
  %44 = getelementptr i8, ptr %31, i32 52
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = mul nuw nsw i32 %43, %46
  %48 = add i32 %47, %32
  br label %49

49:                                               ; preds = %38, %30
  %50 = phi i32 [ %48, %38 ], [ %32, %30 ]
  %51 = load ptr, ptr %31, align 4
  %52 = icmp eq ptr %51, %21
  br i1 %52, label %53, label %30

53:                                               ; preds = %49, %1
  %54 = phi i32 [ 0, %1 ], [ %50, %49 ]
  %55 = getelementptr inbounds %struct.nvkm_ior, ptr %17, i32 0, i32 9
  %56 = getelementptr inbounds %struct.nvkm_ior, ptr %17, i32 0, i32 9, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = mul nuw nsw i32 %58, 27000
  %60 = getelementptr inbounds %struct.nvkm_ior, ptr %17, i32 0, i32 9, i32 2
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = mul nuw nsw i32 %59, %62
  %64 = add i32 %54, 7
  %65 = lshr i32 %64, 3
  %66 = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, 3
  br i1 %68, label %69, label %88

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nvkm_disp, ptr %20, i32 0, i32 1, i32 1, i32 4
  %75 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = load i8, ptr %55, align 4, !range !9
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8, i32 1
  %86 = load i8, ptr %85, align 4, !range !9
  %87 = zext i8 %86 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.8, ptr noundef %74, i32 noundef %76, i32 noundef %79, i32 noundef %82, i32 noundef %65, i32 noundef %63, i32 noundef %84, i32 noundef %87) #9
  br label %88

88:                                               ; preds = %69, %53
  %89 = icmp ult i32 %63, %65
  br i1 %89, label %95, label %90

90:                                               ; preds = %88
  %91 = load i8, ptr %55, align 4, !range !9
  %92 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8, i32 1
  %93 = load i8, ptr %92, align 4, !range !9
  %94 = icmp eq i8 %91, %93
  br i1 %94, label %114, label %95

95:                                               ; preds = %90, %88
  %96 = load ptr, ptr %19, align 4
  %97 = getelementptr inbounds %struct.nvkm_disp, ptr %96, i32 0, i32 1, i32 1, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp ugt i32 %98, 3
  br i1 %99, label %100, label %213

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.nvkm_disp, ptr %96, i32 0, i32 1, i32 1, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.nvkm_disp, ptr %96, i32 0, i32 1, i32 1, i32 4
  %106 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %109 = load i16, ptr %108, align 4
  %110 = zext i16 %109 to i32
  %111 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.9, ptr noundef %105, i32 noundef %107, i32 noundef %110, i32 noundef %113) #9
  br label %213

114:                                              ; preds = %90
  %115 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14)
  store i8 3, ptr %14, align 1
  %117 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %116) #7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  br label %128

120:                                              ; preds = %114
  %121 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %116, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 514, ptr noundef nonnull %15, ptr noundef nonnull %14) #7
  %122 = icmp eq i32 %121, 0
  %123 = load i8, ptr %14, align 1
  %124 = icmp ne i8 %123, 3
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %127, !prof !10

126:                                              ; preds = %120
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 173, i32 noundef 9, ptr noundef null) #7
  call void @nvkm_i2c_aux_release(ptr noundef %116) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  br label %147

127:                                              ; preds = %120
  call void @nvkm_i2c_aux_release(ptr noundef %116) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  br i1 %122, label %147, label %128

128:                                              ; preds = %127, %119
  %129 = load ptr, ptr %19, align 4
  %130 = getelementptr inbounds %struct.nvkm_disp, ptr %129, i32 0, i32 1, i32 1, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = icmp ugt i32 %131, 3
  br i1 %132, label %133, label %213

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.nvkm_disp, ptr %129, i32 0, i32 1, i32 1, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.nvkm_device, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.nvkm_disp, ptr %129, i32 0, i32 1, i32 1, i32 4
  %139 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %142 = load i16, ptr %141, align 4
  %143 = zext i16 %142 to i32
  %144 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %145 = load i16, ptr %144, align 2
  %146 = zext i16 %145 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %137, ptr noundef nonnull @.str.10, ptr noundef %138, i32 noundef %140, i32 noundef %143, i32 noundef %146) #9
  br label %213

147:                                              ; preds = %127, %126
  %148 = getelementptr inbounds [3 x i8], ptr %15, i32 0, i32 2
  %149 = load i8, ptr %148, align 1
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %190, label %152

152:                                              ; preds = %147
  %153 = load i8, ptr %60, align 2
  %154 = zext i8 %153 to i32
  %155 = icmp eq i8 %153, 0
  br i1 %155, label %209, label %159

156:                                              ; preds = %159
  %157 = add nuw nsw i32 %160, 1
  %158 = icmp eq i32 %157, %154
  br i1 %158, label %209, label %159

159:                                              ; preds = %156, %152
  %160 = phi i32 [ %157, %156 ], [ 0, %152 ]
  %161 = lshr i32 %160, 1
  %162 = getelementptr [3 x i8], ptr %15, i32 0, i32 %161
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  %165 = shl i32 %160, 2
  %166 = and i32 %165, 4
  %167 = lshr i32 %164, %166
  %168 = and i32 %167, 7
  %169 = icmp eq i32 %168, 7
  br i1 %169, label %156, label %170

170:                                              ; preds = %159
  %171 = load ptr, ptr %19, align 4
  %172 = getelementptr inbounds %struct.nvkm_disp, ptr %171, i32 0, i32 1, i32 1, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = icmp ugt i32 %173, 3
  br i1 %174, label %175, label %213

175:                                              ; preds = %170
  %176 = and i32 %167, 15
  %177 = getelementptr inbounds %struct.nvkm_disp, ptr %171, i32 0, i32 1, i32 1, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.nvkm_device, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.nvkm_disp, ptr %171, i32 0, i32 1, i32 1, i32 4
  %182 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %185 = load i16, ptr %184, align 4
  %186 = zext i16 %185 to i32
  %187 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %188 = load i16, ptr %187, align 2
  %189 = zext i16 %188 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %180, ptr noundef nonnull @.str.11, ptr noundef %181, i32 noundef %183, i32 noundef %186, i32 noundef %189, i32 noundef %176) #9
  br label %213

190:                                              ; preds = %147
  %191 = load ptr, ptr %19, align 4
  %192 = getelementptr inbounds %struct.nvkm_disp, ptr %191, i32 0, i32 1, i32 1, i32 5
  %193 = load i32, ptr %192, align 4
  %194 = icmp ugt i32 %193, 3
  br i1 %194, label %195, label %213

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.nvkm_disp, ptr %191, i32 0, i32 1, i32 1, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.nvkm_device, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.nvkm_disp, ptr %191, i32 0, i32 1, i32 1, i32 4
  %201 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %204 = load i16, ptr %203, align 4
  %205 = zext i16 %204 to i32
  %206 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %207 = load i16, ptr %206, align 2
  %208 = zext i16 %207 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %199, ptr noundef nonnull @.str.12, ptr noundef %200, i32 noundef %202, i32 noundef %205, i32 noundef %208) #9
  br label %213

209:                                              ; preds = %156, %152
  %210 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8
  %211 = load volatile i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %817

213:                                              ; preds = %209, %195, %190, %175, %170, %133, %128, %100, %95
  %214 = load ptr, ptr %16, align 4
  %215 = getelementptr %struct.nvkm_dp, ptr %0, i32 0, i32 6, i32 2
  %216 = load i8, ptr %215, align 1
  %217 = and i8 %216, 31
  %218 = getelementptr %struct.nvkm_dp, ptr %0, i32 0, i32 6, i32 1
  %219 = load i8, ptr %218, align 1
  %220 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 13, i32 0, i32 2
  %223 = load i32, ptr %222, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #7
  store i8 0, ptr %13, align 1, !annotation !8
  %224 = and i32 %221, 255
  %225 = and i32 %223, 255
  br label %226

226:                                              ; preds = %254, %213
  %227 = phi ptr [ @nvkm_dp_rates, %213 ], [ %256, %254 ]
  %228 = phi ptr [ null, %213 ], [ %255, %254 ]
  %229 = getelementptr inbounds %struct.dp_rates, ptr %227, i32 0, i32 2
  %230 = load i8, ptr %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp ult i32 %224, %231
  br i1 %232, label %244, label %233

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.dp_rates, ptr %227, i32 0, i32 1
  %235 = load i8, ptr %234, align 4
  %236 = zext i8 %235 to i32
  %237 = icmp ult i32 %225, %236
  br i1 %237, label %244, label %238

238:                                              ; preds = %233
  %239 = icmp eq ptr %228, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %238
  %241 = icmp ugt i8 %230, %217
  %242 = icmp ugt i8 %235, %219
  %243 = select i1 %241, i1 true, i1 %242
  br i1 %243, label %247, label %244

244:                                              ; preds = %240, %238, %233, %226
  %245 = phi ptr [ %228, %233 ], [ %228, %226 ], [ %227, %240 ], [ %227, %238 ]
  %246 = icmp eq ptr %245, null
  br i1 %246, label %257, label %247

247:                                              ; preds = %244, %240
  %248 = phi ptr [ %245, %244 ], [ %228, %240 ]
  %249 = getelementptr %struct.dp_rates, ptr %227, i32 1
  %250 = load i32, ptr %249, align 4
  %251 = icmp ult i32 %250, %65
  %252 = icmp eq i32 %250, 0
  %253 = or i1 %251, %252
  br i1 %253, label %262, label %254

254:                                              ; preds = %257, %247
  %255 = phi ptr [ null, %257 ], [ %248, %247 ]
  %256 = getelementptr %struct.dp_rates, ptr %227, i32 1
  br label %226

257:                                              ; preds = %244
  %258 = getelementptr %struct.dp_rates, ptr %227, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %254

261:                                              ; preds = %257
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 402, i32 noundef 9, ptr noundef null) #7
  br label %815

262:                                              ; preds = %247
  %263 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 3
  %264 = load ptr, ptr %263, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #7
  store i8 1, ptr %12, align 1
  %265 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %264) #7
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %262
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #7
  br label %289

268:                                              ; preds = %262
  %269 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %264, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 1536, ptr noundef nonnull %13, ptr noundef nonnull %12) #7
  %270 = icmp eq i32 %269, 0
  %271 = load i8, ptr %12, align 1
  %272 = icmp ne i8 %271, 1
  %273 = select i1 %270, i1 %272, i1 false
  br i1 %273, label %274, label %275, !prof !10

274:                                              ; preds = %268
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 173, i32 noundef 9, ptr noundef null) #7
  call void @nvkm_i2c_aux_release(ptr noundef %264) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #7
  br label %276

275:                                              ; preds = %268
  call void @nvkm_i2c_aux_release(ptr noundef %264) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #7
  br i1 %270, label %276, label %289

276:                                              ; preds = %275, %274
  %277 = load i8, ptr %13, align 1
  %278 = and i8 %277, 3
  %279 = icmp eq i8 %278, 1
  br i1 %279, label %289, label %280

280:                                              ; preds = %276
  %281 = and i8 %277, -4
  %282 = or i8 %281, 1
  store i8 %282, ptr %13, align 1
  %283 = load ptr, ptr %263, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #7
  store i8 1, ptr %11, align 1
  %284 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %283) #7
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %283, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 1536, ptr noundef nonnull %13, ptr noundef nonnull %11) #7
  call void @nvkm_i2c_aux_release(ptr noundef %283) #7
  br label %288

288:                                              ; preds = %286, %280
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  br label %289

289:                                              ; preds = %288, %276, %275, %267
  %290 = load ptr, ptr %19, align 4
  %291 = getelementptr inbounds %struct.nvkm_disp, ptr %290, i32 0, i32 1, i32 1, i32 5
  %292 = load i32, ptr %291, align 4
  %293 = icmp ugt i32 %292, 3
  br i1 %293, label %294, label %315

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.nvkm_disp, ptr %290, i32 0, i32 1, i32 1, i32 1
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.nvkm_device, ptr %296, i32 0, i32 2
  %298 = load ptr, ptr %297, align 8
  %299 = getelementptr inbounds %struct.nvkm_disp, ptr %290, i32 0, i32 1, i32 1, i32 4
  %300 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %301 = load i32, ptr %300, align 4
  %302 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %303 = load i16, ptr %302, align 4
  %304 = zext i16 %303 to i32
  %305 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %306 = load i16, ptr %305, align 2
  %307 = zext i16 %306 to i32
  %308 = getelementptr inbounds %struct.dp_rates, ptr %248, i32 0, i32 2
  %309 = load i8, ptr %308, align 1
  %310 = zext i8 %309 to i32
  %311 = getelementptr inbounds %struct.dp_rates, ptr %248, i32 0, i32 1
  %312 = load i8, ptr %311, align 4
  %313 = zext i8 %312 to i32
  %314 = mul nuw nsw i32 %313, 27
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %298, ptr noundef nonnull @.str.14, ptr noundef %299, i32 noundef %301, i32 noundef %304, i32 noundef %307, i32 noundef %310, i32 noundef %314) #9
  br label %315

315:                                              ; preds = %294, %289
  %316 = getelementptr %struct.nvkm_dp, ptr %0, i32 0, i32 6, i32 3
  %317 = load i8, ptr %316, align 1
  %318 = and i8 %317, 1
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %341, label %320

320:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %8) #7
  %321 = getelementptr inbounds i8, ptr %8, i32 24
  store i32 1, ptr %321, align 4, !annotation !8
  %322 = load ptr, ptr %19, align 4
  %323 = getelementptr inbounds %struct.nvkm_disp, ptr %322, i32 0, i32 1, i32 1
  store ptr %323, ptr %8, align 4
  %324 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 1
  %325 = getelementptr %struct.nvkm_dp, ptr %0, i32 0, i32 1, i32 3, i32 2
  %326 = load i32, ptr %325, align 4
  store i32 %326, ptr %324, align 4
  %327 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 2
  %328 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 3
  %329 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 4
  %330 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 5
  store i32 -1, ptr %330, align 4
  %331 = getelementptr inbounds %struct.nvbios_init, ptr %8, i32 0, i32 7
  %332 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %331, i8 0, i64 16, i1 false) #7
  store ptr %332, ptr %327, align 4
  %333 = load ptr, ptr %16, align 4
  %334 = getelementptr inbounds %struct.nvkm_ior, ptr %333, i32 0, i32 3
  %335 = load i32, ptr %334, align 4
  store i32 %335, ptr %328, align 4
  %336 = getelementptr inbounds %struct.nvkm_ior, ptr %333, i32 0, i32 8, i32 2
  %337 = load i32, ptr %336, align 4
  %338 = lshr i32 %337, 7
  %339 = and i32 %338, 3
  store i32 %339, ptr %329, align 4
  %340 = call i32 @nvbios_exec(ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %8) #7
  br label %362

341:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %9) #7
  %342 = getelementptr inbounds i8, ptr %9, i32 24
  store i32 1, ptr %342, align 4, !annotation !8
  %343 = load ptr, ptr %19, align 4
  %344 = getelementptr inbounds %struct.nvkm_disp, ptr %343, i32 0, i32 1, i32 1
  store ptr %344, ptr %9, align 4
  %345 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 1
  %346 = getelementptr %struct.nvkm_dp, ptr %0, i32 0, i32 1, i32 3, i32 3
  %347 = load i32, ptr %346, align 4
  store i32 %347, ptr %345, align 4
  %348 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 2
  %349 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 3
  %350 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 4
  %351 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 5
  store i32 -1, ptr %351, align 4
  %352 = getelementptr inbounds %struct.nvbios_init, ptr %9, i32 0, i32 7
  %353 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %352, i8 0, i64 16, i1 false) #7
  store ptr %353, ptr %348, align 4
  %354 = load ptr, ptr %16, align 4
  %355 = getelementptr inbounds %struct.nvkm_ior, ptr %354, i32 0, i32 3
  %356 = load i32, ptr %355, align 4
  store i32 %356, ptr %349, align 4
  %357 = getelementptr inbounds %struct.nvkm_ior, ptr %354, i32 0, i32 8, i32 2
  %358 = load i32, ptr %357, align 4
  %359 = lshr i32 %358, 7
  %360 = and i32 %359, 3
  store i32 %360, ptr %350, align 4
  %361 = call i32 @nvbios_exec(ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %9) #7
  br label %362

362:                                              ; preds = %341, %320
  %363 = load ptr, ptr %19, align 4
  %364 = getelementptr inbounds %struct.nvkm_disp, ptr %363, i32 0, i32 1, i32 1, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.nvkm_device, ptr %365, i32 0, i32 15
  %367 = load i32, ptr %366, align 8
  %368 = icmp ugt i32 %367, 367
  br i1 %368, label %389, label %369

369:                                              ; preds = %362
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %10) #7
  %370 = getelementptr inbounds i8, ptr %10, i32 24
  store i32 1, ptr %370, align 4, !annotation !8
  %371 = getelementptr inbounds %struct.nvkm_disp, ptr %363, i32 0, i32 1, i32 1
  store ptr %371, ptr %10, align 4
  %372 = getelementptr inbounds %struct.nvbios_init, ptr %10, i32 0, i32 1
  %373 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 1, i32 3
  %374 = load i32, ptr %373, align 4
  store i32 %374, ptr %372, align 4
  %375 = getelementptr inbounds %struct.nvbios_init, ptr %10, i32 0, i32 2
  %376 = getelementptr inbounds %struct.nvbios_init, ptr %10, i32 0, i32 3
  %377 = getelementptr inbounds %struct.nvbios_init, ptr %10, i32 0, i32 4
  %378 = getelementptr inbounds %struct.nvbios_init, ptr %10, i32 0, i32 5
  store i32 -1, ptr %378, align 4
  %379 = getelementptr inbounds %struct.nvbios_init, ptr %10, i32 0, i32 7
  %380 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %379, i8 0, i64 16, i1 false) #7
  store ptr %380, ptr %375, align 4
  %381 = load ptr, ptr %16, align 4
  %382 = getelementptr inbounds %struct.nvkm_ior, ptr %381, i32 0, i32 3
  %383 = load i32, ptr %382, align 4
  store i32 %383, ptr %376, align 4
  %384 = getelementptr inbounds %struct.nvkm_ior, ptr %381, i32 0, i32 8, i32 2
  %385 = load i32, ptr %384, align 4
  %386 = lshr i32 %385, 7
  %387 = and i32 %386, 3
  store i32 %387, ptr %377, align 4
  %388 = call i32 @nvbios_exec(ptr noundef nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %10) #7
  br label %389

389:                                              ; preds = %369, %362
  %390 = icmp ult ptr %248, @nvkm_dp_rates
  br i1 %390, label %755, label %391

391:                                              ; preds = %389
  %392 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %393 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %394 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %395 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8, i32 1
  %396 = getelementptr inbounds %struct.nvkm_ior, ptr %214, i32 0, i32 9
  %397 = getelementptr inbounds %struct.nvkm_ior, ptr %214, i32 0, i32 9, i32 1
  %398 = getelementptr inbounds %struct.nvkm_ior, ptr %214, i32 0, i32 9, i32 3
  %399 = getelementptr inbounds %struct.nvkm_ior, ptr %214, i32 0, i32 9, i32 2
  %400 = getelementptr inbounds i8, ptr %4, i32 4
  %401 = getelementptr inbounds %struct.lt_state, ptr %4, i32 0, i32 3
  %402 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 1, i32 3
  %403 = getelementptr inbounds i8, ptr %6, i32 24
  %404 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 1
  %405 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 2
  %406 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 3
  %407 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 4
  %408 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 5
  %409 = getelementptr inbounds %struct.nvbios_init, ptr %6, i32 0, i32 7
  %410 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3
  %411 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 2
  %412 = getelementptr inbounds i8, ptr %7, i32 24
  %413 = getelementptr inbounds %struct.nvbios_init, ptr %7, i32 0, i32 1
  %414 = getelementptr inbounds %struct.nvbios_init, ptr %7, i32 0, i32 2
  %415 = getelementptr inbounds %struct.nvbios_init, ptr %7, i32 0, i32 3
  %416 = getelementptr inbounds %struct.nvbios_init, ptr %7, i32 0, i32 4
  %417 = getelementptr inbounds %struct.nvbios_init, ptr %7, i32 0, i32 5
  %418 = getelementptr inbounds %struct.nvbios_init, ptr %7, i32 0, i32 7
  %419 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %420 = getelementptr inbounds %struct.lt_state, ptr %4, i32 0, i32 2
  %421 = getelementptr inbounds %struct.lt_state, ptr %4, i32 0, i32 1, i32 2
  br label %422

422:                                              ; preds = %749, %391
  %423 = phi i32 [ -22, %391 ], [ %750, %749 ]
  %424 = phi ptr [ @nvkm_dp_rates, %391 ], [ %751, %749 ]
  %425 = getelementptr inbounds %struct.dp_rates, ptr %424, i32 0, i32 2
  %426 = load i8, ptr %425, align 1
  %427 = zext i8 %426 to i32
  %428 = icmp ult i32 %224, %427
  br i1 %428, label %438, label %429

429:                                              ; preds = %422
  %430 = getelementptr inbounds %struct.dp_rates, ptr %424, i32 0, i32 1
  %431 = load i8, ptr %430, align 4
  %432 = zext i8 %431 to i32
  %433 = icmp ult i32 %225, %432
  %434 = icmp ugt i8 %426, %217
  %435 = select i1 %433, i1 true, i1 %434
  %436 = icmp ugt i8 %431, %219
  %437 = select i1 %435, i1 true, i1 %436
  br i1 %437, label %438, label %456

438:                                              ; preds = %429, %422
  %439 = icmp eq ptr %424, %248
  br i1 %439, label %440, label %749

440:                                              ; preds = %438
  %441 = load ptr, ptr %19, align 4
  %442 = getelementptr inbounds %struct.nvkm_disp, ptr %441, i32 0, i32 1, i32 1, i32 5
  %443 = load i32, ptr %442, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %456, label %445

445:                                              ; preds = %440
  %446 = getelementptr inbounds %struct.nvkm_disp, ptr %441, i32 0, i32 1, i32 1, i32 1
  %447 = load ptr, ptr %446, align 4
  %448 = getelementptr inbounds %struct.nvkm_device, ptr %447, i32 0, i32 2
  %449 = load ptr, ptr %448, align 8
  %450 = getelementptr inbounds %struct.nvkm_disp, ptr %441, i32 0, i32 1, i32 1, i32 4
  %451 = load i32, ptr %392, align 4
  %452 = load i16, ptr %393, align 4
  %453 = zext i16 %452 to i32
  %454 = load i16, ptr %394, align 2
  %455 = zext i16 %454 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %449, ptr noundef nonnull @.str.15, ptr noundef %450, i32 noundef %451, i32 noundef %453, i32 noundef %455) #9
  br label %456

456:                                              ; preds = %445, %440, %429
  %457 = load i8, ptr %395, align 4, !range !9
  store i8 %457, ptr %396, align 4
  %458 = load i8, ptr %215, align 1
  %459 = lshr i8 %458, 7
  store i8 %459, ptr %397, align 1
  %460 = getelementptr inbounds %struct.dp_rates, ptr %424, i32 0, i32 1
  %461 = load i8, ptr %460, align 4
  store i8 %461, ptr %398, align 1
  %462 = load i8, ptr %425, align 1
  store i8 %462, ptr %399, align 2
  %463 = load ptr, ptr %16, align 4
  %464 = load ptr, ptr %19, align 4
  %465 = getelementptr inbounds %struct.nvkm_disp, ptr %464, i32 0, i32 1, i32 1
  %466 = getelementptr inbounds %struct.nvkm_disp, ptr %464, i32 0, i32 1, i32 1, i32 1
  %467 = load ptr, ptr %466, align 4
  %468 = getelementptr inbounds %struct.nvkm_device, ptr %467, i32 0, i32 21
  %469 = load ptr, ptr %468, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %400, i8 0, i64 16, i1 false) #7
  store ptr %0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  store i16 0, ptr %5, align 2, !annotation !8
  %470 = getelementptr inbounds %struct.nvkm_disp, ptr %464, i32 0, i32 1, i32 1, i32 5
  %471 = load i32, ptr %470, align 4
  %472 = icmp ugt i32 %471, 3
  br i1 %472, label %473, label %490

473:                                              ; preds = %456
  %474 = load ptr, ptr %466, align 4
  %475 = getelementptr inbounds %struct.nvkm_device, ptr %474, i32 0, i32 2
  %476 = load ptr, ptr %475, align 8
  %477 = getelementptr inbounds %struct.nvkm_disp, ptr %464, i32 0, i32 1, i32 1, i32 4
  %478 = load i32, ptr %392, align 4
  %479 = load i16, ptr %393, align 4
  %480 = zext i16 %479 to i32
  %481 = load i16, ptr %394, align 2
  %482 = zext i16 %481 to i32
  %483 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 9, i32 2
  %484 = load i8, ptr %483, align 2
  %485 = zext i8 %484 to i32
  %486 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 9, i32 3
  %487 = load i8, ptr %486, align 1
  %488 = zext i8 %487 to i32
  %489 = mul nuw nsw i32 %488, 27
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %476, ptr noundef nonnull @.str.18, ptr noundef %477, i32 noundef %478, i32 noundef %480, i32 noundef %482, i32 noundef %485, i32 noundef %489) #9
  br label %490

490:                                              ; preds = %473, %456
  %491 = load ptr, ptr %466, align 4
  %492 = getelementptr inbounds %struct.nvkm_device, ptr %491, i32 0, i32 16
  %493 = load i32, ptr %492, align 4
  %494 = icmp ult i32 %493, 208
  %495 = load i8, ptr %215, align 1
  br i1 %494, label %496, label %498

496:                                              ; preds = %490
  %497 = and i8 %495, -65
  store i8 %497, ptr %215, align 1
  br label %498

498:                                              ; preds = %496, %490
  %499 = phi i8 [ %497, %496 ], [ %495, %490 ]
  %500 = lshr i8 %499, 6
  %501 = and i8 %500, 1
  store i8 %501, ptr %401, align 2
  %502 = load ptr, ptr %466, align 4
  %503 = getelementptr inbounds %struct.nvkm_device, ptr %502, i32 0, i32 15
  %504 = load i32, ptr %503, align 8
  %505 = icmp ugt i32 %504, 367
  br i1 %505, label %506, label %531

506:                                              ; preds = %498
  %507 = load i32, ptr %402, align 4
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %531, label %509

509:                                              ; preds = %506
  %510 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 9, i32 3
  br label %511

511:                                              ; preds = %511, %509
  %512 = phi i32 [ %516, %511 ], [ %507, %509 ]
  %513 = load i8, ptr %510, align 1
  %514 = call zeroext i8 @nvbios_rd08(ptr noundef %469, i32 noundef %512) #7
  %515 = icmp ult i8 %513, %514
  %516 = add i32 %512, 3
  br i1 %515, label %511, label %517

517:                                              ; preds = %511
  %518 = add i32 %512, 1
  %519 = call zeroext i16 @nvbios_rd16(ptr noundef %469, i32 noundef %518) #7
  %520 = zext i16 %519 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #7
  store i32 1, ptr %403, align 4, !annotation !8
  %521 = load ptr, ptr %19, align 4
  %522 = getelementptr inbounds %struct.nvkm_disp, ptr %521, i32 0, i32 1, i32 1
  store ptr %522, ptr %6, align 4
  store i32 %520, ptr %404, align 4
  store i32 -1, ptr %408, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %409, i8 0, i64 16, i1 false) #7
  store ptr %410, ptr %405, align 4
  %523 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 3
  %524 = load i32, ptr %523, align 4
  store i32 %524, ptr %406, align 4
  %525 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 8, i32 2
  %526 = load i32, ptr %525, align 4
  %527 = lshr i32 %526, 7
  %528 = and i32 %527, 3
  store i32 %528, ptr %407, align 4
  %529 = call i32 @nvbios_exec(ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #7
  %530 = load ptr, ptr %4, align 4
  br label %531

531:                                              ; preds = %517, %506, %498
  %532 = phi ptr [ %530, %517 ], [ %0, %506 ], [ %0, %498 ]
  %533 = getelementptr inbounds %struct.nvkm_dp, ptr %532, i32 0, i32 1, i32 4
  %534 = load i32, ptr %533, align 4
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %570, label %536

536:                                              ; preds = %531
  %537 = load i8, ptr %411, align 4
  %538 = icmp ult i8 %537, 48
  %539 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 9, i32 3
  br i1 %538, label %540, label %551

540:                                              ; preds = %540, %536
  %541 = phi i32 [ %548, %540 ], [ %534, %536 ]
  %542 = load i8, ptr %539, align 1
  %543 = zext i8 %542 to i32
  %544 = mul nuw nsw i32 %543, 2700
  %545 = call zeroext i16 @nvbios_rd16(ptr noundef %469, i32 noundef %541) #7
  %546 = zext i16 %545 to i32
  %547 = icmp ult i32 %544, %546
  %548 = add i32 %541, 4
  br i1 %547, label %540, label %549

549:                                              ; preds = %540
  %550 = add i32 %541, 2
  br label %559

551:                                              ; preds = %551, %536
  %552 = phi i32 [ %556, %551 ], [ %534, %536 ]
  %553 = load i8, ptr %539, align 1
  %554 = call zeroext i8 @nvbios_rd08(ptr noundef %469, i32 noundef %552) #7
  %555 = icmp ult i8 %553, %554
  %556 = add i32 %552, 3
  br i1 %555, label %551, label %557

557:                                              ; preds = %551
  %558 = add i32 %552, 1
  br label %559

559:                                              ; preds = %557, %549
  %560 = phi i32 [ %558, %557 ], [ %550, %549 ]
  %561 = call zeroext i16 @nvbios_rd16(ptr noundef %469, i32 noundef %560) #7
  %562 = zext i16 %561 to i32
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #7
  store i32 1, ptr %412, align 4, !annotation !8
  store ptr %465, ptr %7, align 4
  store i32 %562, ptr %413, align 4
  store i32 -1, ptr %417, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %418, i8 0, i64 16, i1 false) #7
  store ptr %410, ptr %414, align 4
  %563 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 3
  %564 = load i32, ptr %563, align 4
  store i32 %564, ptr %415, align 4
  %565 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 8, i32 2
  %566 = load i32, ptr %565, align 4
  %567 = lshr i32 %566, 7
  %568 = and i32 %567, 3
  store i32 %568, ptr %416, align 4
  %569 = call i32 @nvbios_exec(ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #7
  br label %570

570:                                              ; preds = %559, %531
  %571 = load ptr, ptr %463, align 4
  %572 = getelementptr inbounds %struct.nvkm_ior_func, ptr %571, i32 0, i32 8, i32 1
  %573 = load ptr, ptr %572, align 4
  %574 = load ptr, ptr %263, align 4
  %575 = call i32 %573(ptr noundef %463, ptr noundef %574) #7
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %595, label %577

577:                                              ; preds = %570
  %578 = icmp slt i32 %575, 0
  br i1 %578, label %579, label %747

579:                                              ; preds = %577
  %580 = load ptr, ptr %19, align 4
  %581 = getelementptr inbounds %struct.nvkm_disp, ptr %580, i32 0, i32 1, i32 1, i32 5
  %582 = load i32, ptr %581, align 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %747, label %584

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.nvkm_disp, ptr %580, i32 0, i32 1, i32 1, i32 1
  %586 = load ptr, ptr %585, align 4
  %587 = getelementptr inbounds %struct.nvkm_device, ptr %586, i32 0, i32 2
  %588 = load ptr, ptr %587, align 8
  %589 = getelementptr inbounds %struct.nvkm_disp, ptr %580, i32 0, i32 1, i32 1, i32 4
  %590 = load i32, ptr %392, align 4
  %591 = load i16, ptr %393, align 4
  %592 = zext i16 %591 to i32
  %593 = load i16, ptr %394, align 2
  %594 = zext i16 %593 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %588, ptr noundef nonnull @.str.19, ptr noundef %589, i32 noundef %590, i32 noundef %592, i32 noundef %594, i32 noundef %575) #9
  br label %747

595:                                              ; preds = %570
  %596 = load ptr, ptr %463, align 4
  %597 = getelementptr inbounds %struct.nvkm_ior_func, ptr %596, i32 0, i32 8, i32 2
  %598 = load ptr, ptr %597, align 4
  %599 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 9, i32 2
  %600 = load i8, ptr %599, align 2
  %601 = zext i8 %600 to i32
  call void %598(ptr noundef %463, i32 noundef %601) #7
  %602 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 9, i32 3
  %603 = load i8, ptr %602, align 1
  store i8 %603, ptr %5, align 2
  %604 = load i8, ptr %599, align 2
  store i8 %604, ptr %419, align 1
  %605 = getelementptr inbounds %struct.nvkm_ior, ptr %463, i32 0, i32 9, i32 1
  %606 = load i8, ptr %605, align 1, !range !9
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %595
  %609 = or i8 %604, -128
  store i8 %609, ptr %419, align 1
  br label %610

610:                                              ; preds = %608, %595
  %611 = load ptr, ptr %263, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 2, ptr %3, align 1
  %612 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %611) #7
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %615, label %614

614:                                              ; preds = %610
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %747

615:                                              ; preds = %610
  %616 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %611, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 256, ptr noundef nonnull %5, ptr noundef nonnull %3) #7
  call void @nvkm_i2c_aux_release(ptr noundef %611) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %747

618:                                              ; preds = %615
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(6) %400, i8 0, i32 6, i1 false) #7
  %619 = load i8, ptr %420, align 2
  call fastcc void @nvkm_dp_train_pattern(ptr noundef nonnull %4, i8 noundef zeroext 1) #7
  %620 = call fastcc i32 @nvkm_dp_train_drive(ptr noundef nonnull %4, i1 noundef zeroext false) #7
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %745

622:                                              ; preds = %618
  %623 = call fastcc i32 @nvkm_dp_train_sense(ptr noundef nonnull %4, i1 noundef zeroext false, i32 noundef 100) #7
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %745

625:                                              ; preds = %622
  %626 = and i8 %619, 3
  %627 = zext i8 %626 to i32
  br label %634

628:                                              ; preds = %671
  %629 = call fastcc i32 @nvkm_dp_train_drive(ptr noundef nonnull %4, i1 noundef zeroext false) #7
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %745

631:                                              ; preds = %628
  %632 = call fastcc i32 @nvkm_dp_train_sense(ptr noundef nonnull %4, i1 noundef zeroext false, i32 noundef 100) #7
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %745

634:                                              ; preds = %631, %625
  %635 = phi i32 [ %627, %625 ], [ %676, %631 ]
  %636 = phi i32 [ 0, %625 ], [ %681, %631 ]
  %637 = load ptr, ptr %4, align 4
  %638 = getelementptr inbounds %struct.nvkm_outp, ptr %637, i32 0, i32 9
  %639 = load ptr, ptr %638, align 4
  %640 = getelementptr inbounds %struct.nvkm_ior, ptr %639, i32 0, i32 9, i32 2
  %641 = load i8, ptr %640, align 2
  %642 = zext i8 %641 to i32
  %643 = icmp eq i8 %641, 0
  br i1 %643, label %671, label %644

644:                                              ; preds = %634
  %645 = load i8, ptr %400, align 4
  %646 = and i8 %645, 1
  %647 = icmp eq i8 %646, 0
  br i1 %647, label %660, label %667

648:                                              ; preds = %667
  %649 = lshr i32 %669, 1
  %650 = getelementptr %struct.lt_state, ptr %4, i32 0, i32 1, i32 %649
  %651 = load i8, ptr %650, align 1
  %652 = zext i8 %651 to i32
  %653 = shl i32 %669, 2
  %654 = and i32 %653, 4
  %655 = shl nuw nsw i32 1, %654
  %656 = and i32 %655, %652
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %667

658:                                              ; preds = %648
  %659 = icmp ult i32 %669, %642
  br label %660

660:                                              ; preds = %658, %644
  %661 = phi i1 [ true, %644 ], [ %659, %658 ]
  %662 = phi i32 [ 0, %644 ], [ %669, %658 ]
  %663 = getelementptr %struct.lt_state, ptr %4, i32 0, i32 2, i32 %662
  %664 = load i8, ptr %663, align 1
  %665 = and i8 %664, 4
  %666 = icmp ne i8 %665, 0
  br label %671

667:                                              ; preds = %648, %644
  %668 = phi i32 [ %669, %648 ], [ 0, %644 ]
  %669 = add nuw nsw i32 %668, 1
  %670 = icmp eq i32 %669, %642
  br i1 %670, label %671, label %648

671:                                              ; preds = %667, %660, %634
  %672 = phi i1 [ %661, %660 ], [ false, %634 ], [ false, %667 ]
  %673 = phi i1 [ %666, %660 ], [ false, %634 ], [ false, %667 ]
  %674 = load i8, ptr %420, align 2
  %675 = and i8 %674, 3
  %676 = zext i8 %675 to i32
  %677 = icmp eq i32 %635, %676
  %678 = xor i1 %673, true
  %679 = select i1 %672, i1 %678, i1 false
  %680 = add i32 %636, 1
  %681 = select i1 %677, i32 %680, i32 1
  %682 = icmp slt i32 %681, 5
  %683 = select i1 %679, i1 %682, i1 false
  br i1 %683, label %628, label %684

684:                                              ; preds = %671
  br i1 %672, label %745, label %685

685:                                              ; preds = %684
  %686 = getelementptr %struct.nvkm_dp, ptr %637, i32 0, i32 6, i32 2
  %687 = load i8, ptr %686, align 1
  %688 = and i8 %687, 64
  %689 = icmp eq i8 %688, 0
  %690 = select i1 %689, i8 2, i8 3
  call fastcc void @nvkm_dp_train_pattern(ptr noundef nonnull %4, i8 noundef zeroext %690) #7
  br label %691

691:                                              ; preds = %739, %685
  %692 = phi i32 [ 0, %685 ], [ %740, %739 ]
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %699, label %694

694:                                              ; preds = %691
  %695 = load i8, ptr %401, align 2, !range !9
  %696 = icmp ne i8 %695, 0
  %697 = call fastcc i32 @nvkm_dp_train_drive(ptr noundef nonnull %4, i1 noundef zeroext %696) #7
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %745

699:                                              ; preds = %694, %691
  %700 = load i8, ptr %401, align 2, !range !9
  %701 = icmp ne i8 %700, 0
  %702 = call fastcc i32 @nvkm_dp_train_sense(ptr noundef nonnull %4, i1 noundef zeroext %701, i32 noundef 400) #7
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %745

704:                                              ; preds = %699
  %705 = load i8, ptr %421, align 2
  %706 = and i8 %705, 1
  %707 = load ptr, ptr %4, align 4
  %708 = getelementptr inbounds %struct.nvkm_outp, ptr %707, i32 0, i32 9
  %709 = load ptr, ptr %708, align 4
  %710 = getelementptr inbounds %struct.nvkm_ior, ptr %709, i32 0, i32 9, i32 2
  %711 = load i8, ptr %710, align 2
  %712 = zext i8 %711 to i32
  %713 = icmp ne i8 %711, 0
  %714 = icmp ne i8 %706, 0
  %715 = select i1 %713, i1 %714, i1 false
  br i1 %715, label %716, label %734

716:                                              ; preds = %716, %704
  %717 = phi i32 [ %731, %716 ], [ 0, %704 ]
  %718 = phi i1 [ %728, %716 ], [ true, %704 ]
  %719 = lshr i32 %717, 1
  %720 = getelementptr %struct.lt_state, ptr %4, i32 0, i32 1, i32 %719
  %721 = load i8, ptr %720, align 1
  %722 = zext i8 %721 to i32
  %723 = shl i32 %717, 2
  %724 = and i32 %723, 4
  %725 = lshr i32 %722, %724
  %726 = and i32 %725, 1
  %727 = icmp ne i32 %726, 0
  %728 = select i1 %727, i1 %718, i1 false
  %729 = and i32 %725, 6
  %730 = icmp eq i32 %729, 6
  %731 = add nuw nsw i32 %717, 1
  %732 = icmp ult i32 %731, %712
  %733 = select i1 %732, i1 %730, i1 false
  br i1 %733, label %716, label %734

734:                                              ; preds = %716, %704
  %735 = phi i1 [ true, %704 ], [ %728, %716 ]
  %736 = phi i1 [ %714, %704 ], [ %730, %716 ]
  %737 = xor i1 %735, true
  %738 = select i1 %736, i1 true, i1 %737
  br i1 %738, label %742, label %739

739:                                              ; preds = %734
  %740 = add nuw nsw i32 %692, 1
  %741 = icmp eq i32 %740, 6
  br i1 %741, label %745, label %691

742:                                              ; preds = %734
  %743 = xor i1 %736, true
  %744 = sext i1 %743 to i32
  br label %745

745:                                              ; preds = %742, %739, %699, %694, %684, %631, %628, %622, %618
  %746 = phi i32 [ -1, %684 ], [ %744, %742 ], [ -1, %618 ], [ -1, %622 ], [ -1, %694 ], [ -1, %699 ], [ -1, %739 ], [ -1, %628 ], [ -1, %631 ]
  call fastcc void @nvkm_dp_train_pattern(ptr noundef nonnull %4, i8 noundef zeroext 0) #7
  br label %747

747:                                              ; preds = %745, %615, %614, %584, %579, %577
  %748 = phi i32 [ %746, %745 ], [ %575, %584 ], [ %575, %579 ], [ 0, %577 ], [ %616, %615 ], [ %612, %614 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #7
  br label %749

749:                                              ; preds = %747, %438
  %750 = phi i32 [ %423, %438 ], [ %748, %747 ]
  %751 = getelementptr %struct.dp_rates, ptr %424, i32 1
  %752 = icmp slt i32 %750, 0
  %753 = icmp ule ptr %751, %248
  %754 = select i1 %752, i1 %753, i1 false
  br i1 %754, label %422, label %755

755:                                              ; preds = %749, %389
  %756 = phi i32 [ -22, %389 ], [ %750, %749 ]
  %757 = phi i1 [ true, %389 ], [ %752, %749 ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #7
  %758 = getelementptr inbounds i8, ptr %2, i32 24
  store i32 1, ptr %758, align 4, !annotation !8
  %759 = load ptr, ptr %19, align 4
  %760 = getelementptr inbounds %struct.nvkm_disp, ptr %759, i32 0, i32 1, i32 1
  store ptr %760, ptr %2, align 4
  %761 = getelementptr inbounds %struct.nvbios_init, ptr %2, i32 0, i32 1
  %762 = getelementptr %struct.nvkm_dp, ptr %0, i32 0, i32 1, i32 3, i32 1
  %763 = load i32, ptr %762, align 4
  store i32 %763, ptr %761, align 4
  %764 = getelementptr inbounds %struct.nvbios_init, ptr %2, i32 0, i32 2
  %765 = getelementptr inbounds %struct.nvbios_init, ptr %2, i32 0, i32 3
  %766 = getelementptr inbounds %struct.nvbios_init, ptr %2, i32 0, i32 4
  %767 = getelementptr inbounds %struct.nvbios_init, ptr %2, i32 0, i32 5
  store i32 -1, ptr %767, align 4
  %768 = getelementptr inbounds %struct.nvbios_init, ptr %2, i32 0, i32 7
  %769 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %768, i8 0, i64 16, i1 false) #7
  store ptr %769, ptr %764, align 4
  %770 = load ptr, ptr %16, align 4
  %771 = getelementptr inbounds %struct.nvkm_ior, ptr %770, i32 0, i32 3
  %772 = load i32, ptr %771, align 4
  store i32 %772, ptr %765, align 4
  %773 = getelementptr inbounds %struct.nvkm_ior, ptr %770, i32 0, i32 8, i32 2
  %774 = load i32, ptr %773, align 4
  %775 = lshr i32 %774, 7
  %776 = and i32 %775, 3
  store i32 %776, ptr %766, align 4
  %777 = call i32 @nvbios_exec(ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #7
  %778 = load ptr, ptr %19, align 4
  %779 = getelementptr inbounds %struct.nvkm_disp, ptr %778, i32 0, i32 1, i32 1, i32 5
  %780 = load i32, ptr %779, align 4
  br i1 %757, label %781, label %797

781:                                              ; preds = %755
  %782 = icmp eq i32 %780, 0
  br i1 %782, label %813, label %783

783:                                              ; preds = %781
  %784 = getelementptr inbounds %struct.nvkm_disp, ptr %778, i32 0, i32 1, i32 1, i32 1
  %785 = load ptr, ptr %784, align 4
  %786 = getelementptr inbounds %struct.nvkm_device, ptr %785, i32 0, i32 2
  %787 = load ptr, ptr %786, align 8
  %788 = getelementptr inbounds %struct.nvkm_disp, ptr %778, i32 0, i32 1, i32 1, i32 4
  %789 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %790 = load i32, ptr %789, align 4
  %791 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %792 = load i16, ptr %791, align 4
  %793 = zext i16 %792 to i32
  %794 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %795 = load i16, ptr %794, align 2
  %796 = zext i16 %795 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %787, ptr noundef nonnull @.str.16, ptr noundef %788, i32 noundef %790, i32 noundef %793, i32 noundef %796) #9
  br label %813

797:                                              ; preds = %755
  %798 = icmp ugt i32 %780, 3
  br i1 %798, label %799, label %813

799:                                              ; preds = %797
  %800 = getelementptr inbounds %struct.nvkm_disp, ptr %778, i32 0, i32 1, i32 1, i32 1
  %801 = load ptr, ptr %800, align 4
  %802 = getelementptr inbounds %struct.nvkm_device, ptr %801, i32 0, i32 2
  %803 = load ptr, ptr %802, align 8
  %804 = getelementptr inbounds %struct.nvkm_disp, ptr %778, i32 0, i32 1, i32 1, i32 4
  %805 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %806 = load i32, ptr %805, align 4
  %807 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %808 = load i16, ptr %807, align 4
  %809 = zext i16 %808 to i32
  %810 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %811 = load i16, ptr %810, align 2
  %812 = zext i16 %811 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %803, ptr noundef nonnull @.str.17, ptr noundef %804, i32 noundef %806, i32 noundef %809, i32 noundef %812) #9
  br label %813

813:                                              ; preds = %799, %797, %783, %781
  %814 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8
  store volatile i32 1, ptr %814, align 4
  br label %815

815:                                              ; preds = %813, %261
  %816 = phi i32 [ -22, %261 ], [ %756, %813 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #7
  br label %817

817:                                              ; preds = %815, %209
  %818 = phi i32 [ %816, %815 ], [ 0, %209 ]
  call void @mutex_unlock(ptr noundef %18) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %15) #7
  ret i32 %818
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_dp_release(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8
  store volatile i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_ior, ptr %4, i32 0, i32 9, i32 2
  store i8 0, ptr %5, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_set(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nvkm_dp_enable(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  br i1 %1, label %6, label %44

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_disp, ptr %12, i32 0, i32 1, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nvkm_disp, ptr %12, i32 0, i32 1, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_disp, ptr %12, i32 0, i32 1, i32 1, i32 4
  %22 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef %21, i32 noundef %23, i32 noundef %26, i32 noundef %29) #9
  br label %30

30:                                               ; preds = %16, %10
  tail call void @nvkm_i2c_aux_monitor(ptr noundef %5, i1 noundef zeroext true) #7
  store i8 1, ptr %7, align 4
  br label %31

31:                                               ; preds = %30, %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 16, ptr %3, align 1
  %32 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %5) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 6
  %37 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %5, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 0, ptr noundef %36, ptr noundef nonnull %3) #7
  %38 = icmp eq i32 %37, 0
  %39 = load i8, ptr %3, align 1
  %40 = icmp ne i8 %39, 16
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !10

42:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 173, i32 noundef 9, ptr noundef null) #7
  call void @nvkm_i2c_aux_release(ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %71

43:                                               ; preds = %35
  call void @nvkm_i2c_aux_release(ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %38, label %71, label %44

44:                                               ; preds = %43, %34, %2
  %45 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 5
  %46 = load i8, ptr %45, align 4, !range !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_disp, ptr %50, i32 0, i32 1, i32 1, i32 4
  %60 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 1
  %63 = load i16, ptr %62, align 4
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.nvkm_outp, ptr %0, i32 0, i32 3, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.6, ptr noundef %59, i32 noundef %61, i32 noundef %64, i32 noundef %67) #9
  br label %68

68:                                               ; preds = %54, %48
  call void @nvkm_i2c_aux_monitor(ptr noundef %5, i1 noundef zeroext false) #7
  store i8 0, ptr %45, align 4
  br label %69

69:                                               ; preds = %68, %44
  %70 = getelementptr inbounds %struct.nvkm_dp, ptr %0, i32 0, i32 8
  store volatile i32 0, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %43, %42
  %72 = phi i1 [ false, %69 ], [ true, %43 ], [ true, %42 ]
  ret i1 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_monitor(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_xfer(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_dp_train_pattern(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = zext i8 %1 to i32
  br label %29

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_disp, ptr %8, i32 0, i32 1, i32 1, i32 4
  %20 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 3, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 3, i32 2
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef %19, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %28) #9
  br label %29

29:                                               ; preds = %14, %12
  %30 = phi i32 [ %13, %12 ], [ %28, %14 ]
  %31 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_ior_func, ptr %33, i32 0, i32 8, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %32, i32 noundef %30) #7
  %36 = getelementptr inbounds %struct.nvkm_dp, ptr %6, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 1, ptr %4, align 1
  %38 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %37) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %37, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 258, ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  %42 = icmp eq i32 %41, 0
  %43 = load i8, ptr %4, align 1
  %44 = icmp ne i8 %43, 1
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !10

46:                                               ; preds = %40
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 173, i32 noundef 9, ptr noundef null) #7
  br label %47

47:                                               ; preds = %46, %40
  call void @nvkm_i2c_aux_release(ptr noundef %37) #7
  %48 = load i8, ptr %5, align 1
  %49 = and i8 %48, -4
  br label %50

50:                                               ; preds = %47, %29
  %51 = phi i8 [ 0, %29 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %52 = or i8 %51, %1
  store i8 %52, ptr %5, align 1
  %53 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 1, ptr %3, align 1
  %54 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %53) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %53, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 258, ptr noundef nonnull %5, ptr noundef nonnull %3) #7
  call void @nvkm_i2c_aux_release(ptr noundef %53) #7
  br label %58

58:                                               ; preds = %56, %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_dp_train_drive(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.nvbios_dpout, align 4
  %6 = alloca %struct.nvbios_dpcfg, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_ior, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 21
  %19 = load ptr, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #7
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #7
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #7
  store i8 0, ptr %10, align 1, !annotation !8
  %20 = getelementptr inbounds %struct.nvkm_ior, ptr %13, i32 0, i32 9, i32 2
  %21 = load i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %115, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.lt_state, ptr %0, i32 0, i32 4
  %25 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 1
  %26 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 2
  %27 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 3, i32 1
  %28 = getelementptr inbounds %struct.nvkm_outp, ptr %11, i32 0, i32 3, i32 2
  %29 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %6, i32 0, i32 1
  %30 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %6, i32 0, i32 2
  %31 = getelementptr inbounds %struct.nvbios_dpcfg, ptr %6, i32 0, i32 3
  br label %32

32:                                               ; preds = %110, %23
  %33 = phi i32 [ 0, %23 ], [ %111, %110 ]
  %34 = lshr i32 %33, 1
  %35 = add nuw nsw i32 %34, 4
  %36 = getelementptr %struct.lt_state, ptr %0, i32 0, i32 1, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %33, 2
  %40 = and i32 %39, 4
  %41 = lshr i32 %38, %40
  %42 = load i8, ptr %24, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %33, 1
  %45 = lshr i32 %43, %44
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 3
  %48 = trunc i32 %41 to i8
  %49 = lshr i8 %48, 2
  %50 = and i8 %49, 3
  %51 = and i8 %48, 3
  %52 = xor i8 %50, 3
  %53 = icmp eq i8 %47, 3
  %54 = select i1 %53, i8 7, i8 %47
  %55 = icmp eq i8 %50, 3
  %56 = icmp ult i8 %51, %52
  %57 = or i8 %52, 4
  %58 = select i1 %56, i8 %51, i8 %57
  %59 = select i1 %55, i8 7, i8 %50
  %60 = select i1 %55, i8 0, i8 %58
  %61 = shl nuw nsw i8 %59, 3
  %62 = or i8 %60, %61
  %63 = getelementptr %struct.lt_state, ptr %0, i32 0, i32 2, i32 %33
  store i8 %62, ptr %63, align 1
  %64 = zext i8 %54 to i32
  %65 = shl nuw nsw i32 %64, %40
  %66 = getelementptr %struct.lt_state, ptr %0, i32 0, i32 5, i32 %34
  %67 = load i8, ptr %66, align 1
  %68 = trunc i32 %65 to i8
  %69 = or i8 %67, %68
  store i8 %69, ptr %66, align 1
  %70 = load ptr, ptr %25, align 4
  %71 = getelementptr inbounds %struct.nvkm_disp, ptr %70, i32 0, i32 1, i32 1, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, 4
  br i1 %73, label %74, label %87

74:                                               ; preds = %32
  %75 = getelementptr inbounds %struct.nvkm_disp, ptr %70, i32 0, i32 1, i32 1, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvkm_disp, ptr %70, i32 0, i32 1, i32 1, i32 4
  %80 = load i32, ptr %26, align 4
  %81 = load i16, ptr %27, align 4
  %82 = zext i16 %81 to i32
  %83 = load i16, ptr %28, align 2
  %84 = zext i16 %83 to i32
  %85 = load i8, ptr %63, align 1
  %86 = zext i8 %85 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.20, ptr noundef %79, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %33, i32 noundef %86, i32 noundef %64) #9
  br label %87

87:                                               ; preds = %74, %32
  %88 = load i16, ptr %27, align 4
  %89 = load i16, ptr %28, align 2
  %90 = call zeroext i16 @nvbios_dpout_match(ptr noundef %19, i16 noundef zeroext %88, i16 noundef zeroext %89, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %5) #7
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %110, label %92

92:                                               ; preds = %87
  %93 = and i8 %54, 3
  %94 = and i8 %60, 3
  %95 = and i8 %59, 3
  %96 = call zeroext i16 @nvbios_dpcfg_match(ptr noundef %19, i16 noundef zeroext %90, i8 noundef zeroext %93, i8 noundef zeroext %94, i8 noundef zeroext %95, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %6) #7
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr %13, align 4
  %100 = getelementptr inbounds %struct.nvkm_ior_func, ptr %99, i32 0, i32 8, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = load i8, ptr %6, align 4
  %103 = zext i8 %102 to i32
  %104 = load i8, ptr %29, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, ptr %30, align 2
  %107 = zext i8 %106 to i32
  %108 = load i8, ptr %31, align 1
  %109 = zext i8 %108 to i32
  call void %101(ptr noundef %13, i32 noundef %33, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109) #7
  br label %110

110:                                              ; preds = %98, %92, %87
  %111 = add nuw nsw i32 %33, 1
  %112 = load i8, ptr %20, align 2
  %113 = zext i8 %112 to i32
  %114 = icmp ult i32 %111, %113
  br i1 %114, label %32, label %115

115:                                              ; preds = %110, %2
  %116 = getelementptr inbounds %struct.nvkm_dp, ptr %11, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 4, ptr %4, align 1
  %118 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %117) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %136

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.lt_state, ptr %0, i32 0, i32 2
  %123 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %117, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 259, ptr noundef %122, ptr noundef nonnull %4) #7
  call void @nvkm_i2c_aux_release(ptr noundef %117) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  br i1 %1, label %126, label %135

126:                                              ; preds = %125
  %127 = load ptr, ptr %116, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 2, ptr %3, align 1
  %128 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %127) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %136

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.lt_state, ptr %0, i32 0, i32 5
  %133 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %127, i1 noundef zeroext true, i8 noundef zeroext 8, i32 noundef 271, ptr noundef %132, ptr noundef nonnull %3) #7
  call void @nvkm_i2c_aux_release(ptr noundef %127) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %125
  br label %136

136:                                              ; preds = %135, %131, %130, %121, %120
  %137 = phi i32 [ 0, %135 ], [ %123, %121 ], [ %133, %131 ], [ %118, %120 ], [ %128, %130 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_dp_train_sense(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr %struct.nvkm_dp, ptr %6, i32 0, i32 6, i32 14
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = zext i8 %8 to i32
  %12 = shl nuw nsw i32 %11, 2
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %15 = add nsw i32 %14, -1
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %20, label %13

18:                                               ; preds = %3
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %2) #7
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct.nvkm_dp, ptr %6, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.lt_state, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 6, ptr %5, align 1
  %24 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef %22) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %93

27:                                               ; preds = %20
  %28 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %22, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 514, ptr noundef %23, ptr noundef nonnull %5) #7
  %29 = icmp eq i32 %28, 0
  %30 = load i8, ptr %5, align 1
  %31 = icmp ne i8 %30, 6
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 173, i32 noundef 9, ptr noundef null) #7
  call void @nvkm_i2c_aux_release(ptr noundef %22) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %35

34:                                               ; preds = %27
  call void @nvkm_i2c_aux_release(ptr noundef %22) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br i1 %29, label %35, label %93

35:                                               ; preds = %34, %33
  br i1 %1, label %36, label %73

36:                                               ; preds = %35
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr inbounds %struct.lt_state, ptr %0, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 1, ptr %4, align 1
  %39 = call i32 @nvkm_i2c_aux_acquire(ptr noundef %37) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %50

42:                                               ; preds = %36
  %43 = call i32 @nvkm_i2c_aux_xfer(ptr noundef %37, i1 noundef zeroext true, i8 noundef zeroext 9, i32 noundef 524, ptr noundef %38, ptr noundef nonnull %4) #7
  %44 = icmp eq i32 %43, 0
  %45 = load i8, ptr %4, align 1
  %46 = icmp ne i8 %45, 1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %42
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 173, i32 noundef 9, ptr noundef null) #7
  call void @nvkm_i2c_aux_release(ptr noundef %37) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %51

49:                                               ; preds = %42
  call void @nvkm_i2c_aux_release(ptr noundef %37) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br i1 %44, label %51, label %50

50:                                               ; preds = %49, %41
  store i8 0, ptr %38, align 1
  br label %51

51:                                               ; preds = %50, %49, %48
  %52 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_disp, ptr %53, i32 0, i32 1, i32 1, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, 4
  br i1 %56, label %57, label %93

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.nvkm_disp, ptr %53, i32 0, i32 1, i32 1, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_disp, ptr %53, i32 0, i32 1, i32 1, i32 4
  %63 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 3, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 3, i32 2
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = load i8, ptr %38, align 1
  %72 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.21, ptr noundef %62, i32 noundef %64, i32 noundef %67, i32 noundef %70, ptr noundef %23, i32 noundef %72) #9
  br label %93

73:                                               ; preds = %35
  %74 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_disp, ptr %75, i32 0, i32 1, i32 1, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, 4
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.nvkm_disp, ptr %75, i32 0, i32 1, i32 1, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nvkm_disp, ptr %75, i32 0, i32 1, i32 1, i32 4
  %85 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 3, i32 1
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = getelementptr inbounds %struct.nvkm_outp, ptr %6, i32 0, i32 3, i32 2
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.22, ptr noundef %84, i32 noundef %86, i32 noundef %89, i32 noundef %92, ptr noundef %23) #9
  br label %93

93:                                               ; preds = %79, %73, %57, %51, %34, %26
  %94 = phi i32 [ %28, %34 ], [ 0, %73 ], [ 0, %79 ], [ 0, %51 ], [ 0, %57 ], [ %24, %26 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_dpcfg_match(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_send(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
