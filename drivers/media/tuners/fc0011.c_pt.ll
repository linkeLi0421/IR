; ModuleID = '/llk/IR/drivers/media/tuners/fc0011.c_pt.bc'
source_filename = "../drivers/media/tuners/fc0011.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0011_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0011_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fc0011_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fc0011_priv = type { ptr, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@fc0011_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Fitipower FC0011\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 1000000000, i32 0, i32 0, i32 0, i32 0 }, ptr @fc0011_release, ptr @fc0011_init, ptr null, ptr null, ptr null, ptr @fc0011_set_params, ptr null, ptr null, ptr @fc0011_get_frequency, ptr @fc0011_get_bandwidth, ptr @fc0011_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fitipower FC0011 tuner attached\0A\00", align 1
@__kstrtab_fc0011_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0011_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0011_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0011_attach to i32), ptr @__kstrtab_fc0011_attach, ptr @__kstrtabns_fc0011_attach }, section "___ksymtab+fc0011_attach", align 4
@__UNIQUE_ID_description253 = internal constant [50 x i8] c"description=Fitipower FC0011 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [34 x i8] c"author=Michael Buesch <m@bues.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"drivers/media/tuners/fc0011.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Power-on callback failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Reset callback failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"fa %02X >= fp %02X, but trying to continue\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Unsupported bandwidth %u kHz. Using 6000 kHz.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Failed to reset tuner\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to read VCO calibration value (got %02X)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"I2C write reg failed, reg: %02x, val: %02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"I2C read failed, reg: %02x\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_fc0011_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fc0011_attach(ptr noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  store ptr %1, ptr %5, align 8
  %8 = load i8, ptr %2, align 1
  %9 = getelementptr inbounds %struct.fc0011_priv, ptr %5, i32 0, i32 1
  store i8 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %11, ptr noundef nonnull align 4 dereferenceable(220) @fc0011_tuner_ops, i32 220, i1 false)
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str) #11
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi ptr [ %0, %7 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fc0011_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0011_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 9, ptr noundef null) #12
  br label %28

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.fc0011_priv, ptr %3, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = tail call i32 %5(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2) #11
  br label %28

18:                                               ; preds = %8
  %19 = load ptr, ptr %4, align 4
  %20 = load ptr, ptr %3, align 4
  %21 = load i8, ptr %10, align 4
  %22 = zext i8 %21 to i32
  %23 = tail call i32 %19(ptr noundef %20, i32 noundef 0, i32 noundef 1, i32 noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.3) #11
  br label %28

28:                                               ; preds = %25, %18, %15, %7
  %29 = phi i32 [ -22, %7 ], [ %13, %15 ], [ %23, %25 ], [ 0, %18 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0011_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca i8, align 1
  %27 = alloca [18 x i8], align 1
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %28, align 4
  %32 = udiv i32 %31, 1000
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = udiv i32 %34, 1000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #12
  store i8 0, ptr %26, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %27) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(18) %27, i8 0, i32 18, i1 false)
  %36 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 7
  store i8 15, ptr %36, align 1
  %37 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 8
  store i8 62, ptr %37, align 1
  %38 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 10
  store i8 -72, ptr %38, align 1
  %39 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 11
  store i8 -128, ptr %39, align 1
  %40 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 13
  store i8 4, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #12
  store i8 7, ptr %24, align 2
  %41 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 15, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #12
  %42 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %42, align 4, !annotation !9
  %43 = getelementptr inbounds %struct.fc0011_priv, ptr %30, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %25, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %47, align 4
  %48 = load ptr, ptr %30, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %25, i32 noundef 1) #12
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %1
  %52 = load ptr, ptr %30, align 4
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.8, i32 noundef 7, i32 noundef 15) #11
  br label %54

54:                                               ; preds = %51, %1
  %55 = phi i32 [ -5, %51 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #12
  %56 = load i8, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #12
  store i8 8, ptr %22, align 2
  %57 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 %56, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #12
  %58 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %58, align 4, !annotation !9
  %59 = load i8, ptr %43, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %23, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %62, align 4
  %63 = load ptr, ptr %30, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %23, i32 noundef 1) #12
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %70, label %66

66:                                               ; preds = %54
  %67 = load ptr, ptr %30, align 4
  %68 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 9
  %69 = zext i8 %56 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.8, i32 noundef 8, i32 noundef %69) #11
  br label %70

70:                                               ; preds = %66, %54
  %71 = phi i32 [ -5, %66 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  %72 = or i32 %71, %55
  %73 = load i8, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #12
  store i8 10, ptr %20, align 2
  %74 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %73, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #12
  %75 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %75, align 4, !annotation !9
  %76 = load i8, ptr %43, align 4
  %77 = zext i8 %76 to i16
  store i16 %77, ptr %21, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %78, align 2
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %79, align 4
  %80 = load ptr, ptr %30, align 4
  %81 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %21, i32 noundef 1) #12
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %87, label %83

