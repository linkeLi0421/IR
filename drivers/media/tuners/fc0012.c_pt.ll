; ModuleID = '/llk/IR/drivers/media/tuners/fc0012.c_pt.bc'
source_filename = "../drivers/media/tuners/fc0012.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc0012_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22fc0012_attach\22\09\09\09\09\09"
module asm "__kstrtabns_fc0012_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.fc0012_priv = type { ptr, ptr, i32, i32 }
%struct.fc0012_config = type { i8, i32, i8, i8, i8 }

@.str = private unnamed_addr constant [22 x i8] c"%s: kzalloc() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fc0012\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: Fitipower FC0012 successfully identified\0A\00", align 1
@fc0012_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Fitipower FC0012\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 37000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr @fc0012_release, ptr @fc0012_init, ptr null, ptr null, ptr null, ptr @fc0012_set_params, ptr null, ptr null, ptr @fc0012_get_frequency, ptr @fc0012_get_bandwidth, ptr @fc0012_get_if_frequency, ptr null, ptr @fc0012_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_fc0012_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc0012_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_fc0012_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc0012_attach to i32), ptr @__kstrtab_fc0012_attach, ptr @__kstrtabns_fc0012_attach }, section "___ksymtab+fc0012_attach", align 4
@__UNIQUE_ID_description249 = internal constant [50 x i8] c"description=Fitipower FC0012 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [42 x i8] c"author=Hans-Frieder Vogt <hfvogt@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version252 = internal constant [12 x i8] c"version=0.6\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: I2C read reg failed, reg: %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s: I2C write reg failed, reg: %02x, val: %02x\0A\00", align 1
@__const.fc0012_init.reg = private unnamed_addr constant [22 x i8] c"\00\05\10\00\00\0F\00\00\FFn\B8\82\FC\02\00\00\00\00\1F\08\00\04", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: fc0012_writereg failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: modulation type not supported!\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s: %s failed: %d\0A\00", align 1
@__func__.fc0012_set_params = private unnamed_addr constant [18 x i8] c"fc0012_set_params\00", align 1
@fc0012_get_rf_strength.fc0012_lna_gain_table = internal unnamed_addr constant [24 x i32] [i32 -63, i32 -58, i32 -99, i32 -73, i32 -63, i32 -65, i32 -54, i32 -60, i32 71, i32 70, i32 68, i32 67, i32 65, i32 63, i32 61, i32 58, i32 197, i32 191, i32 188, i32 186, i32 184, i32 182, i32 181, i32 179], align 4
@__func__.fc0012_get_rf_strength = private unnamed_addr constant [23 x i8] c"fc0012_get_rf_strength\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__UNIQUE_ID_version252, ptr @__ksymtab_fc0012_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fc0012_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 %10(ptr noundef %0, i32 noundef 1) #9
  br label %14

14:                                               ; preds = %12, %3
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %66

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.fc0012_priv, ptr %16, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  store ptr %1, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %22 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #9, !annotation !8
  %23 = load i8, ptr %2, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %7, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %8, ptr %30, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 2) #9
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %35 = load i8, ptr %6, align 1
  %36 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %36) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %66

37:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %38 = load i8, ptr %8, align 1
  %39 = icmp eq i8 %38, -95
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #11
  %42 = getelementptr inbounds %struct.fc0012_config, ptr %2, i32 0, i32 3
  %43 = load i8, ptr %42, align 1, !range !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 9, ptr %4, align 2
  %46 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 111, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %47 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %47, align 4, !annotation !8
  %48 = load i8, ptr %2, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %5, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %51, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 1) #9
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 9, i32 noundef 111) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %66

55:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %56

56:                                               ; preds = %55, %40
  %57 = getelementptr inbounds %struct.fc0012_config, ptr %2, i32 0, i32 4
  %58 = load i8, ptr %57, align 2, !range !9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = call fastcc i32 @fc0012_writereg(ptr noundef nonnull %16, i8 noundef zeroext 11, i8 noundef zeroext -126)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %56
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %16, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %65, ptr noundef nonnull align 4 dereferenceable(220) @fc0012_tuner_ops, i32 220, i1 false)
  br label %66

