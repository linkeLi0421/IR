; ModuleID = '/llk/IR/drivers/media/tuners/tda18218.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18218.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda18218_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda18218_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda18218_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda18218_priv = type { ptr, ptr, i32, [59 x i8] }
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
%struct.tda18218_config = type { i8, i8, i8 }

@tda18218_attach.def_regs = internal unnamed_addr constant [59 x i8] c"\C0\88\00\8E\03\00\00\D0\00@\00\00\07\FF\84\09\00\13\00\00\01\84\09\F0\19\0A\8Ei\98\01\00X\10@\8C\00\0CH\85\C9\A7\00\00\000\81\80\009\00\8A\00\00\00\00\00\00\F6\F6", align 1
@.str = private unnamed_addr constant [44 x i8] c"%s: NXP TDA18218HN successfully identified\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tda18218\00", align 1
@tda18218_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 864000000, i32 1000, i32 0, i32 0, i32 0 }, ptr @tda18218_release, ptr @tda18218_init, ptr @tda18218_sleep, ptr null, ptr null, ptr @tda18218_set_params, ptr null, ptr null, ptr null, ptr null, ptr @tda18218_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_tda18218_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda18218_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda18218_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda18218_attach to i32), ptr @__kstrtab_tda18218_attach, ptr @__kstrtabns_tda18218_attach }, section "___ksymtab+tda18218_attach", align 4
@__UNIQUE_ID_description249 = internal constant [48 x i8] c"description=NXP TDA18218HN silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: i2c rd failed=%d reg=%02x len=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", align 1
@__const.tda18218_set_params.agc = private unnamed_addr constant [14 x [2 x i8]] [[2 x i8] c" `", [2 x i8] c"#\02", [2 x i8] c" \A0", [2 x i8] c"#\09", [2 x i8] c" \E0", [2 x i8] c"#\0C", [2 x i8] c" @", [2 x i8] c"#\01", [2 x i8] c" \80", [2 x i8] c"#\08", [2 x i8] c" \C0", [2 x i8] c"#\0B", [2 x i8] c"$\1C", [2 x i8] c"$\0C"], align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_tda18218_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda18218_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [64 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca [64 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 72) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %3
  store ptr %2, ptr %10, align 8
  %13 = getelementptr inbounds %struct.tda18218_priv, ptr %10, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = tail call i32 %16(ptr noundef %0, i32 noundef 1) #9
  %20 = load ptr, ptr %10, align 8
  %21 = load ptr, ptr %13, align 4
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi ptr [ %21, %18 ], [ %1, %12 ]
  %24 = phi ptr [ %20, %18 ], [ %2, %12 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %25 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %25, i8 0, i32 16, i1 false) #9, !annotation !8
  %26 = load i8, ptr %24, align 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %8, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %25, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr @.str.2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %31 = load i8, ptr %24, align 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %35, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %8, i32 noundef 2) #9
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load ptr, ptr %13, align 4
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %36, i32 noundef 0, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  br label %44

41:                                               ; preds = %22
  %42 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  %43 = icmp eq i8 %42, -64
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38
  call void @kfree(ptr noundef nonnull %10) #9
  br label %100

45:                                               ; preds = %41
  %46 = load ptr, ptr %13, align 4
  %47 = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %48, ptr noundef nonnull align 4 dereferenceable(220) @tda18218_tuner_ops, i32 220, i1 false)
  %49 = getelementptr inbounds %struct.tda18218_priv, ptr %10, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(59) %49, ptr noundef nonnull align 1 dereferenceable(59) @tda18218_attach.def_regs, i32 59, i1 false)
  %50 = load ptr, ptr %10, align 8
  %51 = getelementptr inbounds %struct.tda18218_config, ptr %50, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = getelementptr %struct.tda18218_priv, ptr %10, i32 0, i32 3, i32 23
  store i8 -80, ptr %56, align 1
  %57 = getelementptr %struct.tda18218_priv, ptr %10, i32 0, i32 3, i32 24
  store i8 89, ptr %57, align 4
  br label %58

