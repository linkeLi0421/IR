; ModuleID = '/llk/IR/drivers/media/dvb-frontends/ascot2e.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ascot2e.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ascot2e_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ascot2e_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ascot2e_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ascot2e_band_sett = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ascot2e_priv = type { i32, i8, ptr, i32, ptr, ptr }
%struct.ascot2e_config = type { i8, i8, ptr, ptr }
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

@ascot2e_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony ASCOT2E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1200000000, i32 25000, i32 0, i32 0, i32 0 }, ptr @ascot2e_release, ptr @ascot2e_init, ptr @ascot2e_sleep, ptr null, ptr null, ptr @ascot2e_set_params, ptr null, ptr null, ptr @ascot2e_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [52 x i8] c"Sony ASCOT2E attached on addr=%x at I2C adapter %p\0A\00", align 1
@__kstrtab_ascot2e_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ascot2e_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ascot2e_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ascot2e_attach to i32), ptr @__kstrtab_ascot2e_attach, ptr @__kstrtabns_ascot2e_attach }, section "___ksymtab+ascot2e_attach", align 4
@__UNIQUE_ID_description249 = internal constant [47 x i8] c"description=Sony ASCOT2E terr/cab tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [21 x i8] c"author=info@netup.ru\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ascot2e\00", align 1
@ascot2e_sett = internal unnamed_addr constant [13 x %struct.ascot2e_band_sett] [%struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 26, i8 28, i8 1, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 28, i8 30, i8 2, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 22, i8 16, i8 3, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 26, i8 28, i8 1, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 28, i8 30, i8 2, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 2, i8 -1, i8 3, i8 26, i8 24, i8 0, i8 9, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 2, i8 -1, i8 3, i8 30, i8 31, i8 2, i8 9, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 1, i8 26, i8 28, i8 0, i8 9, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 1, i8 30, i8 2, i8 2, i8 9, i8 0 }], align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"%s: I2C rw failed=%d addr=%02x reg=%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"%s: i2c rd failed=%d addr=%02x reg=%02x\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_ascot2e_attach], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ascot2e_attach(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [11 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [11 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [11 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [11 x i8], align 1
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [11 x i8], align 1
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [11 x i8], align 1
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = alloca [11 x i8], align 1
  %17 = alloca [1 x %struct.i2c_msg], align 4
  %18 = alloca [11 x i8], align 1
  %19 = alloca [1 x %struct.i2c_msg], align 4
  %20 = alloca [11 x i8], align 1
  %21 = alloca [1 x %struct.i2c_msg], align 4
  %22 = alloca [11 x i8], align 1
  %23 = alloca [1 x %struct.i2c_msg], align 4
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 24) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %244, label %27

27:                                               ; preds = %3
  %28 = load i8, ptr %1, align 4
  %29 = lshr i8 %28, 1
  %30 = getelementptr inbounds %struct.ascot2e_priv, ptr %25, i32 0, i32 1
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ascot2e_priv, ptr %25, i32 0, i32 2
  store ptr %2, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ascot2e_config, ptr %1, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ascot2e_priv, ptr %25, i32 0, i32 4
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.ascot2e_config, ptr %1, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ascot2e_priv, ptr %25, i32 0, i32 5
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %27
  %42 = tail call i32 %39(ptr noundef %0, i32 noundef 1) #9
  %43 = load i8, ptr %30, align 4
  %44 = load ptr, ptr %31, align 8
  br label %45

45:                                               ; preds = %41, %27
  %46 = phi ptr [ %44, %41 ], [ %2, %27 ]
  %47 = phi i8 [ %43, %41 ], [ %29, %27 ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %22) #9
  %48 = getelementptr inbounds i8, ptr %22, i32 1
  %49 = getelementptr inbounds i8, ptr %22, i32 5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %49, i8 0, i32 6, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %50 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 5, ptr %50, align 4, !annotation !8
  %51 = zext i8 %47 to i16
  store i16 %51, ptr %23, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %53, align 4
  store i8 1, ptr %22, align 1
  store i8 16, ptr %48, align 1
  %54 = getelementptr inbounds [11 x i8], ptr %22, i32 0, i32 2
  store i8 6, ptr %54, align 1
  %55 = getelementptr inbounds [11 x i8], ptr %22, i32 0, i32 3
  store i8 -60, ptr %55, align 1
  %56 = getelementptr inbounds [11 x i8], ptr %22, i32 0, i32 4
  store i8 64, ptr %56, align 1
  %57 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %23, i32 noundef 1) #9
  %58 = icmp sgt i32 %57, -1
  %59 = icmp ne i32 %57, 1
  %60 = and i1 %58, %59
  %61 = select i1 %60, i32 -121, i32 %57
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load ptr, ptr %31, align 8
  %65 = getelementptr inbounds %struct.i2c_adapter, ptr %64, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %61, i32 noundef 1, i32 noundef 4) #10
  br label %66

66:                                               ; preds = %63, %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %20) #9
  %67 = getelementptr inbounds i8, ptr %20, i32 1
  %68 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %68, i8 0, i32 7, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %69 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 4, ptr %69, align 4, !annotation !8
  %70 = load i8, ptr %30, align 4
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %21, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %73, align 4
  store i8 34, ptr %20, align 1
  store i8 16, ptr %67, align 1
  %74 = getelementptr inbounds [11 x i8], ptr %20, i32 0, i32 2
  store i8 63, ptr %74, align 1
  %75 = getelementptr inbounds [11 x i8], ptr %20, i32 0, i32 3
  store i8 37, ptr %75, align 1
  %76 = load ptr, ptr %31, align 8
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %21, i32 noundef 1) #9
  %78 = icmp sgt i32 %77, -1
  %79 = icmp ne i32 %77, 1
  %80 = and i1 %78, %79
  %81 = select i1 %80, i32 -121, i32 %77
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load ptr, ptr %31, align 8
  %85 = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %81, i32 noundef 34, i32 noundef 3) #10
  br label %86

