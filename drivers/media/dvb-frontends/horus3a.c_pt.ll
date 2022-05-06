; ModuleID = '/llk/IR/drivers/media/dvb-frontends/horus3a.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/horus3a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_horus3a_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22horus3a_attach\22\09\09\09\09\09"
module asm "__kstrtabns_horus3a_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.horus3a_priv = type { i32, i8, ptr, i32, ptr, ptr }
%struct.horus3a_config = type { i8, i8, ptr, ptr }
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

@.str = private unnamed_addr constant [39 x i8] c"horus3a: invalid xtal frequency %dMHz\0A\00", align 1
@horus3a_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony Horus3a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @horus3a_release, ptr @horus3a_init, ptr @horus3a_sleep, ptr null, ptr null, ptr @horus3a_set_params, ptr null, ptr null, ptr @horus3a_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Sony HORUS3A attached on addr=%x at I2C adapter %p\0A\00", align 1
@__kstrtab_horus3a_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_horus3a_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_horus3a_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @horus3a_attach to i32), ptr @__kstrtab_horus3a_attach, ptr @__kstrtabns_horus3a_attach }, section "___ksymtab+horus3a_attach", align 4
@__UNIQUE_ID_description249 = internal constant [48 x i8] c"description=Sony HORUS3A satellite tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Sergey Kozlov <serjk@netup.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"horus3a\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"horus3a: invalid frequency %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"horus3a: invalid delivery system %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_horus3a_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @horus3a_attach(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [6 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %112, label %15

15:                                               ; preds = %3
  %16 = load i8, ptr %1, align 4
  %17 = lshr i8 %16, 1
  %18 = getelementptr inbounds %struct.horus3a_priv, ptr %13, i32 0, i32 1
  store i8 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.horus3a_priv, ptr %13, i32 0, i32 2
  store ptr %2, ptr %19, align 8
  %20 = getelementptr inbounds %struct.horus3a_config, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.horus3a_priv, ptr %13, i32 0, i32 4
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.horus3a_config, ptr %1, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.horus3a_priv, ptr %13, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %15
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef 1) #11
  br label %31

31:                                               ; preds = %29, %15
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #11
  %32 = getelementptr inbounds i8, ptr %10, i32 1
  %33 = getelementptr inbounds i8, ptr %10, i32 2
  store i32 0, ptr %33, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %34 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = zext i8 %17 to i16
  store i16 %35, ptr %11, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %37, align 4
  store i8 42, ptr %10, align 1
  store i8 121, ptr %32, align 1
  %38 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %11, i32 noundef 1) #11
  %39 = icmp sgt i32 %38, -1
  %40 = icmp ne i32 %38, 1
  %41 = and i1 %39, %40
  %42 = select i1 %41, i32 -121, i32 %38
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %42, i32 noundef 42, i32 noundef 1) #12
  br label %46

46:                                               ; preds = %44, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #11
  %47 = getelementptr inbounds %struct.horus3a_config, ptr %1, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #11
  %49 = getelementptr inbounds i8, ptr %8, i32 1
  %50 = getelementptr inbounds i8, ptr %8, i32 4
  store i16 0, ptr %50, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %51 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %51, align 4, !annotation !8
  store i16 %35, ptr %9, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %53, align 4
  store i8 6, ptr %8, align 1
  store i8 %48, ptr %49, align 1
  %54 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %48, ptr %54, align 1
  %55 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 0, ptr %55, align 1
  %56 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %9, i32 noundef 1) #11
  %57 = icmp sgt i32 %56, -1
  %58 = icmp ne i32 %56, 1
  %59 = and i1 %57, %58
  %60 = select i1 %59, i32 -121, i32 %56
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %60, i32 noundef 6, i32 noundef 3) #12
  br label %64