66:                                               ; preds = %63, %60, %54, %37, %33, %18
  %67 = phi i32 [ %61, %60 ], [ 0, %63 ], [ -19, %18 ], [ -19, %37 ], [ -19, %33 ], [ -19, %54 ]
  %68 = load ptr, ptr %9, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = call i32 %68(ptr noundef %0, i32 noundef 0) #9
  br label %72

72:                                               ; preds = %70, %66
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %72
  call void @kfree(ptr noundef %16) #9
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi ptr [ null, %74 ], [ %0, %72 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  ret ptr %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fc0012_writereg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 %1, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.fc0012_priv, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %14, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 1) #9
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  %21 = zext i8 %1 to i32
  %22 = zext i8 %2 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %22) #11
  br label %23

23:                                               ; preds = %18, %3
  %24 = phi i32 [ -121, %18 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret i32 %24
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fc0012_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0012_init(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [22 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %4, ptr noundef nonnull align 1 dereferenceable(22) @__const.fc0012_init.reg, i32 22, i1 false)
  %7 = getelementptr inbounds %struct.fc0012_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fc0012_config, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds [22 x i8], ptr %4, i32 0, i32 7
  store i8 32, ptr %13, align 1
  br label %14

14:                                               ; preds = %12, %1
  %15 = getelementptr inbounds %struct.fc0012_config, ptr %8, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds [22 x i8], ptr %4, i32 0, i32 12
  store i8 -2, ptr %19, align 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.fc0012_config, ptr %8, i32 0, i32 3
  %22 = load i8, ptr %21, align 1, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [22 x i8], ptr %4, i32 0, i32 9
  store i8 111, ptr %25, align 1
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 %28(ptr noundef %0, i32 noundef 1) #9
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds i8, ptr %2, i32 1
  %34 = getelementptr inbounds i8, ptr %3, i32 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %37

37:                                               ; preds = %54, %32
  %38 = phi i1 [ true, %32 ], [ %56, %54 ]
  %39 = phi i32 [ 1, %32 ], [ %55, %54 ]
  %40 = trunc i32 %39 to i8
  %41 = getelementptr [22 x i8], ptr %4, i32 0, i32 %39
  %42 = load i8, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 %40, ptr %2, align 2
  store i8 %42, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i32 0, ptr %34, align 4, !annotation !8
  %43 = load ptr, ptr %7, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %3, align 4
  store i16 0, ptr %35, align 2
  store i16 2, ptr %34, align 4
  store ptr %2, ptr %36, align 4
  %46 = load ptr, ptr %6, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %3, i32 noundef 1) #9
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %54, label %49

49:                                               ; preds = %37
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 9
  %52 = and i32 %39, 255
  %53 = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef %53) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %58

54:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %55 = add nuw nsw i32 %39, 1
  %56 = icmp ult i32 %39, 21
  %57 = icmp eq i32 %55, 22
  br i1 %57, label %58, label %37

58:                                               ; preds = %54, %49
  %59 = phi i1 [ %38, %49 ], [ %56, %54 ]
  %60 = phi i32 [ -121, %49 ], [ 0, %54 ]
  %61 = load ptr, ptr %27, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = call i32 %61(ptr noundef %0, i32 noundef 0) #9
  br label %65

65:                                               ; preds = %63, %58
  br i1 %59, label %66, label %69

66:                                               ; preds = %65
  %67 = load ptr, ptr %6, align 4
  %68 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %60) #11
  br label %69