86:                                               ; preds = %83, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %18) #9
  %87 = getelementptr inbounds i8, ptr %18, i32 1
  %88 = getelementptr inbounds i8, ptr %18, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %88, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %89 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %89, align 4, !annotation !8
  %90 = load i8, ptr %30, align 4
  %91 = zext i8 %90 to i16
  store i16 %91, ptr %19, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %93, align 4
  store i8 40, ptr %18, align 1
  store i8 30, ptr %87, align 1
  %94 = load ptr, ptr %31, align 8
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %19, i32 noundef 1) #9
  %96 = icmp sgt i32 %95, -1
  %97 = icmp ne i32 %95, 1
  %98 = and i1 %96, %97
  %99 = select i1 %98, i32 -121, i32 %95
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load ptr, ptr %31, align 8
  %103 = getelementptr inbounds %struct.i2c_adapter, ptr %102, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %99, i32 noundef 40, i32 noundef 1) #10
  br label %104

104:                                              ; preds = %101, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %16) #9
  %105 = getelementptr inbounds i8, ptr %16, i32 1
  %106 = getelementptr inbounds i8, ptr %16, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %106, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %107 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %107, align 4, !annotation !8
  %108 = load i8, ptr %30, align 4
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %17, align 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %110, align 2
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %111, align 4
  store i8 89, ptr %16, align 1
  store i8 4, ptr %105, align 1
  %112 = load ptr, ptr %31, align 8
  %113 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %17, i32 noundef 1) #9
  %114 = icmp sgt i32 %113, -1
  %115 = icmp ne i32 %113, 1
  %116 = and i1 %114, %115
  %117 = select i1 %116, i32 -121, i32 %113
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load ptr, ptr %31, align 8
  %121 = getelementptr inbounds %struct.i2c_adapter, ptr %120, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %117, i32 noundef 89, i32 noundef 1) #10
  br label %122

122:                                              ; preds = %119, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %16) #9
  call void @msleep(i32 noundef 80) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %14) #9
  %123 = getelementptr inbounds i8, ptr %14, i32 1
  %124 = getelementptr inbounds i8, ptr %14, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %124, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %125 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %125, align 4, !annotation !8
  %126 = load i8, ptr %30, align 4
  %127 = zext i8 %126 to i16
  store i16 %127, ptr %15, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %128, align 2
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %129, align 4
  store i8 76, ptr %14, align 1
  store i8 1, ptr %123, align 1
  %130 = load ptr, ptr %31, align 8
  %131 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %15, i32 noundef 1) #9
  %132 = icmp sgt i32 %131, -1
  %133 = icmp ne i32 %131, 1
  %134 = and i1 %132, %133
  %135 = select i1 %134, i32 -121, i32 %131
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %122
  %138 = load ptr, ptr %31, align 8
  %139 = getelementptr inbounds %struct.i2c_adapter, ptr %138, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %139, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %135, i32 noundef 76, i32 noundef 1) #10
  br label %140