64:                                               ; preds = %62, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  %65 = getelementptr inbounds i8, ptr %6, i32 1
  %66 = getelementptr inbounds i8, ptr %6, i32 2
  store i32 0, ptr %66, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %67 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %67, align 4, !annotation !8
  store i16 %35, ptr %7, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %69, align 4
  store i8 10, ptr %6, align 1
  store i8 64, ptr %65, align 1
  %70 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %7, i32 noundef 1) #11
  %71 = icmp sgt i32 %70, -1
  %72 = icmp ne i32 %70, 1
  %73 = and i1 %71, %72
  %74 = select i1 %73, i32 -121, i32 %70
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %74, i32 noundef 10, i32 noundef 1) #12
  br label %78

78:                                               ; preds = %76, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  %79 = load i8, ptr %47, align 1
  switch i8 %79, label %82 [
    i8 27, label %85
    i8 24, label %80
    i8 16, label %81
  ]

80:                                               ; preds = %78
  br label %85

81:                                               ; preds = %78
  br label %85

82:                                               ; preds = %78
  %83 = zext i8 %79 to i32
  %84 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str, i32 noundef %83) #12
  br label %85

85:                                               ; preds = %82, %81, %80, %78
  %86 = phi i8 [ 0, %82 ], [ 48, %81 ], [ 64, %80 ], [ 124, %78 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %87 = getelementptr inbounds i8, ptr %4, i32 1
  %88 = getelementptr inbounds i8, ptr %4, i32 2
  store i32 0, ptr %88, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %89 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %89, align 4, !annotation !8
  store i16 %35, ptr %5, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %91, align 4
  store i8 14, ptr %4, align 1
  store i8 %86, ptr %87, align 1
  %92 = call i32 @i2c_transfer(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 1) #11
  %93 = icmp sgt i32 %92, -1
  %94 = icmp ne i32 %92, 1
  %95 = and i1 %93, %94
  %96 = select i1 %95, i32 -121, i32 %92
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %96, i32 noundef 14, i32 noundef 1) #12
  br label %100

100:                                              ; preds = %98, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call fastcc void @horus3a_enter_power_save(ptr noundef nonnull %13)
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #11
  %101 = load ptr, ptr %26, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call i32 %101(ptr noundef %0, i32 noundef 0) #11
  br label %105

105:                                              ; preds = %103, %100
  %106 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %106, ptr noundef nonnull align 4 dereferenceable(220) @horus3a_tuner_ops, i32 220, i1 false)
  %107 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %13, ptr %107, align 4
  %108 = load ptr, ptr %19, align 8
  %109 = getelementptr inbounds %struct.i2c_adapter, ptr %108, i32 0, i32 9
  %110 = load i8, ptr %18, align 4
  %111 = zext i8 %110 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.1, i32 noundef %111, ptr noundef %108) #12
  br label %112

112:                                              ; preds = %105, %3
  %113 = phi ptr [ %0, %105 ], [ null, %3 ]
  ret ptr %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @horus3a_enter_power_save(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [6 x i8], align 1
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = getelementptr inbounds %struct.horus3a_priv, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %129, label %17

17:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #11
  %18 = getelementptr inbounds i8, ptr %12, i32 1
  %19 = getelementptr inbounds i8, ptr %12, i32 2
  store i32 0, ptr %19, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %20 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %20, align 4, !annotation !8
  %21 = getelementptr inbounds %struct.horus3a_priv, ptr %0, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %13, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %25, align 4
  store i8 42, ptr %12, align 1
  store i8 121, ptr %18, align 1
  %26 = getelementptr inbounds %struct.horus3a_priv, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %13, i32 noundef 1) #11
  %29 = icmp sgt i32 %28, -1
  %30 = icmp ne i32 %28, 1
  %31 = and i1 %29, %30
  %32 = select i1 %31, i32 -121, i32 %28
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %32, i32 noundef 42, i32 noundef 1) #12
  br label %37

