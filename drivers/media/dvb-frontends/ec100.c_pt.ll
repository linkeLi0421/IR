; ModuleID = '/llk/IR/drivers/media/dvb-frontends/ec100.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ec100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ec100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ec100_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ec100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ec100_state = type { ptr, %struct.dvb_frontend, %struct.ec100_config, i16 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.ec100_config = type { i8 }
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
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@ec100_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"E3C EC100 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2145702226 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @ec100_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ec100_set_frontend, ptr @ec100_get_tune_settings, ptr null, ptr @ec100_read_status, ptr @ec100_read_ber, ptr @ec100_read_signal_strength, ptr @ec100_read_snr, ptr @ec100_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_ec100_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ec100_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ec100_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ec100_attach to i32), ptr @__kstrtab_ec100_attach, ptr @__kstrtabns_ec100_attach }, section "___ksymtab+ec100_attach", align 4
@__UNIQUE_ID_author249 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [47 x i8] c"description=E3C EC100 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: i2c rd failed=%d reg=%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ec100\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: i2c wr failed=%d reg=%02x\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_ec100_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ec100_attach(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1048) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  store ptr %1, ptr %7, align 8
  %10 = getelementptr inbounds %struct.ec100_state, ptr %7, i32 0, i32 2
  %11 = load i8, ptr %0, align 1
  store i8 %11, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 51, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #8, !annotation !8
  %13 = zext i8 %11 to i16
  store i16 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %12, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %19, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %33

26:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %27 = load i8, ptr %5, align 1
  %28 = icmp eq i8 %27, 11
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ec100_state, ptr %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ec100_state, ptr %7, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %31, ptr noundef nonnull align 4 dereferenceable(544) @ec100_ops, i32 544, i1 false)
  %32 = getelementptr inbounds %struct.ec100_state, ptr %7, i32 0, i32 1, i32 3
  store ptr %7, ptr %32, align 4
  br label %34

33:                                               ; preds = %26, %22, %2
  call void @kfree(ptr noundef %7) #8
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi ptr [ null, %33 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec100_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec100_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 %13(ptr noundef %0) #8
  br label %17

17:                                               ; preds = %15, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i8 4, ptr %8, align 2
  %18 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 6, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %19 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %19, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.ec100_state, ptr %11, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %9, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %24, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %9, i32 noundef 1) #8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %26, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  br label %95

31:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i8 103, ptr %6, align 2
  %32 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 88, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %33 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %33, align 4, !annotation !8
  %34 = load i8, ptr %20, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %7, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %37, align 4
  %38 = load ptr, ptr %11, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %7, i32 noundef 1) #8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load ptr, ptr %11, align 4
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %39, i32 noundef 103) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  br label %95

44:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 5, ptr %4, align 2
  %45 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 24, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %46 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load i8, ptr %20, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %5, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %50, align 4
  %51 = load ptr, ptr %11, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %5, i32 noundef 1) #8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %95

57:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %61 [
    i32 6000000, label %62
    i32 7000000, label %60
  ]

60:                                               ; preds = %57
  br label %62

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %60, %57
  %63 = phi i8 [ 73, %61 ], [ 0, %60 ], [ -73, %57 ]
  %64 = phi i8 [ 114, %61 ], [ 100, %60 ], [ 85, %57 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 27, ptr %2, align 2
  %65 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %63, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %66 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %66, align 4, !annotation !8
  %67 = load i8, ptr %20, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %3, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %70, align 4
  %71 = load ptr, ptr %11, align 4
  %72 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %3, i32 noundef 1) #8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load ptr, ptr %11, align 4
  %76 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %72, i32 noundef 27) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %95

77:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %78 = call fastcc i32 @ec100_write_reg(ptr noundef %11, i8 noundef zeroext 28, i8 noundef zeroext %64)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = call fastcc i32 @ec100_write_reg(ptr noundef %11, i8 noundef zeroext 12, i8 noundef zeroext -69)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = call fastcc i32 @ec100_write_reg(ptr noundef %11, i8 noundef zeroext 13, i8 noundef zeroext 49)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = call fastcc i32 @ec100_write_reg(ptr noundef %11, i8 noundef zeroext 8, i8 noundef zeroext 36)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = call fastcc i32 @ec100_write_reg(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = call fastcc i32 @ec100_write_reg(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 32)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92, %89, %86, %83, %80, %77, %74, %54, %41, %28
  %96 = phi i32 [ -121, %28 ], [ -121, %41 ], [ -121, %54 ], [ -121, %74 ], [ %78, %77 ], [ %81, %80 ], [ %84, %83 ], [ %87, %86 ], [ %90, %89 ], [ %93, %92 ]
  br label %97

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %96, %95 ], [ 0, %92 ]
  ret i32 %98
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ec100_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 300, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec100_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !8
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 66, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #8, !annotation !8
  %11 = getelementptr inbounds %struct.ec100_state, ptr %9, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %10, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %19, align 4
  %20 = load ptr, ptr %9, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 2) #8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9
  %26 = load i8, ptr %5, align 1
  %27 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef %27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %63

28:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %29 = load i8, ptr %7, align 1
  %30 = icmp sgt i8 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %1, align 4
  %33 = or i32 %32, 31
  store i32 %33, ptr %1, align 4
  br label %63

34:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %35 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #8, !annotation !8
  %36 = load i8, ptr %11, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %4, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 1, ptr %35, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %37, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %7, ptr %43, align 4
  %44 = load ptr, ptr %9, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %4, i32 noundef 2) #8
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %52, label %47

47:                                               ; preds = %34
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 9
  %50 = load i8, ptr %3, align 1
  %51 = zext i8 %50 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %45, i32 noundef %51) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %63

52:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %53 = load i8, ptr %7, align 1
  %54 = and i8 %53, 16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %1, align 4
  %58 = or i32 %57, 1
  store i32 %58, ptr %1, align 4
  %59 = and i8 %53, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = or i32 %57, 7
  store i32 %62, ptr %1, align 4
  br label %63

63:                                               ; preds = %61, %56, %52, %47, %31, %23
  %64 = phi i32 [ 0, %52 ], [ 0, %61 ], [ 0, %56 ], [ 0, %31 ], [ -121, %23 ], [ -121, %47 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec100_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1, !annotation !8
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 101, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #8, !annotation !8
  %12 = getelementptr inbounds %struct.ec100_state, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %11, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %7, ptr %20, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 2) #8
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %27 = load i8, ptr %5, align 1
  %28 = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %22, i32 noundef %28) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %61

29:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 102, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %30 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #8, !annotation !8
  %31 = load i8, ptr %12, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %4, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %33, align 2
  store i16 1, ptr %30, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %8, ptr %38, align 4
  %39 = load ptr, ptr %10, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 2) #8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load ptr, ptr %10, align 4
  %44 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  %45 = load i8, ptr %3, align 1
  %46 = zext i8 %45 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %40, i32 noundef %46) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %61

47:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %48 = load i8, ptr %8, align 1
  %49 = zext i8 %48 to i16
  %50 = shl nuw i16 %49, 8
  %51 = load i8, ptr %7, align 1
  %52 = zext i8 %51 to i16
  %53 = or i16 %50, %52
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.ec100_state, ptr %10, i32 0, i32 3
  %56 = load i16, ptr %55, align 2
  %57 = icmp ult i16 %53, %56
  %58 = select i1 %57, i16 0, i16 %56
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %54, %59
  store i32 %60, ptr %1, align 4
  store i16 %53, ptr %55, align 2
  br label %61

61:                                               ; preds = %47, %42, %24
  %62 = phi i32 [ 0, %47 ], [ -121, %24 ], [ -121, %42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ec100_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 36, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #8, !annotation !8
  %9 = getelementptr inbounds %struct.ec100_state, ptr %7, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 1, ptr %8, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %17, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 2) #8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %32

26:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %27 = load i8, ptr %5, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %29, %28
  %31 = trunc i32 %30 to i16
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i32 [ 0, %26 ], [ -121, %21 ]
  %34 = phi i16 [ %31, %26 ], [ 0, %21 ]
  store i16 %34, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ec100_read_snr(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i16 0, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ec100_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ec100_write_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [1 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 %1, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.ec100_state, ptr %0, i32 0, i32 2
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
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %5, i32 noundef 1) #8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %20 = zext i8 %1 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %15, i32 noundef %20) #10
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i32 [ -121, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %22
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