140:                                              ; preds = %137, %122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %12) #9
  %141 = getelementptr inbounds i8, ptr %12, i32 1
  %142 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %142, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %143 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %143, align 4, !annotation !8
  %144 = load i8, ptr %30, align 4
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %13, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %146, align 2
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %147, align 4
  store i8 7, ptr %12, align 1
  store i8 4, ptr %141, align 1
  %148 = load ptr, ptr %31, align 8
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %13, i32 noundef 1) #9
  %150 = icmp sgt i32 %149, -1
  %151 = icmp ne i32 %149, 1
  %152 = and i1 %150, %151
  %153 = select i1 %152, i32 -121, i32 %149
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %140
  %156 = load ptr, ptr %31, align 8
  %157 = getelementptr inbounds %struct.i2c_adapter, ptr %156, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %157, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %153, i32 noundef 7, i32 noundef 1) #10
  br label %158

158:                                              ; preds = %155, %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %10) #9
  %159 = getelementptr inbounds i8, ptr %10, i32 1
  %160 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %160, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %161 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %161, align 4, !annotation !8
  %162 = load i8, ptr %30, align 4
  %163 = zext i8 %162 to i16
  store i16 %163, ptr %11, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %164, align 2
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %165, align 4
  store i8 4, ptr %10, align 1
  store i8 0, ptr %159, align 1
  %166 = load ptr, ptr %31, align 8
  %167 = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %11, i32 noundef 1) #9
  %168 = icmp sgt i32 %167, -1
  %169 = icmp ne i32 %167, 1
  %170 = and i1 %168, %169
  %171 = select i1 %170, i32 -121, i32 %167
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %158
  %174 = load ptr, ptr %31, align 8
  %175 = getelementptr inbounds %struct.i2c_adapter, ptr %174, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %175, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %171, i32 noundef 4, i32 noundef 1) #10
  br label %176

176:                                              ; preds = %173, %158
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #9
  %177 = getelementptr inbounds i8, ptr %8, i32 1
  %178 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %178, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %179 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %179, align 4, !annotation !8
  %180 = load i8, ptr %30, align 4
  %181 = zext i8 %180 to i16
  store i16 %181, ptr %9, align 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %182, align 2
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %183, align 4
  store i8 3, ptr %8, align 1
  store i8 -64, ptr %177, align 1
  %184 = load ptr, ptr %31, align 8
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %9, i32 noundef 1) #9
  %186 = icmp sgt i32 %185, -1
  %187 = icmp ne i32 %185, 1
  %188 = and i1 %186, %187
  %189 = select i1 %188, i32 -121, i32 %185
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %176
  %192 = load ptr, ptr %31, align 8
  %193 = getelementptr inbounds %struct.i2c_adapter, ptr %192, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %193, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %189, i32 noundef 3, i32 noundef 1) #10
  br label %194

194:                                              ; preds = %191, %176
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #9
  %195 = getelementptr inbounds i8, ptr %6, i32 1
  %196 = getelementptr inbounds i8, ptr %6, i32 3
  store i64 0, ptr %196, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %197 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %197, align 4, !annotation !8
  %198 = load i8, ptr %30, align 4
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %7, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %200, align 2
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %201, align 4
  store i8 20, ptr %6, align 1
  store i8 0, ptr %195, align 1
  %202 = getelementptr inbounds [11 x i8], ptr %6, i32 0, i32 2
  store i8 4, ptr %202, align 1
  %203 = load ptr, ptr %31, align 8
  %204 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %7, i32 noundef 1) #9
  %205 = icmp sgt i32 %204, -1
  %206 = icmp ne i32 %204, 1
  %207 = and i1 %205, %206
  %208 = select i1 %207, i32 -121, i32 %204
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %194
  %211 = load ptr, ptr %31, align 8
  %212 = getelementptr inbounds %struct.i2c_adapter, ptr %211, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %208, i32 noundef 20, i32 noundef 2) #10
  br label %213

213:                                              ; preds = %210, %194
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #9
  %214 = getelementptr inbounds i8, ptr %4, i32 1
  %215 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %215, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %216 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %216, align 4, !annotation !8
  %217 = load i8, ptr %30, align 4
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %5, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %219, align 2
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %220, align 4
  store i8 80, ptr %4, align 1
  store i8 1, ptr %214, align 1
  %221 = load ptr, ptr %31, align 8
  %222 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %5, i32 noundef 1) #9
  %223 = icmp sgt i32 %222, -1
  %224 = icmp ne i32 %222, 1
  %225 = and i1 %223, %224
  %226 = select i1 %225, i32 -121, i32 %222
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %213
  %229 = load ptr, ptr %31, align 8
  %230 = getelementptr inbounds %struct.i2c_adapter, ptr %229, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %230, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %226, i32 noundef 80, i32 noundef 1) #10
  br label %231