69:                                               ; preds = %66, %65
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %4) #9
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0012_set_params(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca i8, align 1
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = udiv i32 %20, 1000
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %23 = load i32, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1, !annotation !8
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load ptr, ptr %18, align 4
  %29 = icmp ult i32 %20, 300001000
  %30 = zext i1 %29 to i32
  %31 = tail call i32 %25(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %291

33:                                               ; preds = %27, %1
  %34 = getelementptr inbounds %struct.fc0012_priv, ptr %18, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fc0012_config, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  %39 = select i1 %38, i32 18000, i32 14400
  %40 = icmp eq i32 %37, 0
  %41 = select i1 %40, i32 13500, i32 %39
  %42 = icmp ult i32 %20, 37084000
  br i1 %42, label %61, label %43

43:                                               ; preds = %33
  %44 = icmp ult i32 %20, 55625000
  br i1 %44, label %61, label %45

45:                                               ; preds = %43
  %46 = icmp ult i32 %20, 74167000
  br i1 %46, label %61, label %47

47:                                               ; preds = %45
  %48 = icmp ult i32 %20, 111250000
  br i1 %48, label %61, label %49

49:                                               ; preds = %47
  %50 = icmp ult i32 %20, 148334000
  br i1 %50, label %61, label %51

51:                                               ; preds = %49
  %52 = icmp ult i32 %20, 222500000
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %54 = icmp ult i32 %20, 296667000
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = icmp ult i32 %20, 445000000
  br i1 %56, label %61, label %57

57:                                               ; preds = %55
  %58 = icmp ult i32 %20, 593334000
  %59 = select i1 %58, i8 0, i8 2
  %60 = select i1 %58, i32 6, i32 4
  br label %61

61:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %33
  %62 = phi i8 [ -121, %33 ], [ -121, %43 ], [ 71, %45 ], [ 71, %47 ], [ 39, %49 ], [ 39, %51 ], [ 23, %53 ], [ 23, %55 ], [ 15, %57 ]
  %63 = phi i8 [ 0, %33 ], [ 2, %43 ], [ 0, %45 ], [ 2, %47 ], [ 0, %49 ], [ 2, %51 ], [ 0, %53 ], [ 2, %55 ], [ %59, %57 ]
  %64 = phi i32 [ 96, %33 ], [ 64, %43 ], [ 48, %45 ], [ 32, %47 ], [ 24, %49 ], [ 16, %51 ], [ 12, %53 ], [ 8, %55 ], [ %60, %57 ]
  %65 = mul nuw nsw i32 %64, %21
  %66 = icmp ugt i32 %65, 3059999
  %67 = or i8 %63, 8
  %68 = select i1 %66, i8 %67, i8 %63
  %69 = icmp ugt i32 %20, 44999999
  br i1 %69, label %70, label %90

70:                                               ; preds = %61
  %71 = udiv i32 %65, %41
  %72 = mul nuw nsw i32 %71, %41
  %73 = sub nsw i32 %65, %72
  %74 = lshr exact i32 %41, 1
  %75 = icmp uge i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = add nuw nsw i32 %71, %76
  %78 = lshr i32 %77, 3
  %79 = mul nuw nsw i32 %78, 248
  %80 = add nuw nsw i32 %79, %77
  %81 = and i32 %80, 254
  %82 = icmp eq i32 %81, 0
  %83 = trunc i32 %80 to i8
  br i1 %82, label %84, label %88

84:                                               ; preds = %70
  %85 = add i8 %83, 8
  %86 = trunc i32 %78 to i8
  %87 = add i8 %86, -1
  br label %90

88:                                               ; preds = %70
  %89 = trunc i32 %78 to i8
  br label %90

90:                                               ; preds = %88, %84, %61
  %91 = phi i8 [ %85, %84 ], [ %83, %88 ], [ 6, %61 ]
  %92 = phi i8 [ %87, %84 ], [ %89, %88 ], [ 17, %61 ]
  %93 = urem i32 %65, %41
  %94 = shl nuw nsw i32 %93, 15
  %95 = udiv i32 %94, %41
  %96 = icmp ugt i32 %95, 16383
  %97 = add nuw nsw i32 %95, 32768
  %98 = select i1 %96, i32 %97, i32 %95
  %99 = lshr i32 %98, 8
  %100 = trunc i32 %99 to i8
  %101 = trunc i32 %98 to i8
  %102 = icmp eq i32 %23, 3
  br i1 %102, label %103, label %111

103:                                              ; preds = %90
  %104 = or i8 %68, 32
  %105 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %106 = load i32, ptr %105, align 4
  switch i32 %106, label %114 [
    i32 6000000, label %107
    i32 7000000, label %109
  ]

107:                                              ; preds = %103
  %108 = or i8 %68, -96
  br label %114

109:                                              ; preds = %103
  %110 = or i8 %68, 96
  br label %114

111:                                              ; preds = %90
  %112 = load ptr, ptr %18, align 4
  %113 = getelementptr inbounds %struct.i2c_adapter, ptr %112, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #11
  br label %303

114:                                              ; preds = %109, %107, %103
  %115 = phi i8 [ %104, %103 ], [ %110, %109 ], [ %108, %107 ]
  %116 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = tail call i32 %117(ptr noundef %0, i32 noundef 1) #9
  br label %121

121:                                              ; preds = %119, %114
  %122 = getelementptr inbounds i8, ptr %14, i32 1
  %123 = getelementptr inbounds i8, ptr %15, i32 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 1, ptr %14, align 2
  store i8 %91, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %123, align 4, !annotation !8
  %126 = load ptr, ptr %34, align 4
  %127 = load i8, ptr %126, align 4
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %15, align 4
  store i16 0, ptr %124, align 2
  store i16 2, ptr %123, align 4
  store ptr %14, ptr %125, align 4
  %129 = load ptr, ptr %18, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %15, i32 noundef 1) #9
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %138, label %132

132:                                              ; preds = %166, %159, %152, %145, %138, %121
  %133 = phi i32 [ 1, %121 ], [ 2, %138 ], [ 3, %145 ], [ 4, %152 ], [ 5, %159 ], [ 6, %166 ]
  %134 = phi i8 [ %91, %121 ], [ %92, %138 ], [ %100, %145 ], [ %101, %152 ], [ %62, %159 ], [ %115, %166 ]
  %135 = load ptr, ptr %18, align 4
  %136 = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 9
  %137 = zext i8 %134 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %133, i32 noundef %137) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  br label %291

138:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 2, ptr %14, align 2
  store i8 %92, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %123, align 4, !annotation !8
  %139 = load ptr, ptr %34, align 4
  %140 = load i8, ptr %139, align 4
  %141 = zext i8 %140 to i16
  store i16 %141, ptr %15, align 4
  store i16 0, ptr %124, align 2
  store i16 2, ptr %123, align 4
  store ptr %14, ptr %125, align 4
  %142 = load ptr, ptr %18, align 4
  %143 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %15, i32 noundef 1) #9
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %132

145:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 3, ptr %14, align 2
  store i8 %100, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %123, align 4, !annotation !8
  %146 = load ptr, ptr %34, align 4
  %147 = load i8, ptr %146, align 4
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %15, align 4
  store i16 0, ptr %124, align 2
  store i16 2, ptr %123, align 4
  store ptr %14, ptr %125, align 4
  %149 = load ptr, ptr %18, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %15, i32 noundef 1) #9
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %132

152:                                              ; preds = %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 4, ptr %14, align 2
  store i8 %101, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %123, align 4, !annotation !8
  %153 = load ptr, ptr %34, align 4
  %154 = load i8, ptr %153, align 4
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %15, align 4
  store i16 0, ptr %124, align 2
  store i16 2, ptr %123, align 4
  store ptr %14, ptr %125, align 4
  %156 = load ptr, ptr %18, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %15, i32 noundef 1) #9
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %132

