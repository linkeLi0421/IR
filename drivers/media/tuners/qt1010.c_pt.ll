; ModuleID = '/llk/IR/drivers/media/tuners/qt1010.c_pt.bc'
source_filename = "../drivers/media/tuners/qt1010.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qt1010_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22qt1010_attach\22\09\09\09\09\09"
module asm "__kstrtabns_qt1010_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qt1010_i2c_oper_t = type { i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.qt1010_priv = type { ptr, ptr, i8, i8, i8, i32 }
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

@.str = private unnamed_addr constant [44 x i8] c"%s: Quantek QT1010 successfully identified\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"qt1010\00", align 1
@qt1010_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Quantek QT1010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 860000000, i32 125000, i32 0, i32 0, i32 0 }, ptr @qt1010_release, ptr @qt1010_init, ptr null, ptr null, ptr null, ptr @qt1010_set_params, ptr null, ptr null, ptr @qt1010_get_frequency, ptr null, ptr @qt1010_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_qt1010_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_qt1010_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_qt1010_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qt1010_attach to i32), ptr @__kstrtab_qt1010_attach, ptr @__kstrtabns_qt1010_attach }, section "___ksymtab+qt1010_attach", align 4
@__UNIQUE_ID_description249 = internal constant [48 x i8] c"description=Quantek QT1010 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [41 x i8] c"author=Aapo Tahkola <aet@rasterburn.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_version252 = internal constant [12 x i8] c"version=0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: i2c rd failed reg=%02x\0A\00", align 1
@qt1010_init.i2c_data = internal unnamed_addr constant [34 x %struct.qt1010_i2c_oper_t] [%struct.qt1010_i2c_oper_t { i8 0, i8 1, i8 -128 }, %struct.qt1010_i2c_oper_t { i8 0, i8 13, i8 -124 }, %struct.qt1010_i2c_oper_t { i8 0, i8 14, i8 -73 }, %struct.qt1010_i2c_oper_t { i8 0, i8 42, i8 35 }, %struct.qt1010_i2c_oper_t { i8 0, i8 44, i8 -36 }, %struct.qt1010_i2c_oper_t { i8 3, i8 37, i8 64 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -127, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 43, i8 112 }, %struct.qt1010_i2c_oper_t { i8 0, i8 42, i8 35 }, %struct.qt1010_i2c_oper_t { i8 3, i8 38, i8 8 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -126, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 20 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 68 }, %struct.qt1010_i2c_oper_t { i8 0, i8 7, i8 40 }, %struct.qt1010_i2c_oper_t { i8 0, i8 8, i8 11 }, %struct.qt1010_i2c_oper_t { i8 0, i8 17, i8 -3 }, %struct.qt1010_i2c_oper_t { i8 3, i8 34, i8 13 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -48, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 64 }, %struct.qt1010_i2c_oper_t { i8 0, i8 22, i8 -16 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 56 }, %struct.qt1010_i2c_oper_t { i8 0, i8 3, i8 24 }, %struct.qt1010_i2c_oper_t { i8 0, i8 32, i8 -32 }, %struct.qt1010_i2c_oper_t { i8 3, i8 31, i8 32 }, %struct.qt1010_i2c_oper_t { i8 3, i8 -124, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 1, i8 32, i8 32 }, %struct.qt1010_i2c_oper_t { i8 0, i8 3, i8 25 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 63 }, %struct.qt1010_i2c_oper_t { i8 0, i8 33, i8 83 }, %struct.qt1010_i2c_oper_t { i8 1, i8 33, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 17, i8 -3 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 52 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 68 }, %struct.qt1010_i2c_oper_t { i8 0, i8 8, i8 8 }], align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: i2c wr failed reg=%02x\0A\00", align 1
@__const.qt1010_set_params.rd = private unnamed_addr constant [48 x %struct.qt1010_i2c_oper_t] [%struct.qt1010_i2c_oper_t { i8 0, i8 1, i8 -128 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 63 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 68 }, %struct.qt1010_i2c_oper_t { i8 0, i8 7, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 8, i8 8 }, %struct.qt1010_i2c_oper_t { i8 0, i8 9, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 10, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 11, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 12, i8 -31 }, %struct.qt1010_i2c_oper_t { i8 0, i8 26, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 27, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 28, i8 -119 }, %struct.qt1010_i2c_oper_t { i8 0, i8 17, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 18, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 34, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 -48 }, %struct.qt1010_i2c_oper_t { i8 1, i8 34, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 1, i8 5, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 1, i8 34, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 35, i8 -48 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 -32 }, %struct.qt1010_i2c_oper_t { i8 1, i8 35, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 1, i8 35, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 36, i8 -48 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 -16 }, %struct.qt1010_i2c_oper_t { i8 1, i8 36, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 30, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 20, i8 127 }, %struct.qt1010_i2c_oper_t { i8 0, i8 21, i8 127 }, %struct.qt1010_i2c_oper_t { i8 0, i8 5, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 6, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 21, i8 31 }, %struct.qt1010_i2c_oper_t { i8 0, i8 22, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 24, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 31, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 32, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 33, i8 83 }, %struct.qt1010_i2c_oper_t { i8 0, i8 37, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 38, i8 21 }, %struct.qt1010_i2c_oper_t { i8 0, i8 0, i8 -1 }, %struct.qt1010_i2c_oper_t { i8 0, i8 2, i8 0 }, %struct.qt1010_i2c_oper_t { i8 0, i8 1, i8 0 }], align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_version252, ptr @__ksymtab_qt1010_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @qt1010_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %3
  store ptr %2, ptr %8, align 8
  %11 = getelementptr inbounds %struct.qt1010_priv, ptr %8, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 %13(ptr noundef %0, i32 noundef 1) #9
  br label %17