231:                                              ; preds = %228, %213
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #9
  %232 = getelementptr inbounds %struct.ascot2e_priv, ptr %25, i32 0, i32 3
  store i32 1, ptr %232, align 4
  %233 = load ptr, ptr %38, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %231
  %236 = call i32 %233(ptr noundef %0, i32 noundef 0) #9
  br label %237

237:                                              ; preds = %235, %231
  %238 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %238, ptr noundef nonnull align 4 dereferenceable(220) @ascot2e_tuner_ops, i32 220, i1 false)
  %239 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %25, ptr %239, align 4
  %240 = load ptr, ptr %31, align 8
  %241 = getelementptr inbounds %struct.i2c_adapter, ptr %240, i32 0, i32 9
  %242 = load i8, ptr %30, align 4
  %243 = zext i8 %242 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %241, ptr noundef nonnull @.str, i32 noundef %243, ptr noundef %240) #10
  br label %244

244:                                              ; preds = %237, %3
  %245 = phi ptr [ %0, %237 ], [ null, %3 ]
  ret ptr %245
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ascot2e_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ascot2e_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @ascot2e_leave_power_save(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ascot2e_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [11 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [11 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ascot2e_priv, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %51, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #9
  %12 = getelementptr inbounds i8, ptr %4, i32 1
  %13 = getelementptr inbounds i8, ptr %4, i32 3
  store i64 0, ptr %13, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.ascot2e_priv, ptr %7, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %5, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %19, align 4
  store i8 20, ptr %4, align 1
  store i8 0, ptr %12, align 1
  %20 = getelementptr inbounds [11 x i8], ptr %4, i32 0, i32 2
  store i8 4, ptr %20, align 1
  %21 = getelementptr inbounds %struct.ascot2e_priv, ptr %7, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 1) #9
  %24 = icmp sgt i32 %23, -1
  %25 = icmp ne i32 %23, 1
  %26 = and i1 %24, %25
  %27 = select i1 %26, i32 -121, i32 %23
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %27, i32 noundef 20, i32 noundef 2) #10
  br label %32

32:                                               ; preds = %29, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #9
  %33 = getelementptr inbounds i8, ptr %2, i32 1
  %34 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %34, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %35 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %35, align 4, !annotation !8
  %36 = load i8, ptr %15, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %3, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %39, align 4
  store i8 80, ptr %2, align 1
  store i8 1, ptr %33, align 1
  %40 = load ptr, ptr %21, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %3, i32 noundef 1) #9
  %42 = icmp sgt i32 %41, -1
  %43 = icmp ne i32 %41, 1
  %44 = and i1 %42, %43
  %45 = select i1 %44, i32 -121, i32 %41
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load ptr, ptr %21, align 4
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %45, i32 noundef 80, i32 noundef 1) #10
  br label %50

50:                                               ; preds = %47, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #9
  store i32 1, ptr %8, align 4
  br label %51