159:                                              ; preds = %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 5, ptr %14, align 2
  store i8 %62, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %123, align 4, !annotation !8
  %160 = load ptr, ptr %34, align 4
  %161 = load i8, ptr %160, align 4
  %162 = zext i8 %161 to i16
  store i16 %162, ptr %15, align 4
  store i16 0, ptr %124, align 2
  store i16 2, ptr %123, align 4
  store ptr %14, ptr %125, align 4
  %163 = load ptr, ptr %18, align 4
  %164 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %15, i32 noundef 1) #9
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %132

166:                                              ; preds = %159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 6, ptr %14, align 2
  store i8 %115, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %123, align 4, !annotation !8
  %167 = load ptr, ptr %34, align 4
  %168 = load i8, ptr %167, align 4
  %169 = zext i8 %168 to i16
  store i16 %169, ptr %15, align 4
  store i16 0, ptr %124, align 2
  store i16 2, ptr %123, align 4
  store ptr %14, ptr %125, align 4
  %170 = load ptr, ptr %18, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %15, i32 noundef 1) #9
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %132

173:                                              ; preds = %166
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 14, ptr %12, align 2
  %174 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 -128, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %175 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %175, align 4, !annotation !8
  %176 = load ptr, ptr %34, align 4
  %177 = load i8, ptr %176, align 4
  %178 = zext i8 %177 to i16
  store i16 %178, ptr %13, align 4
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %179, align 2
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %180, align 4
  %181 = load ptr, ptr %18, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %13, i32 noundef 1) #9
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %187, label %184

184:                                              ; preds = %173
  %185 = load ptr, ptr %18, align 4
  %186 = getelementptr inbounds %struct.i2c_adapter, ptr %185, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef 128) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  br label %291

187:                                              ; preds = %173
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 14, ptr %10, align 2
  %188 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 0, ptr %188, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %189 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %189, align 4, !annotation !8
  %190 = load ptr, ptr %34, align 4
  %191 = load i8, ptr %190, align 4
  %192 = zext i8 %191 to i16
  store i16 %192, ptr %11, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %193, align 2
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %194, align 4
  %195 = load ptr, ptr %18, align 4
  %196 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %11, i32 noundef 1) #9
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %201, label %198

198:                                              ; preds = %187
  %199 = load ptr, ptr %18, align 4
  %200 = getelementptr inbounds %struct.i2c_adapter, ptr %199, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %200, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  br label %291

201:                                              ; preds = %187
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 14, ptr %8, align 2
  %202 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %202, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %203 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %203, align 4, !annotation !8
  %204 = load ptr, ptr %34, align 4
  %205 = load i8, ptr %204, align 4
  %206 = zext i8 %205 to i16
  store i16 %206, ptr %9, align 4
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %207, align 2
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %208, align 4
  %209 = load ptr, ptr %18, align 4
  %210 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %9, i32 noundef 1) #9
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %215, label %212

212:                                              ; preds = %201
  %213 = load ptr, ptr %18, align 4
  %214 = getelementptr inbounds %struct.i2c_adapter, ptr %213, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 14, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  br label %291

215:                                              ; preds = %201
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @msleep(i32 noundef 10) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 14, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %216 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %216, i8 0, i32 16, i1 false) #9, !annotation !8
  %217 = load ptr, ptr %34, align 4
  %218 = load i8, ptr %217, align 4
  %219 = zext i8 %218 to i16
  store i16 %219, ptr %7, align 4
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %220, align 2
  store i16 1, ptr %216, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %221, align 4
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %223 = load i8, ptr %217, align 4
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %222, align 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %225, align 2
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %226, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %16, ptr %227, align 4
  %228 = load ptr, ptr %18, align 4
  %229 = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %7, i32 noundef 2) #9
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %236, label %231

231:                                              ; preds = %215
  %232 = load ptr, ptr %18, align 4
  %233 = getelementptr inbounds %struct.i2c_adapter, ptr %232, i32 0, i32 9
  %234 = load i8, ptr %6, align 1
  %235 = zext i8 %234 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %233, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %235) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %291

236:                                              ; preds = %215
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %237 = load i8, ptr %16, align 1
  %238 = and i8 %237, 63
  store i8 %238, ptr %16, align 1
  br i1 %66, label %239, label %262