58:                                               ; preds = %55, %45
  %59 = phi i8 [ -79, %55 ], [ -15, %45 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %59, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %60 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %60, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %61 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %61, align 4, !annotation !8
  %62 = load i8, ptr %50, align 1
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %5, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %65, align 4
  %66 = getelementptr inbounds %struct.tda18218_config, ptr %50, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  br label %68

68:                                               ; preds = %84, %58
  %69 = phi i8 [ %67, %58 ], [ %87, %84 ]
  %70 = phi i32 [ 1, %58 ], [ %90, %84 ]
  %71 = zext i8 %69 to i32
  %72 = icmp ult i32 %70, %71
  %73 = add nsw i32 %71, -1
  %74 = select i1 %72, i32 %70, i32 %73
  %75 = trunc i32 %74 to i16
  %76 = add i16 %75, 1
  store i16 %76, ptr %61, align 4
  %77 = trunc i32 %70 to i8
  %78 = sub i8 24, %77
  store i8 %78, ptr %4, align 1
  %79 = sub nsw i32 1, %70
  %80 = getelementptr i8, ptr %6, i32 %79
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr align 1 %80, i32 %74, i1 false) #9
  %81 = load ptr, ptr %13, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %5, i32 noundef 1) #9
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %92

84:                                               ; preds = %68
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds %struct.tda18218_config, ptr %85, i32 0, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nuw i32 %70, 1
  %90 = sub i32 %89, %88
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %68, label %95

92:                                               ; preds = %68
  %93 = load ptr, ptr %13, align 4
  %94 = getelementptr inbounds %struct.i2c_adapter, ptr %93, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %82, i32 noundef 23, i32 noundef 1) #10
  br label %95

95:                                               ; preds = %92, %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %96 = load ptr, ptr %15, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = call i32 %96(ptr noundef %0, i32 noundef 0) #9
  br label %100

100:                                              ; preds = %98, %95, %44, %3
  %101 = phi ptr [ null, %44 ], [ null, %3 ], [ %0, %98 ], [ %0, %95 ]
  ret ptr %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda18218_wr_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %7 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = load ptr, ptr %0, align 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = zext i8 %1 to i32
  %15 = add nuw nsw i32 %14, 1
  %16 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  %17 = getelementptr inbounds %struct.tda18218_priv, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.tda18218_config, ptr %9, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  br label %20

20:                                               ; preds = %36, %3
  %21 = phi i8 [ %19, %3 ], [ %39, %36 ]
  %22 = phi i32 [ 1, %3 ], [ %42, %36 ]
  %23 = zext i8 %21 to i32
  %24 = icmp ult i32 %22, %23
  %25 = add nsw i32 %23, -1
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = trunc i32 %26 to i16
  %28 = add i16 %27, 1
  store i16 %28, ptr %8, align 4
  %29 = sub i32 %15, %22
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %4, align 1
  %31 = sub nsw i32 1, %22
  %32 = getelementptr i8, ptr %6, i32 %31
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %32, i32 %26, i1 false) #9
  %33 = load ptr, ptr %17, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %5, i32 noundef 1) #9
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.tda18218_config, ptr %37, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nuw i32 %22, 1
  %42 = sub i32 %41, %40
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %20, label %47