51:                                               ; preds = %50, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ascot2e_set_params(ptr nocapture noundef %0) #0 {
  %2 = alloca [11 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [11 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [11 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [11 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [11 x i8], align 1
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [11 x i8], align 1
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [11 x i8], align 1
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = alloca [11 x i8], align 1
  %17 = alloca [1 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %281 [
    i32 3, label %23
    i32 16, label %33
    i32 1, label %43
  ]

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 5000001
  br i1 %26, label %52, label %27

27:                                               ; preds = %23
  %28 = icmp ult i32 %25, 6000001
  br i1 %28, label %52, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %25, 7000001
  br i1 %30, label %52, label %31

31:                                               ; preds = %29
  %32 = icmp ult i32 %25, 8000001
  br i1 %32, label %52, label %49

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, 5000001
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = icmp ult i32 %35, 6000001
  br i1 %38, label %52, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %35, 7000001
  br i1 %40, label %52, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %35, 8000001
  br i1 %42, label %52, label %49

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, 6000001
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = icmp ult i32 %45, 8000001
  br i1 %48, label %52, label %281

49:                                               ; preds = %41, %31
  %50 = phi ptr [ %24, %31 ], [ %34, %41 ]
  %51 = phi i32 [ 3, %31 ], [ 8, %41 ]
  store i32 8000000, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %47, %43, %41, %39, %37, %33, %31, %29, %27, %23
  %53 = phi i32 [ 9, %43 ], [ 8, %41 ], [ 7, %39 ], [ 6, %37 ], [ 5, %33 ], [ 3, %31 ], [ 2, %29 ], [ 1, %27 ], [ 0, %23 ], [ 10, %47 ], [ %51, %49 ]
  %54 = getelementptr inbounds %struct.ascot2e_priv, ptr %20, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ascot2e_priv, ptr %20, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %55(ptr noundef %59, i32 noundef 1) #9
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, ptr %18, align 4
  %63 = udiv i32 %62, 1000
  %64 = add nuw nsw i32 %63, 24
  %65 = urem i32 %64, 25
  %66 = sub nuw nsw i32 %64, %65
  %67 = getelementptr inbounds %struct.ascot2e_priv, ptr %20, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  tail call fastcc void @ascot2e_leave_power_save(ptr noundef %20)
  br label %71

71:                                               ; preds = %70, %61
  %72 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, -1
  %75 = shl i8 %73, 2
  %76 = and i8 %75, 4
  %77 = select i1 %74, i8 0, i8 %76
  tail call fastcc void @ascot2e_set_reg_bits(ptr noundef %20, i8 noundef zeroext 5, i8 noundef zeroext %77, i8 noundef zeroext 28)
  %78 = add nsw i32 %53, -9
  %79 = icmp ult i32 %78, 2
  %80 = icmp ugt i32 %66, 500000
  %81 = select i1 %80, i8 2, i8 4
  %82 = select i1 %80, i8 16, i8 32
  %83 = select i1 %79, i8 %82, i8 %81
  br i1 %79, label %84, label %86

84:                                               ; preds = %71
  %85 = select i1 %80, i8 8, i8 12
  br label %88

86:                                               ; preds = %71
  %87 = select i1 %80, i8 48, i8 56
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i8 [ 18, %84 ], [ 48, %86 ]
  %90 = phi i8 [ 120, %84 ], [ 10, %86 ]
  %91 = phi i8 [ 20, %84 ], [ 30, %86 ]
  %92 = phi i8 [ %85, %84 ], [ %87, %86 ]
  %93 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53, i32 2
  %94 = load i8, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %16) #9
  %95 = getelementptr inbounds i8, ptr %16, i32 1
  %96 = getelementptr inbounds i8, ptr %16, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %96, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %97 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %97, align 4, !annotation !8
  %98 = getelementptr inbounds %struct.ascot2e_priv, ptr %20, i32 0, i32 1
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %17, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %102, align 4
  store i8 78, ptr %16, align 1
  store i8 1, ptr %95, align 1
  %103 = getelementptr inbounds %struct.ascot2e_priv, ptr %20, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %17, i32 noundef 1) #9
  %106 = icmp sgt i32 %105, -1
  %107 = icmp ne i32 %105, 1
  %108 = and i1 %106, %107
  %109 = select i1 %108, i32 -121, i32 %105
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %88
  %112 = load ptr, ptr %103, align 4
  %113 = getelementptr inbounds %struct.i2c_adapter, ptr %112, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %113, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %109, i32 noundef 78, i32 noundef 1) #10
  br label %114

114:                                              ; preds = %111, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %16) #9
  %115 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53, i32 5
  %116 = load i8, ptr %115, align 1
  %117 = shl i8 %116, 3
  %118 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53, i32 4
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, 7
  %121 = or i8 %120, %117
  %122 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53, i32 6
  %123 = load i8, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %14) #9
  %124 = getelementptr inbounds i8, ptr %14, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %125 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 11, ptr %125, align 4, !annotation !8
  %126 = load i8, ptr %98, align 4
  %127 = zext i8 %126 to i16
  store i16 %127, ptr %15, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %128, align 2
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %129, align 4
  store i8 6, ptr %14, align 1
  store i8 %83, ptr %124, align 1
  %130 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 2
  store i8 4, ptr %130, align 1
  %131 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 3
  store i8 %89, ptr %131, align 1
  %132 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 4
  store i8 %90, ptr %132, align 1
  %133 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 5
  store i8 %91, ptr %133, align 1
  %134 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 6
  store i8 %92, ptr %134, align 1
  %135 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 7
  store i8 %94, ptr %135, align 1
  %136 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 8
  store i8 0, ptr %136, align 1
  %137 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 9
  store i8 %121, ptr %137, align 1
  %138 = getelementptr inbounds [11 x i8], ptr %14, i32 0, i32 10
  store i8 %123, ptr %138, align 1
  %139 = load ptr, ptr %103, align 4
  %140 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %15, i32 noundef 1) #9
  %141 = icmp sgt i32 %140, -1
  %142 = icmp ne i32 %140, 1
  %143 = and i1 %141, %142
  %144 = select i1 %143, i32 -121, i32 %140
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %114
  %147 = load ptr, ptr %103, align 4
  %148 = getelementptr inbounds %struct.i2c_adapter, ptr %147, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %144, i32 noundef 6, i32 noundef 10) #10
  br label %149