83:                                               ; preds = %70
  %84 = load ptr, ptr %30, align 4
  %85 = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 9
  %86 = zext i8 %73 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.8, i32 noundef 10, i32 noundef %86) #11
  br label %87

87:                                               ; preds = %83, %70
  %88 = phi i32 [ -5, %83 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  %89 = or i32 %72, %88
  %90 = load i8, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #12
  store i8 11, ptr %18, align 2
  %91 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %90, ptr %91, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #12
  %92 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %92, align 4, !annotation !9
  %93 = load i8, ptr %43, align 4
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %19, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %96, align 4
  %97 = load ptr, ptr %30, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %19, i32 noundef 1) #12
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %104, label %100

100:                                              ; preds = %87
  %101 = load ptr, ptr %30, align 4
  %102 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 9
  %103 = zext i8 %90 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.8, i32 noundef 11, i32 noundef %103) #11
  br label %104

104:                                              ; preds = %100, %87
  %105 = phi i32 [ -5, %100 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  %106 = or i32 %89, %105
  %107 = load i8, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i8 13, ptr %16, align 2
  %108 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %107, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %109 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %109, align 4, !annotation !9
  %110 = load i8, ptr %43, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %17, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %113, align 4
  %114 = load ptr, ptr %30, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %17, i32 noundef 1) #12
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %121, label %117

117:                                              ; preds = %104
  %118 = load ptr, ptr %30, align 4
  %119 = getelementptr inbounds %struct.i2c_adapter, ptr %118, i32 0, i32 9
  %120 = zext i8 %107 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.8, i32 noundef 13, i32 noundef %120) #11
  br label %121

121:                                              ; preds = %117, %104
  %122 = phi i32 [ -5, %117 ], [ 0, %104 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  %123 = or i32 %106, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %561

125:                                              ; preds = %121
  %126 = icmp ult i32 %31, 54000000
  br i1 %126, label %135, label %127

127:                                              ; preds = %125
  %128 = icmp ult i32 %31, 108000000
  br i1 %128, label %135, label %129

129:                                              ; preds = %127
  %130 = icmp ult i32 %31, 216000000
  br i1 %130, label %135, label %131

131:                                              ; preds = %129
  %132 = icmp ult i32 %31, 432000000
  %133 = select i1 %132, i32 3, i32 2
  %134 = select i1 %132, i8 18, i8 10
  br label %135

135:                                              ; preds = %131, %129, %127, %125
  %136 = phi i32 [ 6, %125 ], [ 5, %127 ], [ 4, %129 ], [ %133, %131 ]
  %137 = phi i8 [ -126, %125 ], [ 66, %127 ], [ 34, %129 ], [ %134, %131 ]
  %138 = shl nuw nsw i32 %32, %136
  %139 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 5
  store i8 %137, ptr %139, align 1
  %140 = udiv i32 %138, 18000
  %141 = icmp ugt i32 %138, 4607999
  br i1 %141, label %142, label %143, !prof !8

142:                                              ; preds = %135
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 9, ptr noundef null) #12
  br label %143

143:                                              ; preds = %142, %135
  %144 = mul nsw i32 %140, -18000
  %145 = add nsw i32 %144, %138
  %146 = shl i32 %145, 15
  %147 = udiv i32 %146, 18000
  %148 = icmp ugt i32 %146, 294911999
  %149 = add nuw nsw i32 %147, 32786
  %150 = select i1 %148, i32 %149, i32 %147
  %151 = icmp eq i32 %150, 0
  %152 = call i32 @llvm.umax.i32(i32 %150, i32 512)
  %153 = call i32 @llvm.umin.i32(i32 %152, i32 65024)
  %154 = select i1 %151, i32 0, i32 %153
  %155 = lshr i32 %154, 8
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 3
  store i8 %156, ptr %157, align 1
  %158 = trunc i32 %154 to i8
  %159 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 4
  store i8 %158, ptr %159, align 1
  %160 = icmp ugt i32 %145, 8999
  %161 = zext i1 %160 to i32
  %162 = add nuw nsw i32 %140, %161
  %163 = lshr i32 %162, 3
  %164 = mul nuw nsw i32 %163, 248
  %165 = add nuw nsw i32 %164, %162
  %166 = and i32 %165, 254
  %167 = icmp eq i32 %166, 0
  %168 = and i32 %163, 255
  %169 = add nsw i32 %168, -1
  %170 = add nuw nsw i32 %165, 8
  %171 = select i1 %167, i32 %170, i32 %165
  %172 = select i1 %167, i32 %169, i32 %163
  %173 = trunc i32 %172 to i8
  %174 = trunc i32 %171 to i8
  %175 = and i32 %172, 224
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i8 %174, i8 15
  %178 = select i1 %176, i8 %173, i8 31
  %179 = icmp ult i8 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %143
  %181 = zext i8 %178 to i32
  %182 = zext i8 %177 to i32
  %183 = load ptr, ptr %30, align 4
  %184 = getelementptr inbounds %struct.i2c_adapter, ptr %183, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %184, ptr noundef nonnull @.str.4, i32 noundef %182, i32 noundef %181) #11
  br label %185