44:                                               ; preds = %20
  %45 = load ptr, ptr %17, align 4
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %34, i32 noundef %14, i32 noundef 1) #10
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi i32 [ -121, %44 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda18218_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18218_init(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 1) #9
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.tda18218_priv, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  %13 = getelementptr inbounds i8, ptr %2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %13, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %14 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %14, align 4, !annotation !8
  %15 = load ptr, ptr %5, align 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %3, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.tda18218_priv, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.tda18218_config, ptr %15, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  br label %24

24:                                               ; preds = %39, %11
  %25 = phi i8 [ %23, %11 ], [ %42, %39 ]
  %26 = phi i32 [ 59, %11 ], [ %45, %39 ]
  %27 = zext i8 %25 to i32
  %28 = icmp ult i32 %26, %27
  %29 = add nsw i32 %27, -1
  %30 = select i1 %28, i32 %26, i32 %29
  %31 = trunc i32 %30 to i16
  %32 = add i16 %31, 1
  store i16 %32, ptr %14, align 4
  %33 = sub nsw i32 59, %26
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %2, align 1
  %35 = getelementptr i8, ptr %12, i32 %33
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr align 1 %35, i32 %30, i1 false) #9
  %36 = load ptr, ptr %21, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #9
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %24
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.tda18218_config, ptr %40, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nuw i32 %26, 1
  %45 = sub i32 %44, %43
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %24, label %50

47:                                               ; preds = %24
  %48 = load ptr, ptr %21, align 4
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %37, i32 noundef 0, i32 noundef 59) #10
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi i32 [ -121, %47 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  %52 = load ptr, ptr %6, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 %52(ptr noundef %0, i32 noundef 0) #9
  br label %56

56:                                               ; preds = %54, %50
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18218_sleep(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef 1) #9
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr %struct.tda18218_priv, ptr %6, i32 0, i32 3, i32 23
  %14 = load i8, ptr %13, align 1
  %15 = or i8 %14, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %15, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  %16 = getelementptr inbounds i8, ptr %2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %16, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %17 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %17, align 4, !annotation !8
  %18 = load ptr, ptr %6, align 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tda18218_priv, ptr %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.tda18218_config, ptr %18, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  br label %26

26:                                               ; preds = %42, %12
  %27 = phi i8 [ %25, %12 ], [ %45, %42 ]
  %28 = phi i32 [ 1, %12 ], [ %48, %42 ]
  %29 = zext i8 %27 to i32
  %30 = icmp ult i32 %28, %29
  %31 = add nsw i32 %29, -1
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = trunc i32 %32 to i16
  %34 = add i16 %33, 1
  store i16 %34, ptr %17, align 4
  %35 = trunc i32 %28 to i8
  %36 = sub i8 24, %35
  store i8 %36, ptr %2, align 1
  %37 = sub nsw i32 1, %28
  %38 = getelementptr i8, ptr %4, i32 %37
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr align 1 %38, i32 %32, i1 false) #9
  %39 = load ptr, ptr %23, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %3, i32 noundef 1) #9
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %50

42:                                               ; preds = %26
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr inbounds %struct.tda18218_config, ptr %43, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nuw i32 %28, 1
  %48 = sub i32 %47, %46
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %26, label %53

50:                                               ; preds = %26
  %51 = load ptr, ptr %23, align 4
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %40, i32 noundef 23, i32 noundef 1) #10
  br label %53