239:                                              ; preds = %236
  %240 = icmp ugt i8 %238, 60
  br i1 %240, label %241, label %285

241:                                              ; preds = %239
  %242 = and i8 %115, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 6, ptr %4, align 2
  %243 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %242, ptr %243, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %244 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %244, align 4, !annotation !8
  %245 = load ptr, ptr %34, align 4
  %246 = load i8, ptr %245, align 4
  %247 = zext i8 %246 to i16
  store i16 %247, ptr %5, align 4
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %248, align 2
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %249, align 4
  %250 = load ptr, ptr %18, align 4
  %251 = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %5, i32 noundef 1) #9
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %257, label %253

253:                                              ; preds = %241
  %254 = load ptr, ptr %18, align 4
  %255 = getelementptr inbounds %struct.i2c_adapter, ptr %254, i32 0, i32 9
  %256 = zext i8 %242 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %256) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %285

257:                                              ; preds = %241
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %258 = call fastcc i32 @fc0012_writereg(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext -128)
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %285

260:                                              ; preds = %257
  %261 = call fastcc i32 @fc0012_writereg(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext 0)
  br label %285

262:                                              ; preds = %236
  %263 = icmp ult i8 %238, 2
  br i1 %263, label %264, label %285

264:                                              ; preds = %262
  %265 = or i8 %115, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 6, ptr %2, align 2
  %266 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %265, ptr %266, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %267 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %267, align 4, !annotation !8
  %268 = load ptr, ptr %34, align 4
  %269 = load i8, ptr %268, align 4
  %270 = zext i8 %269 to i16
  store i16 %270, ptr %3, align 4
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %271, align 2
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %272, align 4
  %273 = load ptr, ptr %18, align 4
  %274 = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %3, i32 noundef 1) #9
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %280, label %276

276:                                              ; preds = %264
  %277 = load ptr, ptr %18, align 4
  %278 = getelementptr inbounds %struct.i2c_adapter, ptr %277, i32 0, i32 9
  %279 = zext i8 %265 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef %279) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %285

280:                                              ; preds = %264
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %281 = call fastcc i32 @fc0012_writereg(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext -128)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = call fastcc i32 @fc0012_writereg(ptr noundef %18, i8 noundef zeroext 14, i8 noundef zeroext 0)
  br label %285

285:                                              ; preds = %283, %280, %276, %262, %260, %257, %253, %239
  %286 = phi i32 [ %258, %257 ], [ %261, %260 ], [ 0, %239 ], [ %281, %280 ], [ %284, %283 ], [ 0, %262 ], [ -121, %253 ], [ -121, %276 ]
  %287 = load i32, ptr %19, align 4
  %288 = getelementptr inbounds %struct.fc0012_priv, ptr %18, i32 0, i32 2
  store i32 %287, ptr %288, align 4
  %289 = load i32, ptr %105, align 4
  %290 = getelementptr inbounds %struct.fc0012_priv, ptr %18, i32 0, i32 3
  store i32 %289, ptr %290, align 4
  br label %291

291:                                              ; preds = %285, %231, %212, %198, %184, %132, %27
  %292 = phi i32 [ %31, %27 ], [ -121, %132 ], [ -121, %231 ], [ %286, %285 ], [ -121, %212 ], [ -121, %198 ], [ -121, %184 ]
  %293 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %291
  %297 = call i32 %294(ptr noundef %0, i32 noundef 0) #9
  br label %298

298:                                              ; preds = %296, %291
  %299 = icmp eq i32 %292, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %298
  %301 = load ptr, ptr %18, align 4
  %302 = getelementptr inbounds %struct.i2c_adapter, ptr %301, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %302, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fc0012_set_params, i32 noundef %292) #11
  br label %303