185:                                              ; preds = %180, %143
  %186 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 1
  store i8 %177, ptr %186, align 1
  %187 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 2
  store i8 %178, ptr %187, align 1
  switch i32 %35, label %188 [
    i32 8000, label %197
    i32 7000, label %192
    i32 6000, label %191
  ]

188:                                              ; preds = %185
  %189 = load ptr, ptr %30, align 4
  %190 = getelementptr inbounds %struct.i2c_adapter, ptr %189, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.5, i32 noundef %35) #11
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %185
  %193 = phi i8 [ -128, %191 ], [ 64, %185 ]
  %194 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 6
  %195 = load i8, ptr %194, align 1
  %196 = or i8 %195, %193
  store i8 %196, ptr %194, align 1
  br label %197

197:                                              ; preds = %192, %185
  %198 = icmp ult i32 %138, 2320000
  br i1 %198, label %199, label %203

199:                                              ; preds = %197
  %200 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 6
  %201 = load i8, ptr %200, align 1
  %202 = and i8 %201, -25
  br label %212

203:                                              ; preds = %197
  %204 = icmp ult i32 %138, 3080000
  %205 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 6
  %206 = load i8, ptr %205, align 1
  %207 = and i8 %206, -25
  br i1 %204, label %208, label %210

208:                                              ; preds = %203
  %209 = or i8 %207, 16
  br label %212

210:                                              ; preds = %203
  %211 = or i8 %207, 8
  br label %212

212:                                              ; preds = %210, %208, %199
  %213 = phi i8 [ %202, %199 ], [ %209, %208 ], [ %211, %210 ]
  %214 = phi i32 [ 0, %199 ], [ 1, %208 ], [ 2, %210 ]
  %215 = icmp ult i32 %31, 45000000
  br i1 %215, label %218, label %216

216:                                              ; preds = %212
  %217 = load i8, ptr %186, align 1
  br label %219

218:                                              ; preds = %212
  store i8 6, ptr %186, align 1
  store i8 17, ptr %187, align 1
  br label %219

219:                                              ; preds = %218, %216
  %220 = phi i8 [ %217, %216 ], [ 6, %218 ]
  %221 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 6
  %222 = or i8 %213, 32
  store i8 %222, ptr %221, align 1
  %223 = getelementptr inbounds i8, ptr %14, i32 1
  %224 = getelementptr inbounds i8, ptr %15, i32 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 1, ptr %14, align 2
  store i8 %220, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  store i32 0, ptr %224, align 4, !annotation !9
  %227 = load i8, ptr %43, align 4
  %228 = zext i8 %227 to i16
  store i16 %228, ptr %15, align 4
  store i16 0, ptr %225, align 2
  store i16 2, ptr %224, align 4
  store ptr %14, ptr %226, align 4
  %229 = load ptr, ptr %30, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %15, i32 noundef 1) #12
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %238, label %232

232:                                              ; preds = %267, %259, %252, %245, %238, %219
  %233 = phi i32 [ 1, %219 ], [ 2, %238 ], [ 3, %245 ], [ 4, %252 ], [ 5, %259 ], [ 6, %267 ]
  %234 = phi i8 [ %220, %219 ], [ %239, %238 ], [ %246, %245 ], [ %253, %252 ], [ %261, %259 ], [ %268, %267 ]
  %235 = load ptr, ptr %30, align 4
  %236 = getelementptr inbounds %struct.i2c_adapter, ptr %235, i32 0, i32 9
  %237 = zext i8 %234 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.8, i32 noundef %233, i32 noundef %237) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  br label %561

238:                                              ; preds = %219
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %239 = load i8, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 2, ptr %14, align 2
  store i8 %239, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  store i32 0, ptr %224, align 4, !annotation !9
  %240 = load i8, ptr %43, align 4
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %15, align 4
  store i16 0, ptr %225, align 2
  store i16 2, ptr %224, align 4
  store ptr %14, ptr %226, align 4
  %242 = load ptr, ptr %30, align 4
  %243 = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %15, i32 noundef 1) #12
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %232

245:                                              ; preds = %238
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %246 = load i8, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 3, ptr %14, align 2
  store i8 %246, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  store i32 0, ptr %224, align 4, !annotation !9
  %247 = load i8, ptr %43, align 4
  %248 = zext i8 %247 to i16
  store i16 %248, ptr %15, align 4
  store i16 0, ptr %225, align 2
  store i16 2, ptr %224, align 4
  store ptr %14, ptr %226, align 4
  %249 = load ptr, ptr %30, align 4
  %250 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %15, i32 noundef 1) #12
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %232