149:                                              ; preds = %146, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %14) #9
  %150 = select i1 %79, i8 1, i8 3
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %12) #9
  %151 = getelementptr inbounds i8, ptr %12, i32 1
  %152 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %152, i8 0, i32 7, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %153 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 4, ptr %153, align 4, !annotation !8
  %154 = load i8, ptr %98, align 4
  %155 = zext i8 %154 to i16
  store i16 %155, ptr %13, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %156, align 2
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %157, align 4
  store i8 69, ptr %12, align 1
  store i8 15, ptr %151, align 1
  %158 = getelementptr inbounds [11 x i8], ptr %12, i32 0, i32 2
  store i8 0, ptr %158, align 1
  %159 = getelementptr inbounds [11 x i8], ptr %12, i32 0, i32 3
  store i8 %150, ptr %159, align 1
  %160 = load ptr, ptr %103, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %13, i32 noundef 1) #9
  %162 = icmp sgt i32 %161, -1
  %163 = icmp ne i32 %161, 1
  %164 = and i1 %162, %163
  %165 = select i1 %164, i32 -121, i32 %161
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %149
  %168 = load ptr, ptr %103, align 4
  %169 = getelementptr inbounds %struct.i2c_adapter, ptr %168, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %169, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %165, i32 noundef 69, i32 noundef 3) #10
  br label %170

170:                                              ; preds = %167, %149
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %12) #9
  %171 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53, i32 8
  %172 = load i8, ptr %171, align 1
  %173 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53, i32 9
  %174 = load i8, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %10) #9
  %175 = getelementptr inbounds i8, ptr %10, i32 1
  %176 = getelementptr inbounds i8, ptr %10, i32 3
  store i64 0, ptr %176, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %177 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %177, align 4, !annotation !8
  %178 = load i8, ptr %98, align 4
  %179 = zext i8 %178 to i16
  store i16 %179, ptr %11, align 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %180, align 2
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %181, align 4
  store i8 73, ptr %10, align 1
  store i8 %172, ptr %175, align 1
  %182 = getelementptr inbounds [11 x i8], ptr %10, i32 0, i32 2
  store i8 %174, ptr %182, align 1
  %183 = load ptr, ptr %103, align 4
  %184 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %11, i32 noundef 1) #9
  %185 = icmp sgt i32 %184, -1
  %186 = icmp ne i32 %184, 1
  %187 = and i1 %185, %186
  %188 = select i1 %187, i32 -121, i32 %184
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %170
  %191 = load ptr, ptr %103, align 4
  %192 = getelementptr inbounds %struct.i2c_adapter, ptr %191, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %192, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %188, i32 noundef 73, i32 noundef 2) #10
  br label %193

193:                                              ; preds = %190, %170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %10) #9
  call fastcc void @ascot2e_set_reg_bits(ptr noundef %20, i8 noundef zeroext 12, i8 noundef zeroext -112, i8 noundef zeroext -80)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %8) #9
  %194 = getelementptr inbounds i8, ptr %8, i32 1
  %195 = getelementptr inbounds i8, ptr %8, i32 3
  store i64 0, ptr %195, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %196 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %196, align 4, !annotation !8
  %197 = load i8, ptr %98, align 4
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %9, align 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %199, align 2
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %200, align 4
  store i8 3, ptr %8, align 1
  store i8 -60, ptr %194, align 1
  %201 = getelementptr inbounds [11 x i8], ptr %8, i32 0, i32 2
  store i8 64, ptr %201, align 1
  %202 = load ptr, ptr %103, align 4
  %203 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %9, i32 noundef 1) #9
  %204 = icmp sgt i32 %203, -1
  %205 = icmp ne i32 %203, 1
  %206 = and i1 %204, %205
  %207 = select i1 %206, i32 -121, i32 %203
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %193
  %210 = load ptr, ptr %103, align 4
  %211 = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %211, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %207, i32 noundef 3, i32 noundef 2) #10
  br label %212

