; ModuleID = '/llk/IR/drivers/media/dvb-frontends/isl6421.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/isl6421.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isl6421_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22isl6421_attach\22\09\09\09\09\09"
module asm "__kstrtabns_isl6421_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.isl6421 = type { i8, i8, i8, ptr, i8, i8 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
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

@__kstrtab_isl6421_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_isl6421_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_isl6421_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isl6421_attach to i32), ptr @__kstrtab_isl6421_attach, ptr @__kstrtabns_isl6421_attach }, section "___ksymtab+isl6421_attach", align 4
@__UNIQUE_ID_description249 = internal constant [57 x i8] c"description=Driver for lnb supply and control ic isl6421\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [42 x i8] c"author=Andrew de Quincey & Oliver Endriss\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [49 x i8] c"Overload current detected. disabling LNBf power\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_isl6421_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @isl6421_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 12) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  store i8 32, ptr %8, align 8
  %11 = getelementptr inbounds %struct.isl6421, ptr %8, i32 0, i32 3
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.isl6421, ptr %8, i32 0, i32 4
  store i8 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.isl6421, ptr %8, i32 0, i32 1
  store i8 %3, ptr %14, align 1
  %15 = xor i8 %4, -1
  %16 = getelementptr inbounds %struct.isl6421, ptr %8, i32 0, i32 2
  store i8 %15, ptr %16, align 2
  %17 = tail call i32 @isl6421_set_voltage(ptr noundef %0, i32 noundef 2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #7
  store ptr null, ptr %13, align 4
  br label %27

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.isl6421, ptr %8, i32 0, i32 5
  store i8 1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 4
  store ptr @isl6421_release, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  store ptr @isl6421_set_voltage, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 26
  store ptr @isl6421_enable_high_lnb_voltage, ptr %24, align 4
  br i1 %5, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 24
  store ptr @isl6421_set_tone, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %20, %19, %6
  %28 = phi ptr [ null, %19 ], [ null, %6 ], [ %0, %25 ], [ %0, %20 ]
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl6421_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.isl6421, ptr %6, i32 0, i32 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %19, align 4
  %20 = load i8, ptr %6, align 4
  %21 = and i8 %20, -7
  store i8 %21, ptr %6, align 4
  switch i32 %1, label %91 [
    i32 2, label %22
    i32 0, label %24
    i32 1, label %26
  ]

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.isl6421, ptr %6, i32 0, i32 5
  br label %35

24:                                               ; preds = %2
  %25 = or i8 %21, 2
  br label %28

26:                                               ; preds = %2
  %27 = or i8 %20, 6
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i8 [ %27, %26 ], [ %25, %24 ]
  %30 = getelementptr inbounds %struct.isl6421, ptr %6, i32 0, i32 5
  %31 = load i8, ptr %30, align 1, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = or i8 %29, 64
  %34 = select i1 %32, i8 %29, i8 %33
  br label %35

35:                                               ; preds = %28, %22
  %36 = phi i8 [ %21, %22 ], [ %34, %28 ]
  %37 = phi ptr [ %23, %22 ], [ %30, %28 ]
  %38 = phi i1 [ true, %22 ], [ false, %28 ]
  %39 = getelementptr inbounds %struct.isl6421, ptr %6, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = or i8 %36, %40
  %42 = getelementptr inbounds %struct.isl6421, ptr %6, i32 0, i32 2
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, %41
  store i8 %44, ptr %6, align 4
  %45 = getelementptr inbounds %struct.isl6421, ptr %6, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %4, i32 noundef 2) #7
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %35
  %50 = icmp eq i32 %47, 2
  br i1 %50, label %51, label %91

51:                                               ; preds = %49
  %52 = zext i1 %38 to i8
  store i8 %52, ptr %37, align 1
  br i1 %38, label %58, label %53

53:                                               ; preds = %51
  %54 = load i8, ptr %3, align 1
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @msleep(i32 noundef 1000) #7
  br label %58

58:                                               ; preds = %57, %53, %51
  %59 = load i8, ptr %6, align 4
  %60 = and i8 %59, 64
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %58
  %63 = load i8, ptr %39, align 1
  %64 = and i8 %63, 64
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = and i8 %59, -65
  store i8 %67, ptr %6, align 4
  %68 = load ptr, ptr %45, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %4, i32 noundef 2) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  %72 = icmp ne i32 %69, 2
  %73 = or i1 %38, %72
  %74 = select i1 %72, i32 -5, i32 0
  br i1 %73, label %91, label %76

75:                                               ; preds = %62, %58
  br i1 %38, label %91, label %76

76:                                               ; preds = %75, %71
  %77 = load i8, ptr %3, align 1
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = load i8, ptr %6, align 4
  %82 = and i8 %81, -7
  store i8 %82, ptr %6, align 4
  %83 = load ptr, ptr %45, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %4, i32 noundef 1) #7
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = icmp eq i32 %84, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  store i8 1, ptr %37, align 1
  %89 = load ptr, ptr %45, align 4
  %90 = getelementptr inbounds %struct.i2c_adapter, ptr %89, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str) #8
  br label %91

91:                                               ; preds = %88, %86, %80, %76, %75, %71, %66, %49, %35, %2
  %92 = phi i32 [ -22, %88 ], [ -22, %2 ], [ %47, %35 ], [ -5, %49 ], [ %69, %66 ], [ %74, %71 ], [ %84, %80 ], [ -5, %86 ], [ 0, %76 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isl6421_release(ptr nocapture noundef %0) #0 {
  %2 = tail call i32 @isl6421_set_voltage(ptr noundef %0, i32 noundef 2)
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #7
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl6421_enable_high_lnb_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = icmp eq i32 %1, 0
  %14 = load i8, ptr %5, align 4
  %15 = and i8 %14, -9
  %16 = select i1 %13, i8 0, i8 8
  %17 = or i8 %15, %16
  %18 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = or i8 %19, %17
  %21 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 2
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, %20
  store i8 %23, ptr %5, align 4
  %24 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %3, i32 noundef 1) #7
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %27, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl6421_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 4
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  switch i32 %1, label %32 [
    i32 0, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %2
  %14 = load i8, ptr %5, align 4
  %15 = or i8 %14, 16
  br label %19

16:                                               ; preds = %2
  %17 = load i8, ptr %5, align 4
  %18 = and i8 %17, -17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i8 [ %18, %16 ], [ %15, %13 ]
  %21 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, %20
  %24 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, %23
  store i8 %26, ptr %5, align 4
  %27 = getelementptr inbounds %struct.isl6421, ptr %5, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 1) #7
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 0, i32 -5
  br label %32

32:                                               ; preds = %19, %2
  %33 = phi i32 [ %31, %19 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i8 0, i8 2}