252:                                              ; preds = %245
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %253 = load i8, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 4, ptr %14, align 2
  store i8 %253, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  store i32 0, ptr %224, align 4, !annotation !9
  %254 = load i8, ptr %43, align 4
  %255 = zext i8 %254 to i16
  store i16 %255, ptr %15, align 4
  store i16 0, ptr %225, align 2
  store i16 2, ptr %224, align 4
  store ptr %14, ptr %226, align 4
  %256 = load ptr, ptr %30, align 4
  %257 = call i32 @i2c_transfer(ptr noundef %256, ptr noundef nonnull %15, i32 noundef 1) #12
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %259, label %232

259:                                              ; preds = %252
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %260 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 5
  %261 = load i8, ptr %260, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 5, ptr %14, align 2
  store i8 %261, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  store i32 0, ptr %224, align 4, !annotation !9
  %262 = load i8, ptr %43, align 4
  %263 = zext i8 %262 to i16
  store i16 %263, ptr %15, align 4
  store i16 0, ptr %225, align 2
  store i16 2, ptr %224, align 4
  store ptr %14, ptr %226, align 4
  %264 = load ptr, ptr %30, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %15, i32 noundef 1) #12
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %232

267:                                              ; preds = %259
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %268 = load i8, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i8 6, ptr %14, align 2
  store i8 %268, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  store i32 0, ptr %224, align 4, !annotation !9
  %269 = load i8, ptr %43, align 4
  %270 = zext i8 %269 to i16
  store i16 %270, ptr %15, align 4
  store i16 0, ptr %225, align 2
  store i16 2, ptr %224, align 4
  store ptr %14, ptr %226, align 4
  %271 = load ptr, ptr %30, align 4
  %272 = call i32 @i2c_transfer(ptr noundef %271, ptr noundef nonnull %15, i32 noundef 1) #12
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %232

274:                                              ; preds = %267
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  %275 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %30)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %561

277:                                              ; preds = %274
  %278 = call fastcc i32 @fc0011_vcocal_read(ptr noundef %30, ptr noundef nonnull %26)
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %561

280:                                              ; preds = %277
  %281 = load i8, ptr %26, align 1
  %282 = and i8 %281, 64
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %483

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %286 = getelementptr inbounds i8, ptr %12, i32 1
  %287 = getelementptr inbounds i8, ptr %13, i32 4
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %289 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %290 = getelementptr inbounds i8, ptr %10, i32 1
  %291 = getelementptr inbounds i8, ptr %11, i32 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %294 = getelementptr inbounds i8, ptr %8, i32 1
  %295 = getelementptr inbounds i8, ptr %9, i32 4
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %297 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %298 = getelementptr inbounds i8, ptr %6, i32 1
  %299 = getelementptr inbounds i8, ptr %7, i32 4
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %301 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %302 = getelementptr inbounds i8, ptr %4, i32 1
  %303 = getelementptr inbounds i8, ptr %5, i32 4
  %304 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %305 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %306 = getelementptr inbounds i8, ptr %2, i32 1
  %307 = getelementptr inbounds i8, ptr %3, i32 4
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %317

310:                                              ; preds = %475
  %311 = add nuw nsw i32 %318, 1
  %312 = load i8, ptr %26, align 1
  %313 = and i8 %312, 64
  %314 = icmp eq i8 %313, 0
  %315 = icmp ult i32 %318, 2
  %316 = select i1 %314, i1 %315, i1 false
  br i1 %316, label %317, label %478

317:                                              ; preds = %310, %284
  %318 = phi i32 [ 0, %284 ], [ %311, %310 ]
  %319 = load ptr, ptr %285, align 4
  %320 = load ptr, ptr %30, align 4
  %321 = load i8, ptr %43, align 4
  %322 = zext i8 %321 to i32
  %323 = call i32 %319(ptr noundef %320, i32 noundef 0, i32 noundef 1, i32 noundef %322) #12
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %332

325:                                              ; preds = %317
  %326 = load i8, ptr %186, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 1, ptr %12, align 2
  store i8 %326, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  store i32 0, ptr %287, align 4, !annotation !9
  %327 = load i8, ptr %43, align 4
  %328 = zext i8 %327 to i16
  store i16 %328, ptr %13, align 4
  store i16 0, ptr %288, align 2
  store i16 2, ptr %287, align 4
  store ptr %12, ptr %289, align 4
  %329 = load ptr, ptr %30, align 4
  %330 = call i32 @i2c_transfer(ptr noundef %329, ptr noundef nonnull %13, i32 noundef 1) #12
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %339, label %335

332:                                              ; preds = %317
  %333 = load ptr, ptr %30, align 4
  %334 = getelementptr inbounds %struct.i2c_adapter, ptr %333, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %334, ptr noundef nonnull @.str.6) #11
  br label %561