53:                                               ; preds = %50, %42
  %54 = phi i32 [ -121, %50 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %55 = load ptr, ptr %7, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = call i32 %55(ptr noundef %0, i32 noundef 0) #9
  br label %59

59:                                               ; preds = %57, %53
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18218_set_params(ptr noundef %0) #0 {
  %2 = alloca [64 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [64 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [64 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [3 x i8], align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #9
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = tail call i32 %17(ptr noundef %0, i32 noundef 1) #9
  br label %21

21:                                               ; preds = %19, %1
  %22 = icmp ult i32 %15, 6000001
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.tda18218_priv, ptr %12, i32 0, i32 2
  store i32 3000000, ptr %24, align 4
  br label %30

25:                                               ; preds = %21
  %26 = icmp ult i32 %15, 7000001
  %27 = getelementptr inbounds %struct.tda18218_priv, ptr %12, i32 0, i32 2
  br i1 %26, label %28, label %29

28:                                               ; preds = %25
  store i32 3500000, ptr %27, align 4
  br label %30

29:                                               ; preds = %25
  store i32 4000000, ptr %27, align 4
  br label %30

30:                                               ; preds = %29, %28, %23
  %31 = phi i32 [ 3000000, %23 ], [ 3500000, %28 ], [ 4000000, %29 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %28 ], [ 2, %29 ]
  %33 = load i32, ptr %13, align 4
  %34 = add i32 %31, %33
  %35 = icmp ult i32 %34, 188000000
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = icmp ult i32 %34, 253000000
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = icmp ult i32 %34, 343000000
  %40 = select i1 %39, i8 5, i8 6
  br label %41

41:                                               ; preds = %38, %36, %30
  %42 = phi i8 [ 3, %30 ], [ 4, %36 ], [ %40, %38 ]
  %43 = getelementptr %struct.tda18218_priv, ptr %12, i32 0, i32 3, i32 26
  %44 = load i8, ptr %43, align 2
  %45 = and i8 %44, -8
  %46 = or i8 %45, %42
  store i8 %46, ptr %10, align 1
  %47 = getelementptr %struct.tda18218_priv, ptr %12, i32 0, i32 3, i32 27
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, -4
  %50 = or i8 %49, %32
  %51 = getelementptr inbounds [3 x i8], ptr %10, i32 0, i32 1
  store i8 %50, ptr %51, align 1
  %52 = getelementptr %struct.tda18218_priv, ptr %12, i32 0, i32 3, i32 28
  %53 = load i8, ptr %52, align 4
  %54 = getelementptr inbounds [3 x i8], ptr %10, i32 0, i32 2
  store i8 %53, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %55 = getelementptr inbounds i8, ptr %8, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %55, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %56 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 0, ptr %56, align 4, !annotation !8
  %57 = load ptr, ptr %12, align 4
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %9, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %61, align 4
  %62 = getelementptr inbounds [64 x i8], ptr %8, i32 0, i32 1
  %63 = getelementptr inbounds %struct.tda18218_priv, ptr %12, i32 0, i32 1
  %64 = getelementptr inbounds %struct.tda18218_config, ptr %57, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  br label %66

66:                                               ; preds = %82, %41
  %67 = phi i8 [ %65, %41 ], [ %85, %82 ]
  %68 = phi i32 [ 3, %41 ], [ %88, %82 ]
  %69 = zext i8 %67 to i32
  %70 = icmp ult i32 %68, %69
  %71 = add nsw i32 %69, -1
  %72 = select i1 %70, i32 %68, i32 %71
  %73 = trunc i32 %72 to i16
  %74 = add i16 %73, 1
  store i16 %74, ptr %56, align 4
  %75 = trunc i32 %68 to i8
  %76 = sub i8 29, %75
  store i8 %76, ptr %8, align 1
  %77 = sub nsw i32 3, %68
  %78 = getelementptr i8, ptr %10, i32 %77
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %62, ptr align 1 %78, i32 %72, i1 false) #9
  %79 = load ptr, ptr %63, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %9, i32 noundef 1) #9
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %66
  %83 = load ptr, ptr %12, align 4
  %84 = getelementptr inbounds %struct.tda18218_config, ptr %83, i32 0, i32 1
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = add nuw i32 %68, 1
  %88 = sub i32 %87, %86
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %66, label %93

90:                                               ; preds = %66
  %91 = load ptr, ptr %63, align 4
  %92 = getelementptr inbounds %struct.i2c_adapter, ptr %91, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %80, i32 noundef 26, i32 noundef 3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  br label %235

93:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  %94 = udiv i32 %34, 1000
  %95 = lshr i32 %94, 12
  %96 = trunc i32 %95 to i8
  store i8 %96, ptr %10, align 1
  %97 = lshr i32 %94, 4
  %98 = trunc i32 %97 to i8
  store i8 %98, ptr %51, align 1
  %99 = getelementptr %struct.tda18218_priv, ptr %12, i32 0, i32 3, i32 12
  %100 = load i8, ptr %99, align 4
  %101 = and i8 %100, 15
  %102 = trunc i32 %94 to i8
  %103 = shl i8 %102, 4
  %104 = or i8 %101, %103
  store i8 %104, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %105 = getelementptr inbounds i8, ptr %6, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %105, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %106 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %106, align 4, !annotation !8
  %107 = load ptr, ptr %12, align 4
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %7, align 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %110, align 2
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %111, align 4
  %112 = getelementptr inbounds [64 x i8], ptr %6, i32 0, i32 1
  %113 = getelementptr inbounds %struct.tda18218_config, ptr %107, i32 0, i32 1
  %114 = load i8, ptr %113, align 1
  br label %115

115:                                              ; preds = %131, %93
  %116 = phi i8 [ %114, %93 ], [ %134, %131 ]
  %117 = phi i32 [ 3, %93 ], [ %137, %131 ]
  %118 = zext i8 %116 to i32
  %119 = icmp ult i32 %117, %118
  %120 = add nsw i32 %118, -1
  %121 = select i1 %119, i32 %117, i32 %120
  %122 = trunc i32 %121 to i16
  %123 = add i16 %122, 1
  store i16 %123, ptr %106, align 4
  %124 = trunc i32 %117 to i8
  %125 = sub i8 13, %124
  store i8 %125, ptr %6, align 1
  %126 = sub nsw i32 3, %117
  %127 = getelementptr i8, ptr %10, i32 %126
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %112, ptr align 1 %127, i32 %121, i1 false) #9
  %128 = load ptr, ptr %63, align 4
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %7, i32 noundef 1) #9
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %139