212:                                              ; preds = %209, %193
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %8) #9
  %213 = trunc i32 %66 to i8
  %214 = lshr i32 %66, 8
  %215 = trunc i32 %214 to i8
  %216 = lshr i32 %66, 16
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 15
  %219 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %53, i32 7
  %220 = load i8, ptr %219, align 1
  %221 = shl i8 %220, 4
  %222 = or i8 %221, %218
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %6) #9
  %223 = getelementptr inbounds i8, ptr %6, i32 1
  %224 = getelementptr inbounds i8, ptr %6, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %224, i8 0, i32 5, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %225 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 6, ptr %225, align 4, !annotation !8
  %226 = load i8, ptr %98, align 4
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %7, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %228, align 2
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %229, align 4
  store i8 16, ptr %6, align 1
  store i8 %213, ptr %223, align 1
  %230 = getelementptr inbounds [11 x i8], ptr %6, i32 0, i32 2
  store i8 %215, ptr %230, align 1
  %231 = getelementptr inbounds [11 x i8], ptr %6, i32 0, i32 3
  store i8 %222, ptr %231, align 1
  %232 = getelementptr inbounds [11 x i8], ptr %6, i32 0, i32 4
  store i8 -1, ptr %232, align 1
  %233 = getelementptr inbounds [11 x i8], ptr %6, i32 0, i32 5
  store i8 -1, ptr %233, align 1
  %234 = load ptr, ptr %103, align 4
  %235 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %7, i32 noundef 1) #9
  %236 = icmp sgt i32 %235, -1
  %237 = icmp ne i32 %235, 1
  %238 = and i1 %236, %237
  %239 = select i1 %238, i32 -121, i32 %235
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %212
  %242 = load ptr, ptr %103, align 4
  %243 = getelementptr inbounds %struct.i2c_adapter, ptr %242, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %243, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %239, i32 noundef 16, i32 noundef 5) #10
  br label %244

244:                                              ; preds = %241, %212
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %6) #9
  call void @msleep(i32 noundef 50) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #9
  %245 = getelementptr inbounds i8, ptr %4, i32 1
  %246 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %246, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %247 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %247, align 4, !annotation !8
  %248 = load i8, ptr %98, align 4
  %249 = zext i8 %248 to i16
  store i16 %249, ptr %5, align 4
  %250 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %250, align 2
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %251, align 4
  store i8 4, ptr %4, align 1
  store i8 0, ptr %245, align 1
  %252 = load ptr, ptr %103, align 4
  %253 = call i32 @i2c_transfer(ptr noundef %252, ptr noundef nonnull %5, i32 noundef 1) #9
  %254 = icmp sgt i32 %253, -1
  %255 = icmp ne i32 %253, 1
  %256 = and i1 %254, %255
  %257 = select i1 %256, i32 -121, i32 %253
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %244
  %260 = load ptr, ptr %103, align 4
  %261 = getelementptr inbounds %struct.i2c_adapter, ptr %260, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %261, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %257, i32 noundef 4, i32 noundef 1) #10
  br label %262

262:                                              ; preds = %259, %244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #9
  %263 = getelementptr inbounds i8, ptr %2, i32 1
  %264 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %264, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %265 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %265, align 4, !annotation !8
  %266 = load i8, ptr %98, align 4
  %267 = zext i8 %266 to i16
  store i16 %267, ptr %3, align 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %268, align 2
  %269 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %269, align 4
  store i8 3, ptr %2, align 1
  store i8 -64, ptr %263, align 1
  %270 = load ptr, ptr %103, align 4
  %271 = call i32 @i2c_transfer(ptr noundef %270, ptr noundef nonnull %3, i32 noundef 1) #9
  %272 = icmp sgt i32 %271, -1
  %273 = icmp ne i32 %271, 1
  %274 = and i1 %272, %273
  %275 = select i1 %274, i32 -121, i32 %271
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %262
  %278 = load ptr, ptr %103, align 4
  %279 = getelementptr inbounds %struct.i2c_adapter, ptr %278, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %279, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %275, i32 noundef 3, i32 noundef 1) #10
  br label %280

280:                                              ; preds = %277, %262
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #9
  call fastcc void @ascot2e_set_reg_bits(ptr noundef %20, i8 noundef zeroext 12, i8 noundef zeroext 0, i8 noundef zeroext 48)
  store i32 %66, ptr %20, align 4
  br label %281