335:                                              ; preds = %325
  %336 = load ptr, ptr %30, align 4
  %337 = getelementptr inbounds %struct.i2c_adapter, ptr %336, i32 0, i32 9
  %338 = zext i8 %326 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %337, ptr noundef nonnull @.str.8, i32 noundef 1, i32 noundef %338) #11
  br label %339

339:                                              ; preds = %335, %325
  %340 = phi i32 [ -5, %335 ], [ 0, %325 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %341 = load i8, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 2, ptr %12, align 2
  store i8 %341, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  store i32 0, ptr %287, align 4, !annotation !9
  %342 = load i8, ptr %43, align 4
  %343 = zext i8 %342 to i16
  store i16 %343, ptr %13, align 4
  store i16 0, ptr %288, align 2
  store i16 2, ptr %287, align 4
  store ptr %12, ptr %289, align 4
  %344 = load ptr, ptr %30, align 4
  %345 = call i32 @i2c_transfer(ptr noundef %344, ptr noundef nonnull %13, i32 noundef 1) #12
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %351, label %347

347:                                              ; preds = %339
  %348 = load ptr, ptr %30, align 4
  %349 = getelementptr inbounds %struct.i2c_adapter, ptr %348, i32 0, i32 9
  %350 = zext i8 %341 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %349, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef %350) #11
  br label %351

351:                                              ; preds = %347, %339
  %352 = phi i32 [ -5, %347 ], [ 0, %339 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %353 = or i32 %352, %340
  %354 = load i8, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 3, ptr %12, align 2
  store i8 %354, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  store i32 0, ptr %287, align 4, !annotation !9
  %355 = load i8, ptr %43, align 4
  %356 = zext i8 %355 to i16
  store i16 %356, ptr %13, align 4
  store i16 0, ptr %288, align 2
  store i16 2, ptr %287, align 4
  store ptr %12, ptr %289, align 4
  %357 = load ptr, ptr %30, align 4
  %358 = call i32 @i2c_transfer(ptr noundef %357, ptr noundef nonnull %13, i32 noundef 1) #12
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %364, label %360

360:                                              ; preds = %351
  %361 = load ptr, ptr %30, align 4
  %362 = getelementptr inbounds %struct.i2c_adapter, ptr %361, i32 0, i32 9
  %363 = zext i8 %354 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %362, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef %363) #11
  br label %364

364:                                              ; preds = %360, %351
  %365 = phi i32 [ -5, %360 ], [ 0, %351 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %366 = or i32 %365, %353
  %367 = load i8, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 4, ptr %12, align 2
  store i8 %367, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  store i32 0, ptr %287, align 4, !annotation !9
  %368 = load i8, ptr %43, align 4
  %369 = zext i8 %368 to i16
  store i16 %369, ptr %13, align 4
  store i16 0, ptr %288, align 2
  store i16 2, ptr %287, align 4
  store ptr %12, ptr %289, align 4
  %370 = load ptr, ptr %30, align 4
  %371 = call i32 @i2c_transfer(ptr noundef %370, ptr noundef nonnull %13, i32 noundef 1) #12
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %377, label %373

373:                                              ; preds = %364
  %374 = load ptr, ptr %30, align 4
  %375 = getelementptr inbounds %struct.i2c_adapter, ptr %374, i32 0, i32 9
  %376 = zext i8 %367 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %375, ptr noundef nonnull @.str.8, i32 noundef 4, i32 noundef %376) #11
  br label %377

377:                                              ; preds = %373, %364
  %378 = phi i32 [ -5, %373 ], [ 0, %364 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %379 = or i32 %378, %366
  %380 = load i8, ptr %260, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 5, ptr %12, align 2
  store i8 %380, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  store i32 0, ptr %287, align 4, !annotation !9
  %381 = load i8, ptr %43, align 4
  %382 = zext i8 %381 to i16
  store i16 %382, ptr %13, align 4
  store i16 0, ptr %288, align 2
  store i16 2, ptr %287, align 4
  store ptr %12, ptr %289, align 4
  %383 = load ptr, ptr %30, align 4
  %384 = call i32 @i2c_transfer(ptr noundef %383, ptr noundef nonnull %13, i32 noundef 1) #12
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %390, label %386

386:                                              ; preds = %377
  %387 = load ptr, ptr %30, align 4
  %388 = getelementptr inbounds %struct.i2c_adapter, ptr %387, i32 0, i32 9
  %389 = zext i8 %380 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %388, ptr noundef nonnull @.str.8, i32 noundef 5, i32 noundef %389) #11
  br label %390