131:                                              ; preds = %115
  %132 = load ptr, ptr %12, align 4
  %133 = getelementptr inbounds %struct.tda18218_config, ptr %132, i32 0, i32 1
  %134 = load i8, ptr %133, align 1
  %135 = zext i8 %134 to i32
  %136 = add nuw i32 %117, 1
  %137 = sub i32 %136, %135
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %115, label %142

139:                                              ; preds = %115
  %140 = load ptr, ptr %63, align 4
  %141 = getelementptr inbounds %struct.i2c_adapter, ptr %140, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %141, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %129, i32 noundef 10, i32 noundef 3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  br label %235

142:                                              ; preds = %131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  %143 = getelementptr %struct.tda18218_priv, ptr %12, i32 0, i32 3, i32 15
  %144 = load i8, ptr %143, align 1
  %145 = or i8 %144, 64
  store i8 %145, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %146 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %146, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %147 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %147, align 4, !annotation !8
  %148 = load ptr, ptr %12, align 4
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %5, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %151, align 2
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %152, align 4
  %153 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 1
  %154 = getelementptr inbounds %struct.tda18218_config, ptr %148, i32 0, i32 1
  %155 = load i8, ptr %154, align 1
  br label %156

156:                                              ; preds = %172, %142
  %157 = phi i8 [ %155, %142 ], [ %175, %172 ]
  %158 = phi i32 [ 1, %142 ], [ %178, %172 ]
  %159 = zext i8 %157 to i32
  %160 = icmp ult i32 %158, %159
  %161 = add nsw i32 %159, -1
  %162 = select i1 %160, i32 %158, i32 %161
  %163 = trunc i32 %162 to i16
  %164 = add i16 %163, 1
  store i16 %164, ptr %147, align 4
  %165 = trunc i32 %158 to i8
  %166 = sub i8 16, %165
  store i8 %166, ptr %4, align 1
  %167 = sub nsw i32 1, %158
  %168 = getelementptr i8, ptr %10, i32 %167
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %153, ptr align 1 %168, i32 %162, i1 false) #9
  %169 = load ptr, ptr %63, align 4
  %170 = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %5, i32 noundef 1) #9
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %180

