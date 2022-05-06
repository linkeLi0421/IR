; ModuleID = '/llk/IR/drivers/media/dvb-frontends/isl6423.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/isl6423.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isl6423_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22isl6423_attach\22\09\09\09\09\09"
module asm "__kstrtabns_isl6423_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.isl6423_dev = type { ptr, ptr, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.isl6423_config = type { i32, i32, i8, i8 }

@__param_str_verbose = internal constant [8 x i8] c"verbose\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global i32 0, align 4
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype249 = internal constant [21 x i8] c"parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose250 = internal constant [33 x i8] c"parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@__kstrtab_isl6423_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_isl6423_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_isl6423_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isl6423_attach to i32), ptr @__kstrtab_isl6423_attach, ptr @__kstrtabns_isl6423_attach }, section "___ksymtab+isl6423_attach", align 4
@__UNIQUE_ID_description251 = internal constant [24 x i8] c"description=ISL6423 SEC\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [20 x i8] c"author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [22 x i8] c"\013%s: I/O error <%d>\0A\00", align 1
@__func__.isl6423_set_current = private unnamed_addr constant [20 x i8] c"isl6423_set_current\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\013%s: write reg %02X\0A\00", align 1
@__func__.isl6423_write = private unnamed_addr constant [14 x i8] c"isl6423_write\00", align 1
@__func__.isl6423_set_modulation = private unnamed_addr constant [23 x i8] c"isl6423_set_modulation\00", align 1
@__func__.isl6423_set_voltage = private unnamed_addr constant [20 x i8] c"isl6423_set_voltage\00", align 1
@__func__.isl6423_voltage_boost = private unnamed_addr constant [22 x i8] c"isl6423_voltage_boost\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_verbose250, ptr @__UNIQUE_ID_verbosetype249, ptr @__ksymtab_isl6423_attach, ptr @__param_verbose], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @isl6423_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 16) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %118, label %13

13:                                               ; preds = %3
  store ptr %2, ptr %11, align 8
  %14 = getelementptr inbounds %struct.isl6423_dev, ptr %11, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  store ptr %11, ptr %15, align 4
  %16 = getelementptr inbounds %struct.isl6423_dev, ptr %11, i32 0, i32 2
  store i8 64, ptr %16, align 8
  %17 = getelementptr inbounds %struct.isl6423_dev, ptr %11, i32 0, i32 3
  store i8 96, ptr %17, align 1
  %18 = load i32, ptr %2, align 4
  %19 = add i32 %18, -1
  %20 = icmp ult i32 %19, 3
  %21 = trunc i32 %19 to i8
  %22 = add i8 %21, 65
  %23 = select i1 %20, i8 %22, i8 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #6
  store i8 %23, ptr %8, align 1
  %24 = getelementptr inbounds %struct.isl6423_config, ptr %2, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  %26 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 1, ptr %26, align 4, !annotation !8
  %27 = zext i8 %25 to i16
  store i16 %27, ptr %9, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %29, align 4
  %30 = load i32, ptr @verbose, align 4
  %31 = icmp ugt i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = zext i8 %23 to i32
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %33) #7
  br label %35

35:                                               ; preds = %32, %13
  %36 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %9, i32 noundef 1) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, ptr @verbose, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %36) #7
  br label %43

43:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  br label %72

44:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #6
  %45 = getelementptr inbounds %struct.isl6423_config, ptr %2, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 2
  %48 = or i8 %23, 16
  %49 = select i1 %47, i8 %48, i8 %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 %49, ptr %6, align 1
  %50 = load ptr, ptr %14, align 4
  %51 = load ptr, ptr %11, align 8
  %52 = getelementptr inbounds %struct.isl6423_config, ptr %51, i32 0, i32 2
  %53 = load i8, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  %54 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 1, ptr %54, align 4, !annotation !8
  %55 = zext i8 %53 to i16
  store i16 %55, ptr %7, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %57, align 4
  %58 = load i32, ptr @verbose, align 4
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = zext i8 %49 to i32
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %61) #7
  br label %63

63:                                               ; preds = %60, %44
  %64 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %7, i32 noundef 1) #6
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32, ptr @verbose, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %64) #7
  br label %71

71:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  br label %72

72:                                               ; preds = %71, %43
  %73 = phi i32 [ %36, %43 ], [ %64, %71 ]
  %74 = load i32, ptr @verbose, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %117, label %76

76:                                               ; preds = %72
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_set_current, i32 noundef %73) #7
  br label %117

78:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  store i8 %49, ptr %16, align 8
  %79 = load ptr, ptr %15, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.isl6423_config, ptr %80, i32 0, i32 3
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i8 48, i8 40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 %84, ptr %4, align 1
  %85 = getelementptr inbounds %struct.isl6423_dev, ptr %79, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.isl6423_config, ptr %80, i32 0, i32 2
  %88 = load i8, ptr %87, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %89 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 1, ptr %89, align 4, !annotation !8
  %90 = zext i8 %88 to i16
  store i16 %90, ptr %5, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %91, align 2
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %92, align 4
  %93 = load i32, ptr @verbose, align 4
  %94 = icmp ugt i32 %93, 3
  br i1 %94, label %95, label %98

95:                                               ; preds = %78
  %96 = zext i8 %84 to i32
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %96) #7
  br label %98

98:                                               ; preds = %95, %78
  %99 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %5, i32 noundef 1) #6
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, ptr @verbose, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  br label %117

105:                                              ; preds = %101
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %99) #7
  %107 = load i32, ptr @verbose, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %105
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_set_modulation, i32 noundef %99) #7
  br label %117

111:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  %112 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 4
  store ptr @isl6423_release, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  store ptr @isl6423_set_voltage, ptr %113, align 4
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 26
  store ptr @isl6423_voltage_boost, ptr %114, align 4
  %115 = load i32, ptr @verbose, align 4
  %116 = getelementptr inbounds %struct.isl6423_dev, ptr %11, i32 0, i32 4
  store i32 %115, ptr %116, align 4
  br label %118

117:                                              ; preds = %109, %105, %104, %76, %72
  call void @kfree(ptr noundef nonnull %11) #6
  store ptr null, ptr %15, align 4
  br label %118

118:                                              ; preds = %117, %111, %3
  %119 = phi ptr [ null, %117 ], [ %0, %111 ], [ null, %3 ]
  ret ptr %119
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isl6423_release(ptr nocapture noundef %0) #0 {
  %2 = tail call i32 @isl6423_set_voltage(ptr noundef %0, i32 noundef 2)
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #6
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl6423_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.isl6423_dev, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.isl6423_dev, ptr %8, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  switch i32 %1, label %23 [
    i32 2, label %13
    i32 0, label %15
    i32 1, label %19
  ]

13:                                               ; preds = %2
  %14 = and i8 %12, -17
  br label %23

15:                                               ; preds = %2
  %16 = and i8 %12, -20
  %17 = or i8 %16, 16
  %18 = or i8 %10, 8
  br label %23

19:                                               ; preds = %2
  %20 = and i8 %12, -20
  %21 = or i8 %20, 18
  %22 = or i8 %10, 8
  br label %23

23:                                               ; preds = %19, %15, %13, %2
  %24 = phi i8 [ %12, %2 ], [ %21, %19 ], [ %17, %15 ], [ %14, %13 ]
  %25 = phi i8 [ %10, %2 ], [ %22, %19 ], [ %18, %15 ], [ %10, %13 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %25, ptr %5, align 1
  %26 = getelementptr inbounds %struct.isl6423_dev, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.isl6423_config, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %31 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 1, ptr %31, align 4, !annotation !8
  %32 = zext i8 %30 to i16
  store i16 %32, ptr %6, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %34, align 4
  %35 = load i32, ptr @verbose, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = zext i8 %25 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %38) #7
  br label %40

40:                                               ; preds = %37, %23
  %41 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %6, i32 noundef 1) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, ptr @verbose, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %41) #7
  br label %48

48:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %73

49:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %24, ptr %3, align 1
  %50 = load ptr, ptr %26, align 4
  %51 = load ptr, ptr %8, align 4
  %52 = getelementptr inbounds %struct.isl6423_config, ptr %51, i32 0, i32 2
  %53 = load i8, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %54 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %54, align 4, !annotation !8
  %55 = zext i8 %53 to i16
  store i16 %55, ptr %4, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %57, align 4
  %58 = load i32, ptr @verbose, align 4
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = zext i8 %24 to i32
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %61) #7
  br label %63

63:                                               ; preds = %60, %49
  %64 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %4, i32 noundef 1) #6
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, ptr @verbose, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %64) #7
  br label %71

71:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %73

72:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  store i8 %25, ptr %9, align 4
  store i8 %24, ptr %11, align 1
  br label %79

73:                                               ; preds = %71, %48
  %74 = phi i32 [ %41, %48 ], [ %64, %71 ]
  %75 = load i32, ptr @verbose, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_set_voltage, i32 noundef %74) #7
  br label %79

79:                                               ; preds = %77, %73, %72
  %80 = phi i32 [ 0, %72 ], [ %74, %73 ], [ %74, %77 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isl6423_voltage_boost(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.isl6423_dev, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.isl6423_dev, ptr %8, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i32 %1, 0
  %14 = or i8 %12, 17
  %15 = and i8 %12, -18
  %16 = or i8 %15, 16
  %17 = select i1 %13, i8 %16, i8 %14
  %18 = or i8 %10, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %18, ptr %5, align 1
  %19 = getelementptr inbounds %struct.isl6423_dev, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.isl6423_config, ptr %21, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %24 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 1, ptr %24, align 4, !annotation !8
  %25 = zext i8 %23 to i16
  store i16 %25, ptr %6, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %27, align 4
  %28 = load i32, ptr @verbose, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = zext i8 %18 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %31) #7
  br label %33

33:                                               ; preds = %30, %2
  %34 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #6
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, ptr @verbose, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %34) #7
  br label %41

41:                                               ; preds = %39, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %66

42:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %17, ptr %3, align 1
  %43 = load ptr, ptr %19, align 4
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr inbounds %struct.isl6423_config, ptr %44, i32 0, i32 2
  %46 = load i8, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %47 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %47, align 4, !annotation !8
  %48 = zext i8 %46 to i16
  store i16 %48, ptr %4, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %50, align 4
  %51 = load i32, ptr @verbose, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = zext i8 %17 to i32
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %54) #7
  br label %56

56:                                               ; preds = %53, %42
  %57 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %4, i32 noundef 1) #6
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, ptr @verbose, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_write, i32 noundef %57) #7
  br label %64

64:                                               ; preds = %62, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %66

65:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  store i8 %18, ptr %9, align 4
  store i8 %17, ptr %11, align 1
  br label %72

66:                                               ; preds = %64, %41
  %67 = phi i32 [ %34, %41 ], [ %57, %64 ]
  %68 = load i32, ptr @verbose, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.isl6423_voltage_boost, i32 noundef %67) #7
  br label %72

72:                                               ; preds = %70, %66, %65
  %73 = phi i32 [ 0, %65 ], [ %67, %66 ], [ %67, %70 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