37:                                               ; preds = %34, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #11
  %38 = getelementptr inbounds i8, ptr %10, i32 1
  %39 = getelementptr inbounds i8, ptr %10, i32 2
  store i32 0, ptr %39, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %40 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %40, align 4, !annotation !8
  %41 = load i8, ptr %21, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %11, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %44, align 4
  store i8 41, ptr %10, align 1
  store i8 112, ptr %38, align 1
  %45 = load ptr, ptr %26, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %11, i32 noundef 1) #11
  %47 = icmp sgt i32 %46, -1
  %48 = icmp ne i32 %46, 1
  %49 = and i1 %47, %48
  %50 = select i1 %49, i32 -121, i32 %46
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load ptr, ptr %26, align 4
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %53, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %50, i32 noundef 41, i32 noundef 1) #12
  br label %55

55:                                               ; preds = %52, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #11
  %56 = getelementptr inbounds i8, ptr %8, i32 1
  %57 = getelementptr inbounds i8, ptr %8, i32 2
  store i32 0, ptr %57, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %58 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %58, align 4, !annotation !8
  %59 = load i8, ptr %21, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %9, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %62, align 4
  store i8 40, ptr %8, align 1
  store i8 62, ptr %56, align 1
  %63 = load ptr, ptr %26, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %9, i32 noundef 1) #11
  %65 = icmp sgt i32 %64, -1
  %66 = icmp ne i32 %64, 1
  %67 = and i1 %65, %66
  %68 = select i1 %67, i32 -121, i32 %64
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load ptr, ptr %26, align 4
  %72 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %68, i32 noundef 40, i32 noundef 1) #12
  br label %73

73:                                               ; preds = %70, %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  %74 = getelementptr inbounds i8, ptr %6, i32 1
  %75 = getelementptr inbounds i8, ptr %6, i32 2
  store i32 0, ptr %75, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %76 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %76, align 4, !annotation !8
  %77 = load i8, ptr %21, align 4
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %7, align 4
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %79, align 2
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %80, align 4
  store i8 42, ptr %6, align 1
  store i8 25, ptr %74, align 1
  %81 = load ptr, ptr %26, align 4
  %82 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %7, i32 noundef 1) #11
  %83 = icmp sgt i32 %82, -1
  %84 = icmp ne i32 %82, 1
  %85 = and i1 %83, %84
  %86 = select i1 %85, i32 -121, i32 %82
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load ptr, ptr %26, align 4
  %90 = getelementptr inbounds %struct.i2c_adapter, ptr %89, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %86, i32 noundef 42, i32 noundef 1) #12
  br label %91

91:                                               ; preds = %88, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %92 = getelementptr inbounds i8, ptr %4, i32 1
  %93 = getelementptr inbounds i8, ptr %4, i32 2
  store i32 0, ptr %93, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %94 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %94, align 4, !annotation !8
  %95 = load i8, ptr %21, align 4
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %5, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %97, align 2
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %98, align 4
  store i8 28, ptr %4, align 1
  store i8 0, ptr %92, align 1
  %99 = load ptr, ptr %26, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %5, i32 noundef 1) #11
  %101 = icmp sgt i32 %100, -1
  %102 = icmp ne i32 %100, 1
  %103 = and i1 %101, %102
  %104 = select i1 %103, i32 -121, i32 %100
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %91
  %107 = load ptr, ptr %26, align 4
  %108 = getelementptr inbounds %struct.i2c_adapter, ptr %107, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %104, i32 noundef 28, i32 noundef 1) #12
  br label %109

109:                                              ; preds = %106, %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  %110 = getelementptr inbounds i8, ptr %2, i32 1
  %111 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %111, i8 0, i32 3, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %112 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %112, align 4, !annotation !8
  %113 = load i8, ptr %21, align 4
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %3, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %116, align 4
  store i8 17, ptr %2, align 1
  store i8 -64, ptr %110, align 1
  %117 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 -89, ptr %117, align 1
  %118 = load ptr, ptr %26, align 4
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %3, i32 noundef 1) #11
  %120 = icmp sgt i32 %119, -1
  %121 = icmp ne i32 %119, 1
  %122 = and i1 %120, %121
  %123 = select i1 %122, i32 -121, i32 %119
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %109
  %126 = load ptr, ptr %26, align 4
  %127 = getelementptr inbounds %struct.i2c_adapter, ptr %126, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %123, i32 noundef 17, i32 noundef 2) #12
  br label %128