390:                                              ; preds = %386, %377
  %391 = phi i32 [ -5, %386 ], [ 0, %377 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %392 = or i32 %391, %379
  %393 = load i8, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i8 6, ptr %12, align 2
  store i8 %393, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  store i32 0, ptr %287, align 4, !annotation !9
  %394 = load i8, ptr %43, align 4
  %395 = zext i8 %394 to i16
  store i16 %395, ptr %13, align 4
  store i16 0, ptr %288, align 2
  store i16 2, ptr %287, align 4
  store ptr %12, ptr %289, align 4
  %396 = load ptr, ptr %30, align 4
  %397 = call i32 @i2c_transfer(ptr noundef %396, ptr noundef nonnull %13, i32 noundef 1) #12
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %403, label %399

399:                                              ; preds = %390
  %400 = load ptr, ptr %30, align 4
  %401 = getelementptr inbounds %struct.i2c_adapter, ptr %400, i32 0, i32 9
  %402 = zext i8 %393 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %401, ptr noundef nonnull @.str.8, i32 noundef 6, i32 noundef %402) #11
  br label %403

403:                                              ; preds = %399, %390
  %404 = phi i32 [ -5, %399 ], [ 0, %390 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  %405 = or i32 %404, %392
  %406 = load i8, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i8 7, ptr %10, align 2
  store i8 %406, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  store i32 2, ptr %291, align 4, !annotation !9
  %407 = load i8, ptr %43, align 4
  %408 = zext i8 %407 to i16
  store i16 %408, ptr %11, align 4
  store i16 0, ptr %292, align 2
  store ptr %10, ptr %293, align 4
  %409 = load ptr, ptr %30, align 4
  %410 = call i32 @i2c_transfer(ptr noundef %409, ptr noundef nonnull %11, i32 noundef 1) #12
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %416, label %412

412:                                              ; preds = %403
  %413 = load ptr, ptr %30, align 4
  %414 = getelementptr inbounds %struct.i2c_adapter, ptr %413, i32 0, i32 9
  %415 = zext i8 %406 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %414, ptr noundef nonnull @.str.8, i32 noundef 7, i32 noundef %415) #11
  br label %416

416:                                              ; preds = %412, %403
  %417 = phi i32 [ -5, %412 ], [ 0, %403 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  %418 = or i32 %417, %405
  %419 = load i8, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i8 8, ptr %8, align 2
  store i8 %419, ptr %294, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  store i32 2, ptr %295, align 4, !annotation !9
  %420 = load i8, ptr %43, align 4
  %421 = zext i8 %420 to i16
  store i16 %421, ptr %9, align 4
  store i16 0, ptr %296, align 2
  store ptr %8, ptr %297, align 4
  %422 = load ptr, ptr %30, align 4
  %423 = call i32 @i2c_transfer(ptr noundef %422, ptr noundef nonnull %9, i32 noundef 1) #12
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %429, label %425

425:                                              ; preds = %416
  %426 = load ptr, ptr %30, align 4
  %427 = getelementptr inbounds %struct.i2c_adapter, ptr %426, i32 0, i32 9
  %428 = zext i8 %419 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %427, ptr noundef nonnull @.str.8, i32 noundef 8, i32 noundef %428) #11
  br label %429

429:                                              ; preds = %425, %416
  %430 = phi i32 [ -5, %425 ], [ 0, %416 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  %431 = or i32 %418, %430
  %432 = load i8, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i8 10, ptr %6, align 2
  store i8 %432, ptr %298, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  store i32 2, ptr %299, align 4, !annotation !9
  %433 = load i8, ptr %43, align 4
  %434 = zext i8 %433 to i16
  store i16 %434, ptr %7, align 4
  store i16 0, ptr %300, align 2
  store ptr %6, ptr %301, align 4
  %435 = load ptr, ptr %30, align 4
  %436 = call i32 @i2c_transfer(ptr noundef %435, ptr noundef nonnull %7, i32 noundef 1) #12
  %437 = icmp eq i32 %436, 1
  br i1 %437, label %442, label %438

438:                                              ; preds = %429
  %439 = load ptr, ptr %30, align 4
  %440 = getelementptr inbounds %struct.i2c_adapter, ptr %439, i32 0, i32 9
  %441 = zext i8 %432 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %440, ptr noundef nonnull @.str.8, i32 noundef 10, i32 noundef %441) #11
  br label %442

442:                                              ; preds = %438, %429
  %443 = phi i32 [ -5, %438 ], [ 0, %429 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  %444 = or i32 %431, %443
  %445 = load i8, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 11, ptr %4, align 2
  store i8 %445, ptr %302, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  store i32 2, ptr %303, align 4, !annotation !9
  %446 = load i8, ptr %43, align 4
  %447 = zext i8 %446 to i16
  store i16 %447, ptr %5, align 4
  store i16 0, ptr %304, align 2
  store ptr %4, ptr %305, align 4
  %448 = load ptr, ptr %30, align 4
  %449 = call i32 @i2c_transfer(ptr noundef %448, ptr noundef nonnull %5, i32 noundef 1) #12
  %450 = icmp eq i32 %449, 1
  br i1 %450, label %455, label %451

451:                                              ; preds = %442
  %452 = load ptr, ptr %30, align 4
  %453 = getelementptr inbounds %struct.i2c_adapter, ptr %452, i32 0, i32 9
  %454 = zext i8 %445 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %453, ptr noundef nonnull @.str.8, i32 noundef 11, i32 noundef %454) #11
  br label %455