281:                                              ; preds = %280, %47, %1
  %282 = phi i32 [ 0, %280 ], [ -22, %47 ], [ -22, %1 ]
  ret i32 %282
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ascot2e_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 1000
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ascot2e_leave_power_save(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [11 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [11 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.ascot2e_priv, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %48, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %4) #9
  %10 = getelementptr inbounds i8, ptr %4, i32 1
  %11 = getelementptr inbounds i8, ptr %4, i32 3
  store i64 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.ascot2e_priv, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %17, align 4
  store i8 20, ptr %4, align 1
  store i16 4091, ptr %10, align 1
  %18 = getelementptr inbounds %struct.ascot2e_priv, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 1) #9
  %21 = icmp sgt i32 %20, -1
  %22 = icmp ne i32 %20, 1
  %23 = and i1 %21, %22
  %24 = select i1 %23, i32 -121, i32 %20
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %24, i32 noundef 20, i32 noundef 2) #10
  br label %29

29:                                               ; preds = %26, %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #9
  %30 = getelementptr inbounds i8, ptr %2, i32 1
  %31 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %31, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %32 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %32, align 4, !annotation !8
  %33 = load i8, ptr %13, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %3, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %36, align 4
  store i8 80, ptr %2, align 1
  store i8 0, ptr %30, align 1
  %37 = load ptr, ptr %18, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %3, i32 noundef 1) #9
  %39 = icmp sgt i32 %38, -1
  %40 = icmp ne i32 %38, 1
  %41 = and i1 %39, %40
  %42 = select i1 %41, i32 -121, i32 %38
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load ptr, ptr %18, align 4
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %42, i32 noundef 80, i32 noundef 1) #10
  br label %47

47:                                               ; preds = %44, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #9
  store i32 2, ptr %6, align 4
  br label %48

48:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ascot2e_set_reg_bits(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [11 x i8], align 1
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #9
  store i8 0, ptr %9, align 1, !annotation !8
  %10 = icmp eq i8 %3, -1
  br i1 %10, label %58, label %11

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 %1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %12 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #9, !annotation !8
  %13 = getelementptr inbounds %struct.ascot2e_priv, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %12, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %9, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ascot2e_priv, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %8, i32 noundef 1) #9
  %25 = icmp sgt i32 %24, -1
  %26 = icmp ne i32 %24, 1
  %27 = and i1 %25, %26
  %28 = select i1 %27, i32 -121, i32 %24
  %29 = icmp slt i32 %28, 0
  %30 = load ptr, ptr %22, align 4
  br i1 %29, label %31, label %37

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  %33 = load i8, ptr %13, align 4
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr %7, align 1
  %36 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %28, i32 noundef %34, i32 noundef %36) #10
  br label %51

37:                                               ; preds = %11
  %38 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef %18, i32 noundef 1) #9
  %39 = icmp sgt i32 %38, -1
  %40 = icmp ne i32 %38, 1
  %41 = and i1 %39, %40
  %42 = select i1 %41, i32 -121, i32 %38
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  %47 = load i8, ptr %13, align 4
  %48 = zext i8 %47 to i32
  %49 = load i8, ptr %7, align 1
  %50 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef %42, i32 noundef %48, i32 noundef %50) #10
  br label %51

51:                                               ; preds = %44, %31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  br label %81

52:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  %53 = and i8 %3, %2
  %54 = load i8, ptr %9, align 1
  %55 = xor i8 %3, -1
  %56 = and i8 %54, %55
  %57 = or i8 %56, %53
  br label %58

58:                                               ; preds = %52, %4
  %59 = phi i8 [ %57, %52 ], [ %2, %4 ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #9
  %60 = getelementptr inbounds i8, ptr %5, i32 1
  %61 = getelementptr inbounds i8, ptr %5, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %61, i8 0, i32 9, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %62 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %62, align 4, !annotation !8
  %63 = getelementptr inbounds %struct.ascot2e_priv, ptr %0, i32 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %6, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %67, align 4
  store i8 %1, ptr %5, align 1
  store i8 %59, ptr %60, align 1
  %68 = getelementptr inbounds %struct.ascot2e_priv, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %6, i32 noundef 1) #9
  %71 = icmp sgt i32 %70, -1
  %72 = icmp ne i32 %70, 1
  %73 = and i1 %71, %72
  %74 = select i1 %73, i32 -121, i32 %70
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %58
  %77 = load ptr, ptr %68, align 4
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 9
  %79 = zext i8 %1 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %74, i32 noundef %79, i32 noundef 1) #10
  br label %80

80:                                               ; preds = %76, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #9
  br label %81

81:                                               ; preds = %80, %51
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #9
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