128:                                              ; preds = %125, %109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  store i32 1, ptr %14, align 4
  br label %129

129:                                              ; preds = %128, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @horus3a_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @horus3a_init(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @horus3a_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @horus3a_enter_power_save(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @horus3a_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [6 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [6 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [6 x i8], align 1
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [6 x i8], align 1
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = alloca [6 x i8], align 1
  %17 = alloca [1 x %struct.i2c_msg], align 4
  %18 = alloca [6 x i8], align 1
  %19 = alloca [1 x %struct.i2c_msg], align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %20, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 %25, 1000
  %27 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %28(ptr noundef %32, i32 noundef 0) #11
  br label %34

34:                                               ; preds = %30, %1
  %35 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %114

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #11
  %39 = getelementptr inbounds i8, ptr %18, i32 1
  %40 = getelementptr inbounds i8, ptr %18, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %40, i8 0, i32 3, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  %41 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %41, align 4, !annotation !8
  %42 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %19, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %46, align 4
  store i8 17, ptr %18, align 1
  store i8 0, ptr %39, align 1
  %47 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 2
  store i8 -89, ptr %47, align 1
  %48 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %19, i32 noundef 1) #11
  %51 = icmp sgt i32 %50, -1
  %52 = icmp ne i32 %50, 1
  %53 = and i1 %51, %52
  %54 = select i1 %53, i32 -121, i32 %50
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %38
  %57 = load ptr, ptr %48, align 4
  %58 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %54, i32 noundef 17, i32 noundef 2) #12
  br label %59

59:                                               ; preds = %56, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %16) #11
  %60 = getelementptr inbounds i8, ptr %16, i32 1
  %61 = getelementptr inbounds i8, ptr %16, i32 2
  store i32 0, ptr %61, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %62 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %62, align 4, !annotation !8
  %63 = load i8, ptr %42, align 4
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %17, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %65, align 2
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %66, align 4
  store i8 42, ptr %16, align 1
  store i8 121, ptr %60, align 1
  %67 = load ptr, ptr %48, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %17, i32 noundef 1) #11
  %69 = icmp sgt i32 %68, -1
  %70 = icmp ne i32 %68, 1
  %71 = and i1 %69, %70
  %72 = select i1 %71, i32 -121, i32 %68
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = load ptr, ptr %48, align 4
  %76 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %72, i32 noundef 42, i32 noundef 1) #12
  br label %77

77:                                               ; preds = %74, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #11
  %78 = getelementptr inbounds i8, ptr %14, i32 1
  %79 = getelementptr inbounds i8, ptr %14, i32 2
  store i32 0, ptr %79, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %80 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %80, align 4, !annotation !8
  %81 = load i8, ptr %42, align 4
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %15, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %83, align 2
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %84, align 4
  store i8 28, ptr %14, align 1
  store i8 -64, ptr %78, align 1
  %85 = load ptr, ptr %48, align 4
  %86 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %15, i32 noundef 1) #11
  %87 = icmp sgt i32 %86, -1
  %88 = icmp ne i32 %86, 1
  %89 = and i1 %87, %88
  %90 = select i1 %89, i32 -121, i32 %86
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load ptr, ptr %48, align 4
  %94 = getelementptr inbounds %struct.i2c_adapter, ptr %93, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %90, i32 noundef 28, i32 noundef 1) #12
  br label %95