455:                                              ; preds = %451, %442
  %456 = phi i32 [ -5, %451 ], [ 0, %442 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %457 = or i32 %444, %456
  %458 = load i8, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 13, ptr %2, align 2
  store i8 %458, ptr %306, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  store i32 2, ptr %307, align 4, !annotation !9
  %459 = load i8, ptr %43, align 4
  %460 = zext i8 %459 to i16
  store i16 %460, ptr %3, align 4
  store i16 0, ptr %308, align 2
  store ptr %2, ptr %309, align 4
  %461 = load ptr, ptr %30, align 4
  %462 = call i32 @i2c_transfer(ptr noundef %461, ptr noundef nonnull %3, i32 noundef 1) #12
  %463 = icmp eq i32 %462, 1
  br i1 %463, label %468, label %464

464:                                              ; preds = %455
  %465 = load ptr, ptr %30, align 4
  %466 = getelementptr inbounds %struct.i2c_adapter, ptr %465, i32 0, i32 9
  %467 = zext i8 %458 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %466, ptr noundef nonnull @.str.8, i32 noundef 13, i32 noundef %467) #11
  br label %468

468:                                              ; preds = %464, %455
  %469 = phi i32 [ -5, %464 ], [ 0, %455 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %470 = or i32 %457, %469
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %561

472:                                              ; preds = %468
  %473 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %30)
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %561

475:                                              ; preds = %472
  %476 = call fastcc i32 @fc0011_vcocal_read(ptr noundef %30, ptr noundef nonnull %26)
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %310, label %561

478:                                              ; preds = %310
  br i1 %314, label %479, label %483

479:                                              ; preds = %478
  %480 = zext i8 %312 to i32
  %481 = load ptr, ptr %30, align 4
  %482 = getelementptr inbounds %struct.i2c_adapter, ptr %481, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %482, ptr noundef nonnull @.str.7, i32 noundef %480) #11
  br label %561

483:                                              ; preds = %478, %280
  %484 = phi i8 [ %312, %478 ], [ %281, %280 ]
  %485 = and i8 %484, 63
  store i8 %485, ptr %26, align 1
  switch i32 %214, label %486 [
    i32 0, label %487
    i32 1, label %501
    i32 2, label %526
  ]

486:                                              ; preds = %483
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 9, ptr noundef null) #12
  br label %561

487:                                              ; preds = %483
  %488 = icmp ult i8 %485, 8
  %489 = load i8, ptr %221, align 1
  %490 = and i8 %489, -25
  br i1 %488, label %491, label %498

491:                                              ; preds = %487
  %492 = or i8 %490, 16
  store i8 %492, ptr %221, align 1
  %493 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 6, i8 noundef zeroext %492)
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %561

495:                                              ; preds = %491
  %496 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %30)
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %541, label %561

498:                                              ; preds = %487
  store i8 %490, ptr %221, align 1
  %499 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 6, i8 noundef zeroext %490)
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %541, label %561

501:                                              ; preds = %483
  %502 = icmp ult i8 %485, 5
  br i1 %502, label %503, label %512

503:                                              ; preds = %501
  %504 = load i8, ptr %221, align 1
  %505 = and i8 %504, -25
  %506 = or i8 %505, 8
  store i8 %506, ptr %221, align 1
  %507 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 6, i8 noundef zeroext %506)
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %561

509:                                              ; preds = %503
  %510 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %30)
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %541, label %561

512:                                              ; preds = %501
  %513 = icmp ult i8 %485, 49
  %514 = load i8, ptr %221, align 1
  %515 = and i8 %514, -25
  br i1 %513, label %516, label %520

516:                                              ; preds = %512
  %517 = or i8 %515, 16
  store i8 %517, ptr %221, align 1
  %518 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 6, i8 noundef zeroext %517)
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %541, label %561

520:                                              ; preds = %512
  store i8 %515, ptr %221, align 1
  %521 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 6, i8 noundef zeroext %515)
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %561

523:                                              ; preds = %520
  %524 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %30)
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %541, label %561

526:                                              ; preds = %483
  %527 = icmp ugt i8 %485, 53
  %528 = load i8, ptr %221, align 1
  %529 = and i8 %528, -25
  br i1 %527, label %530, label %537

530:                                              ; preds = %526
  %531 = or i8 %529, 16
  store i8 %531, ptr %221, align 1
  %532 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 6, i8 noundef zeroext %531)
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %561