17:                                               ; preds = %15, %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 41, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %18 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %18, i8 0, i32 16, i1 false) #9, !annotation !8
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %5, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 1, ptr %18, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %6, ptr %26, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #9
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %31 = load i8, ptr %4, align 1
  %32 = zext i8 %31 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %32) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %36

33:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %34 = load i8, ptr %6, align 1
  %35 = icmp eq i8 %34, 57
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %29
  call void @kfree(ptr noundef nonnull %8) #9
  br label %46

37:                                               ; preds = %33
  %38 = load ptr, ptr %12, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 %38(ptr noundef %0, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %40, %37
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %44, ptr noundef nonnull align 4 dereferenceable(220) @qt1010_tuner_ops, i32 220, i1 false)
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %8, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %36, %3
  %47 = phi ptr [ null, %36 ], [ %0, %42 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  ret ptr %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qt1010_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qt1010_init(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca [7 x %struct.qt1010_i2c_oper_t], align 1
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca i8, align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i8, align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca [2 x %struct.i2c_msg], align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca i8, align 1
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #9
  store i8 0, ptr %21, align 1, !annotation !8
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = tail call i32 %26(ptr noundef %0, i32 noundef 1) #9
  br label %30

30:                                               ; preds = %28, %1
  %31 = getelementptr inbounds i8, ptr %14, i32 1
  %32 = getelementptr inbounds i8, ptr %15, i32 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %35 = getelementptr inbounds %struct.qt1010_priv, ptr %23, i32 0, i32 1
  %36 = getelementptr inbounds i8, ptr %13, i32 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  %43 = getelementptr inbounds i8, ptr %11, i32 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  %50 = getelementptr inbounds i8, ptr %8, i32 1
  %51 = getelementptr inbounds i8, ptr %9, i32 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %54 = getelementptr inbounds %struct.qt1010_priv, ptr %23, i32 0, i32 3
  %55 = getelementptr inbounds i8, ptr %18, i32 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 1
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 3
  %62 = getelementptr inbounds i8, ptr %19, i32 1
  %63 = getelementptr inbounds i8, ptr %20, i32 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  br label %98

66:                                               ; preds = %230
  %67 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 0, i32 1
  %68 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 0, i32 2
  %69 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 1
  %70 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 1, i32 1
  %71 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 1, i32 2
  %72 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 2
  %73 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 2, i32 1
  %74 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 2, i32 2
  %75 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 3
  %76 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 3, i32 1
  %77 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 3, i32 2
  %78 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 4
  %79 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 4, i32 1
  %80 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 4, i32 2
  %81 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 5
  %82 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 5, i32 1
  %83 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 5, i32 2
  %84 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 6
  %85 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 6, i32 1
  %86 = getelementptr inbounds %struct.qt1010_i2c_oper_t, ptr %7, i32 6, i32 2
  %87 = getelementptr inbounds i8, ptr %3, i32 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  %94 = getelementptr inbounds i8, ptr %4, i32 1
  %95 = getelementptr inbounds i8, ptr %5, i32 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %235

98:                                               ; preds = %230, %30
  %99 = phi i32 [ 0, %30 ], [ %233, %230 ]
  %100 = phi i8 [ 0, %30 ], [ %232, %230 ]
  %101 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %99
  %102 = load i8, ptr %101, align 1
  switch i8 %102, label %230 [
    i8 0, label %103
    i8 1, label %120
    i8 3, label %141
  ]

103:                                              ; preds = %98
  %104 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %99, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %99, i32 2
  %107 = load i8, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #9
  store i8 %105, ptr %19, align 2
  store i8 %107, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #9
  store i32 0, ptr %63, align 4, !annotation !8
  %108 = load ptr, ptr %23, align 4
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %20, align 4
  store i16 0, ptr %64, align 2
  store i16 2, ptr %63, align 4
  store ptr %19, ptr %65, align 4
  %111 = load ptr, ptr %35, align 4
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %20, i32 noundef 1) #9
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %118, label %114

114:                                              ; preds = %103
  %115 = load ptr, ptr %35, align 4
  %116 = getelementptr inbounds %struct.i2c_adapter, ptr %115, i32 0, i32 9
  %117 = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %117) #11
  br label %118