95:                                               ; preds = %92, %77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #11
  %96 = getelementptr inbounds i8, ptr %12, i32 1
  %97 = getelementptr inbounds i8, ptr %12, i32 2
  store i32 0, ptr %97, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %98 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %98, align 4, !annotation !8
  %99 = load i8, ptr %42, align 4
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %13, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %102, align 4
  store i8 41, ptr %12, align 1
  store i8 113, ptr %96, align 1
  %103 = load ptr, ptr %48, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %13, i32 noundef 1) #11
  %105 = icmp sgt i32 %104, -1
  %106 = icmp ne i32 %104, 1
  %107 = and i1 %105, %106
  %108 = select i1 %107, i32 -121, i32 %104
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load ptr, ptr %48, align 4
  %112 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %108, i32 noundef 41, i32 noundef 1) #12
  br label %113

113:                                              ; preds = %110, %95
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #11
  store i32 2, ptr %35, align 4
  br label %114

114:                                              ; preds = %113, %34
  %115 = add i32 %23, 500
  %116 = urem i32 %115, 1000
  %117 = sub i32 %115, %116
  %118 = icmp ult i32 %117, 1155001
  %119 = select i1 %118, i8 -128, i8 0
  %120 = select i1 %118, i32 4, i32 2
  %121 = mul i32 %120, %117
  %122 = lshr exact i32 %121, 1
  %123 = add nuw i32 %122, 500
  %124 = udiv i32 %123, 1000
  %125 = icmp ugt i32 %121, 65534998
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.6, i32 noundef %117) #12
  br label %297

130:                                              ; preds = %114
  %131 = icmp ult i32 %117, 975000
  br i1 %131, label %150, label %132

132:                                              ; preds = %130
  %133 = icmp ult i32 %117, 1050000
  br i1 %133, label %150, label %134

134:                                              ; preds = %132
  %135 = icmp ult i32 %117, 1150000
  br i1 %135, label %150, label %136

136:                                              ; preds = %134
  %137 = icmp ult i32 %117, 1250000
  br i1 %137, label %150, label %138

138:                                              ; preds = %136
  %139 = icmp ult i32 %117, 1350000
  br i1 %139, label %150, label %140

140:                                              ; preds = %138
  %141 = icmp ult i32 %117, 1450000
  br i1 %141, label %150, label %142

142:                                              ; preds = %140
  %143 = icmp ult i32 %117, 1600000
  br i1 %143, label %150, label %144

144:                                              ; preds = %142
  %145 = icmp ult i32 %117, 1800000
  br i1 %145, label %150, label %146

146:                                              ; preds = %144
  %147 = icmp ult i32 %117, 2000000
  %148 = select i1 %147, i8 2, i8 0
  %149 = select i1 %147, i8 32, i8 0
  br label %150

150:                                              ; preds = %146, %144, %142, %140, %138, %136, %134, %132, %130
  %151 = phi i8 [ 28, %130 ], [ 24, %132 ], [ 20, %134 ], [ 16, %136 ], [ 12, %138 ], [ 10, %140 ], [ 7, %142 ], [ 4, %144 ], [ %148, %146 ]
  %152 = phi i8 [ 32, %130 ], [ 64, %132 ], [ 64, %134 ], [ 96, %136 ], [ -128, %138 ], [ -128, %140 ], [ -96, %142 ], [ 64, %144 ], [ %149, %146 ]
  %153 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %154 = load i32, ptr %153, align 4
  switch i32 %154, label %185 [
    i32 5, label %155
    i32 6, label %170
  ]

155:                                              ; preds = %150
  %156 = icmp ult i32 %25, 4301000
  br i1 %156, label %189, label %157

157:                                              ; preds = %155
  %158 = icmp ult i32 %25, 10001000
  br i1 %158, label %159, label %164

159:                                              ; preds = %157
  %160 = mul nuw nsw i32 %26, 47
  %161 = add nuw nsw i32 %160, 39999
  %162 = udiv i32 %161, 40000
  %163 = trunc i32 %162 to i8
  br label %189

