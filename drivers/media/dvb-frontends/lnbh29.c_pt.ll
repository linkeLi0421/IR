; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lnbh29.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lnbh29.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lnbh29_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lnbh29_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lnbh29_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lnbh29_priv = type { ptr, i8, [2 x i8] }
%struct.lnbh29_config = type { i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [36 x i8] c"no LNBH29 found at I2C addr 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"LNBH29 attached at I2C addr 0x%02x\0A\00", align 1
@__kstrtab_lnbh29_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lnbh29_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lnbh29_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lnbh29_attach to i32), ptr @__kstrtab_lnbh29_attach, ptr @__kstrtabns_lnbh29_attach }, section "___ksymtab+lnbh29_attach", align 4
@__UNIQUE_ID_author249 = internal constant [57 x i8] c"author=Katsuhiro Suzuki <suzuki.katsuhiro@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [45 x i8] c"description=STMicroelectronics LNBH29 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"LNBH29 I2C transfer error (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"LNBH29 voltage in failure state, status reg 0x%x\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_lnbh29_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lnbh29_attach(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1
  %10 = lshr i8 %9, 1
  %11 = getelementptr inbounds %struct.lnbh29_priv, ptr %6, i32 0, i32 1
  store i8 %10, ptr %11, align 4
  store ptr %2, ptr %6, align 8
  %12 = getelementptr inbounds %struct.lnbh29_priv, ptr %6, i32 0, i32 2
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.lnbh29_config, ptr %1, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr %struct.lnbh29_priv, ptr %6, i32 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  store ptr %6, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  %17 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %17, align 4, !annotation !8
  %18 = zext i8 %10 to i16
  store i16 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %12, ptr %20, align 4
  %21 = and i8 %14, -8
  store i8 %21, ptr %15, align 2
  %22 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %4, i32 noundef 1) #7
  %23 = icmp sgt i32 %22, -1
  %24 = icmp ne i32 %22, 1
  %25 = and i1 %23, %24
  %26 = select i1 %25, i32 -5, i32 %22
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.2, i32 noundef %26) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  %32 = load i8, ptr %11, align 4
  %33 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str, i32 noundef %33) #8
  call void @kfree(ptr noundef nonnull %6) #7
  store ptr null, ptr %16, align 4
  br label %40

34:                                               ; preds = %8
  call void @usleep_range_state(i32 noundef 6000, i32 noundef 20000, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 4
  store ptr @lnbh29_release, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  store ptr @lnbh29_set_voltage, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  %38 = load i8, ptr %11, align 4
  %39 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.1, i32 noundef %39) #8
  br label %40

40:                                               ; preds = %34, %28, %3
  %41 = phi ptr [ null, %28 ], [ %0, %34 ], [ null, %3 ]
  ret ptr %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lnbh29_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.lnbh29_priv, ptr %8, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %6, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %16 = getelementptr inbounds %struct.lnbh29_priv, ptr %8, i32 0, i32 2
  store ptr %16, ptr %15, align 4
  %17 = icmp ult i32 %1, 3
  br i1 %17, label %18, label %66

18:                                               ; preds = %2
  %19 = trunc i32 %1 to i24
  %20 = shl i24 %19, 3
  %21 = lshr i24 1795, %20
  %22 = trunc i24 %21 to i8
  %23 = getelementptr %struct.lnbh29_priv, ptr %8, i32 0, i32 2, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, -8
  %26 = or i8 %25, %22
  store i8 %26, ptr %23, align 1
  %27 = load ptr, ptr %8, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %6, i32 noundef 1) #7
  %29 = icmp sgt i32 %28, -1
  %30 = icmp ne i32 %28, 1
  %31 = and i1 %29, %30
  %32 = select i1 %31, i32 -5, i32 %28
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2, i32 noundef %32) #8
  br label %66

37:                                               ; preds = %18
  call void @usleep_range_state(i32 noundef 6000, i32 noundef 20000, i32 noundef 2) #7
  %38 = icmp eq i32 %1, 2
  br i1 %38, label %66, label %39

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %40 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %40, i8 0, i32 16, i1 false) #7, !annotation !8
  %41 = load i8, ptr %10, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %5, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %40, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %42, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %48, align 4
  %49 = load ptr, ptr %8, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %5, i32 noundef 2) #7
  %51 = icmp sgt i32 %50, -1
  %52 = icmp ne i32 %50, 2
  %53 = and i1 %51, %52
  %54 = select i1 %53, i32 -5, i32 %50
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %39
  %57 = load i8, ptr %4, align 2
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %62, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.3, i32 noundef %58) #8
  br label %64

64:                                               ; preds = %61, %56, %39
  %65 = phi i32 [ -5, %61 ], [ %54, %39 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %66

66:                                               ; preds = %64, %37, %34, %2
  %67 = phi i32 [ %32, %34 ], [ %65, %64 ], [ -22, %2 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  ret i32 %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lnbh29_release(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.lnbh29_priv, ptr %4, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %2, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %11 = getelementptr inbounds %struct.lnbh29_priv, ptr %4, i32 0, i32 2
  store ptr %11, ptr %10, align 4
  %12 = getelementptr %struct.lnbh29_priv, ptr %4, i32 0, i32 2, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, -8
  store i8 %14, ptr %12, align 1
  %15 = load ptr, ptr %4, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 1) #7
  %17 = icmp sgt i32 %16, -1
  %18 = icmp ne i32 %16, 1
  %19 = and i1 %17, %18
  %20 = select i1 %19, i32 -5, i32 %16
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef %20) #8
  br label %26

25:                                               ; preds = %1
  call void @usleep_range_state(i32 noundef 6000, i32 noundef 20000, i32 noundef 2) #7
  br label %26

26:                                               ; preds = %25, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  %27 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %27) #7
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