172:                                              ; preds = %156
  %173 = load ptr, ptr %12, align 4
  %174 = getelementptr inbounds %struct.tda18218_config, ptr %173, i32 0, i32 1
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add nuw i32 %158, 1
  %178 = sub i32 %177, %176
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %156, label %183

180:                                              ; preds = %156
  %181 = load ptr, ptr %63, align 4
  %182 = getelementptr inbounds %struct.i2c_adapter, ptr %181, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %182, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %170, i32 noundef 15, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  br label %235

183:                                              ; preds = %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  %184 = load i8, ptr %143, align 1
  %185 = and i8 %184, -65
  store i8 %185, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  %186 = getelementptr inbounds i8, ptr %2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %186, i8 0, i32 63, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %187 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %187, align 4, !annotation !8
  %188 = load ptr, ptr %12, align 4
  %189 = load i8, ptr %188, align 1
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %3, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %191, align 2
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %192, align 4
  %193 = getelementptr inbounds [64 x i8], ptr %2, i32 0, i32 1
  %194 = getelementptr inbounds %struct.tda18218_config, ptr %188, i32 0, i32 1
  %195 = load i8, ptr %194, align 1
  br label %196

196:                                              ; preds = %212, %183
  %197 = phi i8 [ %195, %183 ], [ %215, %212 ]
  %198 = phi i32 [ 1, %183 ], [ %218, %212 ]
  %199 = zext i8 %197 to i32
  %200 = icmp ult i32 %198, %199
  %201 = add nsw i32 %199, -1
  %202 = select i1 %200, i32 %198, i32 %201
  %203 = trunc i32 %202 to i16
  %204 = add i16 %203, 1
  store i16 %204, ptr %187, align 4
  %205 = trunc i32 %198 to i8
  %206 = sub i8 16, %205
  store i8 %206, ptr %2, align 1
  %207 = sub nsw i32 1, %198
  %208 = getelementptr i8, ptr %10, i32 %207
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %193, ptr align 1 %208, i32 %202, i1 false) #9
  %209 = load ptr, ptr %63, align 4
  %210 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %3, i32 noundef 1) #9
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %220

212:                                              ; preds = %196
  %213 = load ptr, ptr %12, align 4
  %214 = getelementptr inbounds %struct.tda18218_config, ptr %213, i32 0, i32 1
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = add nuw i32 %198, 1
  %218 = sub i32 %217, %216
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %196, label %223

220:                                              ; preds = %196
  %221 = load ptr, ptr %63, align 4
  %222 = getelementptr inbounds %struct.i2c_adapter, ptr %221, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %222, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %210, i32 noundef 15, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %235

223:                                              ; preds = %212
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  br label %227

224:                                              ; preds = %227
  %225 = add nuw nsw i32 %228, 1
  %226 = icmp eq i32 %225, 14
  br i1 %226, label %235, label %227

227:                                              ; preds = %224, %223
  %228 = phi i32 [ 0, %223 ], [ %225, %224 ]
  %229 = getelementptr [14 x [2 x i8]], ptr @__const.tda18218_set_params.agc, i32 0, i32 %228
  %230 = load i8, ptr %229, align 1
  %231 = getelementptr [14 x [2 x i8]], ptr @__const.tda18218_set_params.agc, i32 0, i32 %228, i32 1
  %232 = load i8, ptr %231, align 1
  %233 = call fastcc i32 @tda18218_wr_reg(ptr noundef %12, i8 noundef zeroext %230, i8 noundef zeroext %232)
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %224, label %235

235:                                              ; preds = %227, %224, %220, %180, %139, %90
  %236 = phi i32 [ -121, %90 ], [ -121, %139 ], [ -121, %180 ], [ -121, %220 ], [ 0, %224 ], [ %233, %227 ]
  %237 = load ptr, ptr %16, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = call i32 %237(ptr noundef %0, i32 noundef 0) #9
  br label %241

241:                                              ; preds = %239, %235
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #9
  ret i32 %236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda18218_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda18218_priv, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
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