164:                                              ; preds = %157
  %165 = mul nuw nsw i32 %26, 27
  %166 = add nuw nsw i32 %165, 39999
  %167 = udiv i32 %166, 40000
  %168 = trunc i32 %167 to i8
  %169 = add i8 %168, 5
  br label %189

170:                                              ; preds = %150
  %171 = icmp ult i32 %25, 4501000
  br i1 %171, label %189, label %172

172:                                              ; preds = %170
  %173 = icmp ult i32 %25, 10001000
  br i1 %173, label %174, label %179

174:                                              ; preds = %172
  %175 = mul nuw nsw i32 %26, 11
  %176 = add nuw nsw i32 %175, 9999
  %177 = udiv i32 %176, 10000
  %178 = trunc i32 %177 to i8
  br label %189

179:                                              ; preds = %172
  %180 = mul nuw nsw i32 %26, 3
  %181 = add nuw nsw i32 %180, 4999
  %182 = udiv i32 %181, 5000
  %183 = trunc i32 %182 to i8
  %184 = add i8 %183, 5
  br label %189

185:                                              ; preds = %150
  %186 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.i2c_adapter, ptr %187, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.7, i32 noundef %154) #12
  br label %297

189:                                              ; preds = %179, %174, %170, %164, %159, %155
  %190 = phi i8 [ %163, %159 ], [ %169, %164 ], [ 5, %155 ], [ %178, %174 ], [ %184, %179 ], [ 5, %170 ]
  %191 = call i8 @llvm.umin.i8(i8 %190, i8 36)
  %192 = lshr i32 %124, 7
  %193 = trunc i32 %192 to i8
  %194 = trunc i32 %124 to i8
  %195 = shl i8 %194, 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #11
  %196 = getelementptr inbounds i8, ptr %10, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %197 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 6, ptr %197, align 4, !annotation !8
  %198 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 1
  %199 = load i8, ptr %198, align 4
  %200 = zext i8 %199 to i16
  store i16 %200, ptr %11, align 4
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %201, align 2
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %202, align 4
  store i8 0, ptr %10, align 1
  store i8 %193, ptr %196, align 1
  %203 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %195, ptr %203, align 1
  %204 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 0, ptr %204, align 1
  %205 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 0, ptr %205, align 1
  %206 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 %119, ptr %206, align 1
  %207 = getelementptr inbounds %struct.horus3a_priv, ptr %22, i32 0, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %11, i32 noundef 1) #11
  %210 = icmp sgt i32 %209, -1
  %211 = icmp ne i32 %209, 1
  %212 = and i1 %210, %211
  %213 = select i1 %212, i32 -121, i32 %209
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %189
  %216 = load ptr, ptr %207, align 4
  %217 = getelementptr inbounds %struct.i2c_adapter, ptr %216, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %217, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %213, i32 noundef 0, i32 noundef 5) #12
  br label %218

218:                                              ; preds = %215, %189
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #11
  %219 = or i8 %152, %151
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #11
  %220 = getelementptr inbounds i8, ptr %8, i32 1
  %221 = getelementptr inbounds i8, ptr %8, i32 2
  store i32 0, ptr %221, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %222 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %222, align 4, !annotation !8
  %223 = load i8, ptr %198, align 4
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %9, align 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %225, align 2
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %226, align 4
  store i8 9, ptr %8, align 1
  store i8 %219, ptr %220, align 1
  %227 = load ptr, ptr %207, align 4
  %228 = call i32 @i2c_transfer(ptr noundef %227, ptr noundef nonnull %9, i32 noundef 1) #11
  %229 = icmp sgt i32 %228, -1
  %230 = icmp ne i32 %228, 1
  %231 = and i1 %229, %230
  %232 = select i1 %231, i32 -121, i32 %228
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %218
  %235 = load ptr, ptr %207, align 4
  %236 = getelementptr inbounds %struct.i2c_adapter, ptr %235, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %236, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %232, i32 noundef 9, i32 noundef 1) #12
  br label %237