118:                                              ; preds = %114, %103
  %119 = phi i32 [ -121, %114 ], [ 0, %103 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #9
  br label %226

120:                                              ; preds = %98
  switch i8 %100, label %122 [
    i8 25, label %121
    i8 23, label %121
  ]

121:                                              ; preds = %120, %120
  br label %122

122:                                              ; preds = %121, %120
  %123 = phi ptr [ %54, %121 ], [ %21, %120 ]
  %124 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %99, i32 1
  %125 = load i8, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17)
  store i8 %125, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %55, i8 0, i32 16, i1 false) #9, !annotation !8
  %126 = load ptr, ptr %23, align 4
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %18, align 4
  store i16 0, ptr %56, align 2
  store i16 1, ptr %55, align 4
  store ptr %17, ptr %57, align 4
  %129 = load i8, ptr %126, align 1
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %58, align 4
  store i16 1, ptr %59, align 2
  store i16 1, ptr %60, align 4
  store ptr %123, ptr %61, align 4
  %131 = load ptr, ptr %35, align 4
  %132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %18, i32 noundef 2) #9
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %139, label %134

134:                                              ; preds = %122
  %135 = load ptr, ptr %35, align 4
  %136 = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 9
  %137 = load i8, ptr %17, align 1
  %138 = zext i8 %137 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %136, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %138) #11
  br label %139

139:                                              ; preds = %134, %122
  %140 = phi i32 [ -121, %134 ], [ 0, %122 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17)
  br label %226

141:                                              ; preds = %98
  %142 = icmp ugt i8 %100, 32
  br i1 %142, label %143, label %144, !prof !9

143:                                              ; preds = %141
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/qt1010.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 348, 0\0A.popsection", ""() #9, !srcloc !10
  unreachable

144:                                              ; preds = %141
  %145 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %99, i32 2
  %146 = add nuw nsw i32 %99, 1
  %147 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %146, i32 1
  %148 = load i8, ptr %147, align 1
  %149 = getelementptr [34 x %struct.qt1010_i2c_oper_t], ptr @qt1010_init.i2c_data, i32 0, i32 %99, i32 1
  %150 = load i8, ptr %149, align 1
  %151 = load i8, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #9
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 %150, ptr %14, align 2
  store i8 %151, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 2, ptr %32, align 4, !annotation !8
  %152 = load ptr, ptr %23, align 4
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %15, align 4
  store i16 0, ptr %33, align 2
  store ptr %14, ptr %34, align 4
  %155 = load ptr, ptr %35, align 4
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %15, i32 noundef 1) #9
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %163, label %158

158:                                              ; preds = %170, %163, %144
  %159 = phi i8 [ %150, %144 ], [ 30, %163 ], [ 30, %170 ]
  %160 = load ptr, ptr %35, align 4
  %161 = getelementptr inbounds %struct.i2c_adapter, ptr %160, i32 0, i32 9
  %162 = zext i8 %159 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %162) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  br label %223

163:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 30, ptr %14, align 2
  store i8 0, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %32, align 4, !annotation !8
  %164 = load ptr, ptr %23, align 4
  %165 = load i8, ptr %164, align 1
  %166 = zext i8 %165 to i16
  store i16 %166, ptr %15, align 4
  store i16 0, ptr %33, align 2
  store i16 2, ptr %32, align 4
  store ptr %14, ptr %34, align 4
  %167 = load ptr, ptr %35, align 4
  %168 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %15, i32 noundef 1) #9
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %158

170:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 30, ptr %14, align 2
  store i8 %148, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i32 0, ptr %32, align 4, !annotation !8
  %171 = load ptr, ptr %23, align 4
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %15, align 4
  store i16 0, ptr %33, align 2
  store i16 2, ptr %32, align 4
  store ptr %14, ptr %34, align 4
  %174 = load ptr, ptr %35, align 4
  %175 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %15, i32 noundef 1) #9
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %158

177:                                              ; preds = %170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 %150, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #9, !annotation !8
  %178 = load ptr, ptr %23, align 4
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %13, align 4
  store i16 0, ptr %37, align 2
  store i16 1, ptr %36, align 4
  store ptr %12, ptr %38, align 4
  %181 = load i8, ptr %178, align 1
  %182 = zext i8 %181 to i16
  store i16 %182, ptr %39, align 4
  store i16 1, ptr %40, align 2
  store i16 1, ptr %41, align 4
  store ptr %16, ptr %42, align 4
  %183 = load ptr, ptr %35, align 4
  %184 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %13, i32 noundef 2) #9
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %191, label %186

186:                                              ; preds = %177
  %187 = load ptr, ptr %35, align 4
  %188 = getelementptr inbounds %struct.i2c_adapter, ptr %187, i32 0, i32 9
  %189 = load i8, ptr %12, align 1
  %190 = zext i8 %189 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %188, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %190) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  br label %223

191:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  %192 = load i8, ptr %16, align 1
  br label %193

193:                                              ; preds = %208, %191
  %194 = phi i8 [ %192, %191 ], [ %209, %208 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 %150, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %43, i8 0, i32 16, i1 false) #9, !annotation !8
  %195 = load ptr, ptr %23, align 4
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i16
  store i16 %197, ptr %11, align 4
  store i16 0, ptr %44, align 2
  store i16 1, ptr %43, align 4
  store ptr %10, ptr %45, align 4
  %198 = load i8, ptr %195, align 1
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %46, align 4
  store i16 1, ptr %47, align 2
  store i16 1, ptr %48, align 4
  store ptr %16, ptr %49, align 4
  %200 = load ptr, ptr %35, align 4
  %201 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %11, i32 noundef 2) #9
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %208, label %203

203:                                              ; preds = %193
  %204 = load ptr, ptr %35, align 4
  %205 = getelementptr inbounds %struct.i2c_adapter, ptr %204, i32 0, i32 9
  %206 = load i8, ptr %10, align 1
  %207 = zext i8 %206 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %205, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %207) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  br label %223

208:                                              ; preds = %193
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  %209 = load i8, ptr %16, align 1
  %210 = icmp eq i8 %194, %209
  br i1 %210, label %211, label %193

211:                                              ; preds = %208
  store i8 %194, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 30, ptr %8, align 2
  store i8 0, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  store i32 2, ptr %51, align 4, !annotation !8
  %212 = load ptr, ptr %23, align 4
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i16
  store i16 %214, ptr %9, align 4
  store i16 0, ptr %52, align 2
  store ptr %8, ptr %53, align 4
  %215 = load ptr, ptr %35, align 4
  %216 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %9, i32 noundef 1) #9
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %221, label %218

218:                                              ; preds = %211
  %219 = load ptr, ptr %35, align 4
  %220 = getelementptr inbounds %struct.i2c_adapter, ptr %219, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %220, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 30) #11
  br label %221