534:                                              ; preds = %530
  %535 = call fastcc i32 @fc0011_vcocal_trigger(ptr noundef %30)
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %541, label %561

537:                                              ; preds = %526
  %538 = or i8 %529, 8
  store i8 %538, ptr %221, align 1
  %539 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 6, i8 noundef zeroext %538)
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %561

541:                                              ; preds = %537, %534, %523, %516, %509, %498, %495
  %542 = call fastcc i32 @fc0011_vcocal_read(ptr noundef %30, ptr noundef null)
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %561

544:                                              ; preds = %541
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #12
  %545 = call fastcc i32 @fc0011_readreg(ptr noundef %30, i8 noundef zeroext 13, ptr noundef %40)
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %561

547:                                              ; preds = %544
  %548 = load i8, ptr %40, align 1
  %549 = or i8 %548, 16
  store i8 %549, ptr %40, align 1
  %550 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 13, i8 noundef zeroext %549)
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %561

552:                                              ; preds = %547
  %553 = getelementptr inbounds [18 x i8], ptr %27, i32 0, i32 16
  store i8 11, ptr %553, align 1
  %554 = call fastcc i32 @fc0011_writereg(ptr noundef %30, i8 noundef zeroext 16, i8 noundef zeroext 11)
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %561

556:                                              ; preds = %552
  %557 = load i32, ptr %28, align 4
  %558 = getelementptr inbounds %struct.fc0011_priv, ptr %30, i32 0, i32 2
  store i32 %557, ptr %558, align 4
  %559 = load i32, ptr %33, align 4
  %560 = getelementptr inbounds %struct.fc0011_priv, ptr %30, i32 0, i32 3
  store i32 %559, ptr %560, align 4
  br label %561

561:                                              ; preds = %556, %552, %547, %544, %541, %537, %534, %530, %523, %520, %516, %509, %503, %498, %495, %491, %486, %479, %475, %472, %468, %332, %277, %274, %232, %121
  %562 = phi i32 [ %323, %332 ], [ -22, %486 ], [ 0, %556 ], [ -5, %479 ], [ -5, %121 ], [ -5, %232 ], [ %275, %274 ], [ %278, %277 ], [ %493, %491 ], [ %496, %495 ], [ %499, %498 ], [ %507, %503 ], [ %510, %509 ], [ %518, %516 ], [ %521, %520 ], [ %524, %523 ], [ %532, %530 ], [ %535, %534 ], [ %539, %537 ], [ %542, %541 ], [ %545, %544 ], [ %550, %547 ], [ %554, %552 ], [ %476, %475 ], [ %473, %472 ], [ -5, %468 ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #12
  ret i32 %562
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc0011_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fc0011_priv, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc0011_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fc0011_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc0011_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_writereg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 %1, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.fc0011_priv, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 1) #12
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %20 = zext i8 %1 to i32
  %21 = zext i8 %2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8, i32 noundef %20, i32 noundef %21) #11
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi i32 [ -5, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_vcocal_trigger(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i8 14, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -128, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.fc0011_priv, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %5, i32 noundef 1) #12
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.8, i32 noundef 14, i32 noundef 128) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  br label %34

19:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i8 14, ptr %2, align 2
  %20 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %21 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %21, align 4, !annotation !9
  %22 = load i8, ptr %8, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %3, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %25, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %3, i32 noundef 1) #12
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.8, i32 noundef 14, i32 noundef 0) #11
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi i32 [ -5, %29 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  br label %34

34:                                               ; preds = %32, %16
  %35 = phi i32 [ -5, %16 ], [ %33, %32 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_vcocal_read(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i8 14, ptr %6, align 2
  %8 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %9 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.fc0011_priv, ptr %0, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %14, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %7, i32 noundef 1) #12
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef 14, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  br label %43

21:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 14, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %22 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #12, !annotation !9
  %23 = load i8, ptr %10, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %5, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  %31 = icmp eq ptr %1, null
  %32 = select i1 %31, ptr %4, ptr %1
  store ptr %32, ptr %30, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %5, i32 noundef 2) #12
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %41, label %36

36:                                               ; preds = %21
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 9
  %39 = load i8, ptr %3, align 1
  %40 = zext i8 %39 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.9, i32 noundef %40) #11
  br label %41

41:                                               ; preds = %36, %21
  %42 = phi i32 [ -5, %36 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %43

43:                                               ; preds = %41, %18
  %44 = phi i32 [ -5, %18 ], [ %42, %41 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc0011_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.fc0011_priv, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  %18 = icmp eq ptr %2, null
  %19 = select i1 %18, ptr %5, ptr %2
  store ptr %19, ptr %17, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 2) #12
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9
  %26 = load i8, ptr %4, align 1
  %27 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.9, i32 noundef %27) #11
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i32 [ -5, %23 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