237:                                              ; preds = %234, %218
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #11
  %238 = shl nuw nsw i8 %191, 1
  %239 = or i8 %238, -128
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #11
  %240 = getelementptr inbounds i8, ptr %6, i32 1
  %241 = getelementptr inbounds i8, ptr %6, i32 2
  store i32 0, ptr %241, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %242 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %242, align 4, !annotation !8
  %243 = load i8, ptr %198, align 4
  %244 = zext i8 %243 to i16
  store i16 %244, ptr %7, align 4
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %245, align 2
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %246, align 4
  store i8 55, ptr %6, align 1
  store i8 %239, ptr %240, align 1
  %247 = load ptr, ptr %207, align 4
  %248 = call i32 @i2c_transfer(ptr noundef %247, ptr noundef nonnull %7, i32 noundef 1) #11
  %249 = icmp sgt i32 %248, -1
  %250 = icmp ne i32 %248, 1
  %251 = and i1 %249, %250
  %252 = select i1 %251, i32 -121, i32 %248
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %237
  %255 = load ptr, ptr %207, align 4
  %256 = getelementptr inbounds %struct.i2c_adapter, ptr %255, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %256, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %252, i32 noundef 55, i32 noundef 1) #12
  br label %257

257:                                              ; preds = %254, %237
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #11
  %258 = getelementptr inbounds i8, ptr %4, i32 1
  %259 = getelementptr inbounds i8, ptr %4, i32 2
  store i32 0, ptr %259, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %260 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %260, align 4, !annotation !8
  %261 = load i8, ptr %198, align 4
  %262 = zext i8 %261 to i16
  store i16 %262, ptr %5, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %263, align 2
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %264, align 4
  store i8 5, ptr %4, align 1
  store i8 -128, ptr %258, align 1
  %265 = load ptr, ptr %207, align 4
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %5, i32 noundef 1) #11
  %267 = icmp sgt i32 %266, -1
  %268 = icmp ne i32 %266, 1
  %269 = and i1 %267, %268
  %270 = select i1 %269, i32 -121, i32 %266
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %257
  %273 = load ptr, ptr %207, align 4
  %274 = getelementptr inbounds %struct.i2c_adapter, ptr %273, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %274, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %270, i32 noundef 5, i32 noundef 1) #12
  br label %275

275:                                              ; preds = %272, %257
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #11
  %276 = getelementptr inbounds i8, ptr %2, i32 1
  %277 = getelementptr inbounds i8, ptr %2, i32 2
  store i32 0, ptr %277, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %278 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %278, align 4, !annotation !8
  %279 = load i8, ptr %198, align 4
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %3, align 4
  %281 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %281, align 2
  %282 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %282, align 4
  store i8 42, ptr %2, align 1
  store i8 123, ptr %276, align 1
  %283 = load ptr, ptr %207, align 4
  %284 = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %3, i32 noundef 1) #11
  %285 = icmp sgt i32 %284, -1
  %286 = icmp ne i32 %284, 1
  %287 = and i1 %285, %286
  %288 = select i1 %287, i32 -121, i32 %284
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %275
  %291 = load ptr, ptr %207, align 4
  %292 = getelementptr inbounds %struct.i2c_adapter, ptr %291, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %292, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %288, i32 noundef 42, i32 noundef 1) #12
  br label %293

293:                                              ; preds = %290, %275
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #11
  call void @msleep(i32 noundef 60) #11
  %294 = mul i32 %124, 2000
  %295 = select i1 %118, i32 2, i32 1
  %296 = lshr i32 %294, %295
  store i32 %296, ptr %22, align 4
  br label %297

297:                                              ; preds = %293, %185, %126
  %298 = phi i32 [ -22, %126 ], [ 0, %293 ], [ -22, %185 ]
  ret i32 %298
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @horus3a_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