221:                                              ; preds = %218, %211
  %222 = phi i32 [ -121, %218 ], [ 0, %211 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  br label %223

223:                                              ; preds = %221, %203, %186, %158
  %224 = phi i32 [ %222, %221 ], [ -121, %158 ], [ -121, %203 ], [ -121, %186 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #9
  %225 = add i8 %100, 1
  br label %226

226:                                              ; preds = %223, %139, %118
  %227 = phi i32 [ %224, %223 ], [ %140, %139 ], [ %119, %118 ]
  %228 = phi i8 [ %225, %223 ], [ %100, %139 ], [ %100, %118 ]
  %229 = icmp eq i32 %227, 0
  br i1 %229, label %230, label %294

230:                                              ; preds = %226, %98
  %231 = phi i8 [ %228, %226 ], [ %100, %98 ]
  %232 = add i8 %231, 1
  %233 = zext i8 %232 to i32
  %234 = icmp ult i8 %232, 34
  br i1 %234, label %98, label %66

235:                                              ; preds = %284, %66
  %236 = phi i8 [ 49, %66 ], [ %286, %284 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 -1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1
  store i8 7, ptr %67, align 1
  store i8 %236, ptr %68, align 1
  store i8 0, ptr %69, align 1
  store i8 34, ptr %70, align 1
  store i8 -48, ptr %71, align 1
  store i8 0, ptr %72, align 1
  store i8 30, ptr %73, align 1
  store i8 0, ptr %74, align 1
  store i8 0, ptr %75, align 1
  store i8 30, ptr %76, align 1
  store i8 -48, ptr %77, align 1
  store i8 1, ptr %78, align 1
  store i8 34, ptr %79, align 1
  store i8 -1, ptr %80, align 1
  store i8 0, ptr %81, align 1
  store i8 30, ptr %82, align 1
  store i8 0, ptr %83, align 1
  store i8 0, ptr %84, align 1
  store i8 34, ptr %85, align 1
  store i8 -1, ptr %86, align 1
  br label %243

237:                                              ; preds = %280
  %238 = add nuw nsw i32 %245, 1
  %239 = icmp eq i32 %238, 7
  br i1 %239, label %284, label %240

240:                                              ; preds = %237
  %241 = getelementptr [7 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 %238
  %242 = load i8, ptr %241, align 1
  br label %243

243:                                              ; preds = %240, %235
  %244 = phi i8 [ 0, %235 ], [ %242, %240 ]
  %245 = phi i32 [ 0, %235 ], [ %238, %240 ]
  %246 = icmp eq i8 %244, 0
  %247 = getelementptr [7 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 %245, i32 1
  %248 = load i8, ptr %247, align 1
  br i1 %246, label %249, label %264

249:                                              ; preds = %243
  %250 = getelementptr [7 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 %245, i32 2
  %251 = load i8, ptr %250, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 %248, ptr %4, align 2
  store i8 %251, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store i32 0, ptr %95, align 4, !annotation !8
  %252 = load ptr, ptr %23, align 4
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i16
  store i16 %254, ptr %5, align 4
  store i16 0, ptr %96, align 2
  store i16 2, ptr %95, align 4
  store ptr %4, ptr %97, align 4
  %255 = load ptr, ptr %35, align 4
  %256 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %5, i32 noundef 1) #9
  %257 = icmp eq i32 %256, 1
  br i1 %257, label %262, label %258

258:                                              ; preds = %249
  %259 = load ptr, ptr %35, align 4
  %260 = getelementptr inbounds %struct.i2c_adapter, ptr %259, i32 0, i32 9
  %261 = zext i8 %248 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %260, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %261) #11
  br label %262

262:                                              ; preds = %258, %249
  %263 = phi i32 [ -121, %258 ], [ 0, %249 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %280

264:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 %248, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %87, i8 0, i32 16, i1 false) #9, !annotation !8
  %265 = load ptr, ptr %23, align 4
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i16
  store i16 %267, ptr %3, align 4
  store i16 0, ptr %88, align 2
  store i16 1, ptr %87, align 4
  store ptr %2, ptr %89, align 4
  %268 = load i8, ptr %265, align 1
  %269 = zext i8 %268 to i16
  store i16 %269, ptr %90, align 4
  store i16 1, ptr %91, align 2
  store i16 1, ptr %92, align 4
  store ptr %6, ptr %93, align 4
  %270 = load ptr, ptr %35, align 4
  %271 = call i32 @i2c_transfer(ptr noundef %270, ptr noundef nonnull %3, i32 noundef 2) #9
  %272 = icmp eq i32 %271, 2
  br i1 %272, label %278, label %273

273:                                              ; preds = %264
  %274 = load ptr, ptr %35, align 4
  %275 = getelementptr inbounds %struct.i2c_adapter, ptr %274, i32 0, i32 9
  %276 = load i8, ptr %2, align 1
  %277 = zext i8 %276 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %275, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %277) #11
  br label %278

278:                                              ; preds = %273, %264
  %279 = phi i32 [ -121, %273 ], [ 0, %264 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %280

280:                                              ; preds = %278, %262
  %281 = phi i32 [ %263, %262 ], [ %279, %278 ]
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %237, label %283

283:                                              ; preds = %280
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br label %294

284:                                              ; preds = %237
  %285 = load i8, ptr %6, align 1
  store i8 %285, ptr %21, align 1
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %286 = add nuw nsw i8 %236, 1
  %287 = icmp ult i8 %236, 57
  br i1 %287, label %235, label %288

288:                                              ; preds = %284
  %289 = load i32, ptr %24, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  store i32 545000000, ptr %24, align 4
  br label %292

292:                                              ; preds = %291, %288
  %293 = call i32 @qt1010_set_params(ptr noundef %0)
  br label %294

294:                                              ; preds = %292, %283, %226
  %295 = phi i32 [ %293, %292 ], [ %281, %283 ], [ %227, %226 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #9
  ret i32 %295
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qt1010_set_params(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca [48 x %struct.qt1010_i2c_oper_t], align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(144) %7, ptr noundef nonnull align 1 dereferenceable(144) @__const.qt1010_set_params.rd, i32 144, i1 false)
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = add i32 %11, 1246000000
  %13 = urem i32 %12, 125000
  %14 = sub i32 %12, %13
  %15 = add i32 %14, -1246000000
  %16 = freeze i32 %14
  %17 = udiv i32 %16, 32000000
  %18 = mul i32 %17, 32000000
  %19 = sub i32 %16, %18
  %20 = urem i32 %14, 4000000
  %21 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 5
  store i32 %15, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = tail call i32 %23(ptr noundef %0, i32 noundef 1) #9
  br label %27

27:                                               ; preds = %25, %1
  %28 = icmp ult i32 %15, 290000000
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %15, 610000000
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = icmp ult i32 %15, 802000000
  %33 = select i1 %32, i8 84, i8 116
  br label %34

34:                                               ; preds = %31, %29, %27
  %35 = phi i8 [ 20, %27 ], [ 52, %29 ], [ %33, %31 ]
  %36 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 2, i32 2
  store i8 %35, ptr %36, align 1
  %37 = trunc i32 %17 to i8
  %38 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 4, i32 2
  store i8 %37, ptr %38, align 1
  %39 = icmp ult i32 %19, 8000000
  %40 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 6, i32 2
  br i1 %39, label %41, label %46

41:                                               ; preds = %34
  store i8 29, ptr %40, align 1
  %42 = icmp ult i32 %19, 4000000
  %43 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 7, i32 2
  br i1 %42, label %44, label %45

44:                                               ; preds = %41
  store i8 9, ptr %43, align 1
  br label %67

45:                                               ; preds = %41
  store i8 8, ptr %43, align 1
  br label %67

46:                                               ; preds = %34
  store i8 28, ptr %40, align 1
  %47 = icmp ult i32 %19, 12000000
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 7, i32 2
  store i8 15, ptr %49, align 1
  br label %67

50:                                               ; preds = %46
  %51 = icmp ult i32 %19, 16000000
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 7, i32 2
  store i8 14, ptr %53, align 1
  br label %67

54:                                               ; preds = %50
  %55 = icmp ult i32 %19, 20000000
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 7, i32 2
  store i8 13, ptr %57, align 1
  br label %67

58:                                               ; preds = %54
  %59 = icmp ult i32 %19, 24000000
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 7, i32 2
  store i8 12, ptr %61, align 1
  br label %67

62:                                               ; preds = %58
  %63 = icmp ult i32 %19, 28000000
  %64 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 7, i32 2
  br i1 %63, label %65, label %66

65:                                               ; preds = %62
  store i8 11, ptr %64, align 1
  br label %67

66:                                               ; preds = %62
  store i8 10, ptr %64, align 1
  br label %67

67:                                               ; preds = %66, %65, %60, %56, %52, %48, %45, %44
  %68 = icmp ult i32 %20, 2000000
  %69 = select i1 %68, i8 69, i8 68
  %70 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 8, i32 2
  store i8 %69, ptr %70, align 1
  %71 = udiv i32 %20, 125000
  %72 = trunc i32 %71 to i8
  %73 = mul i8 %72, -8
  %74 = add i8 %73, 120
  %75 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 10, i32 2
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 13, i32 2
  store i8 -3, ptr %76, align 1
  %77 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 14, i32 2
  store i8 -111, ptr %77, align 1
  %78 = icmp ult i32 %15, 450000000
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 15, i32 2
  store i8 -48, ptr %80, align 1
  br label %98

81:                                               ; preds = %67
  %82 = icmp ult i32 %15, 482000000
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 15, i32 2
  store i8 -47, ptr %84, align 1
  br label %98

85:                                               ; preds = %81
  %86 = icmp ult i32 %15, 514000000
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 15, i32 2
  store i8 -44, ptr %88, align 1
  br label %98

89:                                               ; preds = %85
  %90 = icmp ult i32 %15, 546000000
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  %92 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 15, i32 2
  store i8 -41, ptr %92, align 1
  br label %98

93:                                               ; preds = %89
  %94 = icmp ult i32 %15, 610000000
  %95 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 15, i32 2
  br i1 %94, label %96, label %97

96:                                               ; preds = %93
  store i8 -38, ptr %95, align 1
  br label %98

97:                                               ; preds = %93
  store i8 -48, ptr %95, align 1
  br label %98

98:                                               ; preds = %97, %96, %91, %87, %83, %79
  %99 = and i8 %35, 112
  %100 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 35, i32 2
  store i8 %99, ptr %100, align 1
  br i1 %39, label %101, label %106

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 2
  %103 = load i8, ptr %102, align 4
  %104 = add i8 %103, 14
  %105 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 40, i32 2
  store i8 %104, ptr %105, align 1
  store i8 0, ptr %6, align 1
  br label %140

106:                                              ; preds = %98
  %107 = icmp ult i32 %19, 12000000
  br i1 %107, label %121, label %108

108:                                              ; preds = %106
  %109 = icmp ult i32 %19, 16000000
  br i1 %109, label %110, label %115

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 2
  %112 = load i8, ptr %111, align 4
  %113 = add i8 %112, 16
  %114 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 40, i32 2
  store i8 %113, ptr %114, align 1
  br label %132

115:                                              ; preds = %108
  %116 = icmp ult i32 %19, 24000000
  br i1 %116, label %126, label %117

117:                                              ; preds = %115
  %118 = icmp ult i32 %19, 28000000
  %119 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 2
  %120 = load i8, ptr %119, align 4
  br i1 %118, label %134, label %137

121:                                              ; preds = %106
  %122 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 2
  %123 = load i8, ptr %122, align 4
  %124 = add i8 %123, 15
  %125 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 40, i32 2
  store i8 %124, ptr %125, align 1
  store i8 1, ptr %6, align 1
  br label %140

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 2
  %128 = load i8, ptr %127, align 4
  %129 = add i8 %128, 17
  %130 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 40, i32 2
  store i8 %129, ptr %130, align 1
  %131 = icmp ult i32 %19, 20000000
  br i1 %131, label %132, label %133

132:                                              ; preds = %126, %110
  store i8 2, ptr %6, align 1
  br label %140

133:                                              ; preds = %126
  store i8 3, ptr %6, align 1
  br label %140

134:                                              ; preds = %117
  %135 = add i8 %120, 18
  %136 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 40, i32 2
  store i8 %135, ptr %136, align 1
  store i8 4, ptr %6, align 1
  br label %140

137:                                              ; preds = %117
  %138 = add i8 %120, 19
  %139 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 40, i32 2
  store i8 %138, ptr %139, align 1
  store i8 5, ptr %6, align 1
  br label %140

140:                                              ; preds = %137, %134, %133, %132, %121, %101
  %141 = phi i8 [ 1, %121 ], [ 3, %133 ], [ 5, %137 ], [ 4, %134 ], [ 2, %132 ], [ 0, %101 ]
  %142 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 3
  %143 = load i8, ptr %142, align 1
  %144 = add i8 %143, 13
  %145 = add i8 %144, %141
  %146 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 41, i32 2
  store i8 %145, ptr %146, align 1
  %147 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 4
  %148 = load i8, ptr %147, align 2
  %149 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 43, i32 2
  store i8 %148, ptr %149, align 1
  %150 = getelementptr inbounds [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 45, i32 2
  store i8 -110, ptr %150, align 1
  %151 = getelementptr inbounds i8, ptr %3, i32 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  %158 = getelementptr inbounds %struct.qt1010_priv, ptr %10, i32 0, i32 1
  %159 = getelementptr inbounds i8, ptr %4, i32 1
  %160 = getelementptr inbounds i8, ptr %5, i32 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %169

163:                                              ; preds = %206
  %164 = add nuw nsw i32 %171, 1
  %165 = icmp eq i32 %164, 48
  br i1 %165, label %209, label %166

166:                                              ; preds = %163
  %167 = getelementptr [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 %164
  %168 = load i8, ptr %167, align 1
  br label %169

169:                                              ; preds = %166, %140
  %170 = phi i8 [ 0, %140 ], [ %168, %166 ]
  %171 = phi i32 [ 0, %140 ], [ %164, %166 ]
  %172 = icmp eq i8 %170, 0
  %173 = getelementptr [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 %171, i32 1
  %174 = load i8, ptr %173, align 1
  br i1 %172, label %175, label %190

175:                                              ; preds = %169
  %176 = getelementptr [48 x %struct.qt1010_i2c_oper_t], ptr %7, i32 0, i32 %171, i32 2
  %177 = load i8, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 %174, ptr %4, align 2
  store i8 %177, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store i32 0, ptr %160, align 4, !annotation !8
  %178 = load ptr, ptr %10, align 4
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %5, align 4
  store i16 0, ptr %161, align 2
  store i16 2, ptr %160, align 4
  store ptr %4, ptr %162, align 4
  %181 = load ptr, ptr %158, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %5, i32 noundef 1) #9
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %188, label %184

184:                                              ; preds = %175
  %185 = load ptr, ptr %158, align 4
  %186 = getelementptr inbounds %struct.i2c_adapter, ptr %185, i32 0, i32 9
  %187 = zext i8 %174 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %187) #11
  br label %188

188:                                              ; preds = %184, %175
  %189 = phi i32 [ -121, %184 ], [ 0, %175 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %206

190:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %174, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %151, i8 0, i32 16, i1 false) #9, !annotation !8
  %191 = load ptr, ptr %10, align 4
  %192 = load i8, ptr %191, align 1
  %193 = zext i8 %192 to i16
  store i16 %193, ptr %3, align 4
  store i16 0, ptr %152, align 2
  store i16 1, ptr %151, align 4
  store ptr %2, ptr %153, align 4
  %194 = load i8, ptr %191, align 1
  %195 = zext i8 %194 to i16
  store i16 %195, ptr %154, align 4
  store i16 1, ptr %155, align 2
  store i16 1, ptr %156, align 4
  store ptr %6, ptr %157, align 4
  %196 = load ptr, ptr %158, align 4
  %197 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %3, i32 noundef 2) #9
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %204, label %199

199:                                              ; preds = %190
  %200 = load ptr, ptr %158, align 4
  %201 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 9
  %202 = load i8, ptr %2, align 1
  %203 = zext i8 %202 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %201, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %203) #11
  br label %204

204:                                              ; preds = %199, %190
  %205 = phi i32 [ -121, %199 ], [ 0, %190 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %206

206:                                              ; preds = %204, %188
  %207 = phi i32 [ %189, %188 ], [ %205, %204 ]
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %163, label %214

209:                                              ; preds = %163
  %210 = load ptr, ptr %22, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = call i32 %210(ptr noundef %0, i32 noundef 0) #9
  br label %214

214:                                              ; preds = %212, %209, %206
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  ret i32 %207
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @qt1010_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.qt1010_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qt1010_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 36125000, ptr %1, align 4
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154240766, i64 2154241260, i64 2154240803, i64 2154240859, i64 2154240893, i64 2154240917, i64 2154240958, i64 2154240979, i64 2154241007, i64 2154241041}