303:                                              ; preds = %300, %298, %111
  %304 = phi i32 [ -22, %111 ], [ %292, %300 ], [ 0, %298 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  ret i32 %304
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc0012_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fc0012_priv, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fc0012_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fc0012_priv, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc0012_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fc0012_get_rf_strength(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1, !annotation !8
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = tail call i32 %13(ptr noundef %0, i32 noundef 1) #9
  br label %17

17:                                               ; preds = %15, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 18, ptr %7, align 2
  %18 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %19 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.fc0012_priv, ptr %11, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %8, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %25, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %8, i32 noundef 1) #9
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  br label %105

32:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 18, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %33 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %33, i8 0, i32 16, i1 false) #9, !annotation !8
  %34 = load ptr, ptr %20, align 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %6, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %37, align 2
  store i16 1, ptr %33, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %40 = load i8, ptr %34, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %9, ptr %44, align 4
  %45 = load ptr, ptr %11, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %6, i32 noundef 2) #9
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %53, label %48

48:                                               ; preds = %32
  %49 = load ptr, ptr %11, align 4
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 9
  %51 = load i8, ptr %5, align 1
  %52 = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %52) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %105

53:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %54 = load i8, ptr %9, align 1
  %55 = zext i8 %54 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 19, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %56 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #9, !annotation !8
  %57 = load ptr, ptr %20, align 4
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %4, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 1, ptr %56, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %63 = load i8, ptr %57, align 4
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %9, ptr %67, align 4
  %68 = load ptr, ptr %11, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %4, i32 noundef 2) #9
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %76, label %71

71:                                               ; preds = %53
  %72 = load ptr, ptr %11, align 4
  %73 = getelementptr inbounds %struct.i2c_adapter, ptr %72, i32 0, i32 9
  %74 = load i8, ptr %3, align 1
  %75 = zext i8 %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %75) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %105

76:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %77 = load i8, ptr %9, align 1
  %78 = and i8 %77, 31
  %79 = zext i8 %78 to i32
  %80 = load ptr, ptr %12, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = call i32 %80(ptr noundef %0, i32 noundef 0) #9
  br label %84

84:                                               ; preds = %82, %76
  %85 = icmp ult i8 %78, 24
  br i1 %85, label %86, label %114

86:                                               ; preds = %84
  %87 = getelementptr [24 x i32], ptr @fc0012_get_rf_strength.fc0012_lna_gain_table, i32 0, i32 %79
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %55, 5
  %90 = add nuw i32 %89, 2147483641
  %91 = and i32 %55, 31
  %92 = sub nuw i32 %90, %91
  %93 = shl i32 %92, 1
  %94 = add nsw i32 %93, -4
  %95 = sdiv i32 %88, -10
  %96 = add i32 %94, %95
  %97 = icmp sgt i32 %96, 44
  br i1 %97, label %110, label %98

98:                                               ; preds = %86
  %99 = icmp slt i32 %96, -95
  br i1 %99, label %110, label %100

100:                                              ; preds = %98
  %101 = trunc i32 %96 to i16
  %102 = mul nsw i16 %101, 255
  %103 = add i16 %102, 24225
  %104 = udiv i16 %103, 140
  br label %110

105:                                              ; preds = %71, %48, %29
  %106 = load ptr, ptr %12, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = call i32 %106(ptr noundef %0, i32 noundef 0) #9
  br label %114

110:                                              ; preds = %100, %98, %86
  %111 = phi i16 [ %104, %100 ], [ 255, %86 ], [ 0, %98 ]
  %112 = shl nuw i16 %111, 8
  %113 = or i16 %112, %111
  store i16 %113, ptr %1, align 2
  br label %118

114:                                              ; preds = %108, %105, %84
  %115 = phi i32 [ -1, %84 ], [ -121, %105 ], [ -121, %108 ]
  %116 = load ptr, ptr %11, align 4
  %117 = getelementptr inbounds %struct.i2c_adapter, ptr %116, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fc0012_get_rf_strength, i32 noundef %115) #11
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i32 [ %115, %114 ], [ 0, %110 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
