; ModuleID = '/llk/IR/drivers/net/ethernet/ti/cpsw-common.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_cm_get_macid:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_cm_get_macid\22\09\09\09\09\09"
module asm "__kstrtabns_ti_cm_get_macid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"ti,dm8148\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ti,am33xx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ti,am3517-emac\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ti,dm816-emac\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ti,am43\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ti,dra7\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"incompatible machine/device type for reading mac address\0A\00", align 1
@__kstrtab_ti_cm_get_macid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_cm_get_macid = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_cm_get_macid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_cm_get_macid to i32), ptr @__kstrtab_ti_cm_get_macid, ptr @__kstrtabns_ti_cm_get_macid }, section "___ksymtab_gpl+ti_cm_get_macid", align 4
@__UNIQUE_ID_file273 = internal constant [53 x i8] c"cpsw_common.file=drivers/net/ethernet/ti/cpsw-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [24 x i8] c"cpsw_common.license=GPL\00", section ".modinfo", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__ksymtab_ti_cm_get_macid], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ti_cm_get_macid(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %16, ptr noundef nonnull @.str.7) #4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = ptrtoint ptr %17 to i32
  %21 = icmp eq ptr %17, inttoptr (i32 -19 to ptr)
  %22 = select i1 %21, i32 0, i32 %20
  br label %46

23:                                               ; preds = %14
  %24 = shl i32 %1, 3
  %25 = add i32 %24, 1584
  %26 = call i32 @regmap_read(ptr noundef %17, i32 noundef %25, ptr noundef nonnull %10) #4
  %27 = add i32 %24, 1588
  %28 = call i32 @regmap_read(ptr noundef %17, i32 noundef %27, ptr noundef nonnull %11) #4
  %29 = load i32, ptr %10, align 4
  %30 = lshr i32 %29, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr i8, ptr %2, i32 5
  store i8 %31, ptr %32, align 1
  %33 = trunc i32 %29 to i8
  %34 = getelementptr i8, ptr %2, i32 4
  store i8 %33, ptr %34, align 1
  %35 = load i32, ptr %11, align 4
  %36 = lshr i32 %35, 24
  %37 = trunc i32 %36 to i8
  %38 = getelementptr i8, ptr %2, i32 3
  store i8 %37, ptr %38, align 1
  %39 = lshr i32 %35, 16
  %40 = trunc i32 %39 to i8
  %41 = getelementptr i8, ptr %2, i32 2
  store i8 %40, ptr %41, align 1
  %42 = lshr i32 %35, 8
  %43 = trunc i32 %42 to i8
  %44 = getelementptr i8, ptr %2, i32 1
  store i8 %43, ptr %44, align 1
  %45 = trunc i32 %35 to i8
  store i8 %45, ptr %2, align 1
  br label %46

46:                                               ; preds = %23, %19
  %47 = phi i32 [ 0, %23 ], [ %22, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  br label %171

48:                                               ; preds = %3
  %49 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %85, label %51

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  store i32 0, ptr %9, align 4, !annotation !8
  %52 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %53 = load ptr, ptr %52, align 8
  %54 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %53, ptr noundef nonnull @.str.7) #4
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = ptrtoint ptr %54 to i32
  %58 = icmp eq ptr %54, inttoptr (i32 -19 to ptr)
  %59 = select i1 %58, i32 0, i32 %57
  br label %83

60:                                               ; preds = %51
  %61 = shl i32 %1, 3
  %62 = add i32 %61, 1584
  %63 = call i32 @regmap_read(ptr noundef %54, i32 noundef %62, ptr noundef nonnull %8) #4
  %64 = add i32 %61, 1588
  %65 = call i32 @regmap_read(ptr noundef %54, i32 noundef %64, ptr noundef nonnull %9) #4
  %66 = load i32, ptr %8, align 4
  %67 = lshr i32 %66, 8
  %68 = trunc i32 %67 to i8
  %69 = getelementptr i8, ptr %2, i32 5
  store i8 %68, ptr %69, align 1
  %70 = trunc i32 %66 to i8
  %71 = getelementptr i8, ptr %2, i32 4
  store i8 %70, ptr %71, align 1
  %72 = load i32, ptr %9, align 4
  %73 = lshr i32 %72, 24
  %74 = trunc i32 %73 to i8
  %75 = getelementptr i8, ptr %2, i32 3
  store i8 %74, ptr %75, align 1
  %76 = lshr i32 %72, 16
  %77 = trunc i32 %76 to i8
  %78 = getelementptr i8, ptr %2, i32 2
  store i8 %77, ptr %78, align 1
  %79 = lshr i32 %72, 8
  %80 = trunc i32 %79 to i8
  %81 = getelementptr i8, ptr %2, i32 1
  store i8 %80, ptr %81, align 1
  %82 = trunc i32 %72 to i8
  store i8 %82, ptr %2, align 1
  br label %83

83:                                               ; preds = %60, %56
  %84 = phi i32 [ 0, %60 ], [ %59, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  br label %171

85:                                               ; preds = %48
  %86 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %87 = load ptr, ptr %86, align 8
  %88 = tail call i32 @of_device_is_compatible(ptr noundef %87, ptr noundef nonnull @.str.2) #4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %123, label %90

90:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  store i32 0, ptr %7, align 4, !annotation !8
  %91 = load ptr, ptr %86, align 8
  %92 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %91, ptr noundef nonnull @.str.7) #4
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = ptrtoint ptr %92 to i32
  %96 = icmp eq ptr %92, inttoptr (i32 -19 to ptr)
  %97 = select i1 %96, i32 0, i32 %95
  br label %121

98:                                               ; preds = %90
  %99 = shl i32 %1, 3
  %100 = add i32 %99, 272
  %101 = call i32 @regmap_read(ptr noundef %92, i32 noundef %100, ptr noundef nonnull %6) #4
  %102 = add i32 %99, 276
  %103 = call i32 @regmap_read(ptr noundef %92, i32 noundef %102, ptr noundef nonnull %7) #4
  %104 = load i32, ptr %7, align 4
  %105 = lshr i32 %104, 16
  %106 = trunc i32 %105 to i8
  store i8 %106, ptr %2, align 1
  %107 = lshr i32 %104, 8
  %108 = trunc i32 %107 to i8
  %109 = getelementptr i8, ptr %2, i32 1
  store i8 %108, ptr %109, align 1
  %110 = trunc i32 %104 to i8
  %111 = getelementptr i8, ptr %2, i32 2
  store i8 %110, ptr %111, align 1
  %112 = load i32, ptr %6, align 4
  %113 = lshr i32 %112, 16
  %114 = trunc i32 %113 to i8
  %115 = getelementptr i8, ptr %2, i32 3
  store i8 %114, ptr %115, align 1
  %116 = lshr i32 %112, 8
  %117 = trunc i32 %116 to i8
  %118 = getelementptr i8, ptr %2, i32 4
  store i8 %117, ptr %118, align 1
  %119 = trunc i32 %112 to i8
  %120 = getelementptr i8, ptr %2, i32 5
  store i8 %119, ptr %120, align 1
  br label %121

121:                                              ; preds = %98, %94
  %122 = phi i32 [ 0, %98 ], [ %97, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  br label %171

123:                                              ; preds = %85
  %124 = load ptr, ptr %86, align 8
  %125 = tail call i32 @of_device_is_compatible(ptr noundef %124, ptr noundef nonnull @.str.3) #4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %160, label %127

127:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  %128 = load ptr, ptr %86, align 8
  %129 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %128, ptr noundef nonnull @.str.7) #4
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = ptrtoint ptr %129 to i32
  %133 = icmp eq ptr %129, inttoptr (i32 -19 to ptr)
  %134 = select i1 %133, i32 0, i32 %132
  br label %158

135:                                              ; preds = %127
  %136 = shl i32 %1, 3
  %137 = add i32 %136, 48
  %138 = call i32 @regmap_read(ptr noundef %129, i32 noundef %137, ptr noundef nonnull %4) #4
  %139 = add i32 %136, 52
  %140 = call i32 @regmap_read(ptr noundef %129, i32 noundef %139, ptr noundef nonnull %5) #4
  %141 = load i32, ptr %4, align 4
  %142 = lshr i32 %141, 8
  %143 = trunc i32 %142 to i8
  %144 = getelementptr i8, ptr %2, i32 5
  store i8 %143, ptr %144, align 1
  %145 = trunc i32 %141 to i8
  %146 = getelementptr i8, ptr %2, i32 4
  store i8 %145, ptr %146, align 1
  %147 = load i32, ptr %5, align 4
  %148 = lshr i32 %147, 24
  %149 = trunc i32 %148 to i8
  %150 = getelementptr i8, ptr %2, i32 3
  store i8 %149, ptr %150, align 1
  %151 = lshr i32 %147, 16
  %152 = trunc i32 %151 to i8
  %153 = getelementptr i8, ptr %2, i32 2
  store i8 %152, ptr %153, align 1
  %154 = lshr i32 %147, 8
  %155 = trunc i32 %154 to i8
  %156 = getelementptr i8, ptr %2, i32 1
  store i8 %155, ptr %156, align 1
  %157 = trunc i32 %147 to i8
  store i8 %157, ptr %2, align 1
  br label %158

158:                                              ; preds = %135, %131
  %159 = phi i32 [ 0, %135 ], [ %134, %131 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %171

160:                                              ; preds = %123
  %161 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = tail call fastcc i32 @cpsw_am33xx_cm_get_macid(ptr noundef %0, i16 noundef zeroext 1584, i32 noundef %1, ptr noundef %2)
  br label %171

165:                                              ; preds = %160
  %166 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = tail call fastcc i32 @davinci_emac_3517_get_macid(ptr noundef %0, i16 noundef zeroext 1300, i32 noundef %1, ptr noundef %2)
  br label %171

170:                                              ; preds = %165
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6) #5
  br label %171

171:                                              ; preds = %170, %168, %163, %158, %121, %83, %46
  %172 = phi i32 [ %47, %46 ], [ %84, %83 ], [ %122, %121 ], [ %159, %158 ], [ %164, %163 ], [ %169, %168 ], [ -2, %170 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_am33xx_cm_get_macid(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %8, ptr noundef nonnull @.str.7) #4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = ptrtoint ptr %9 to i32
  %13 = icmp eq ptr %9, inttoptr (i32 -19 to ptr)
  %14 = select i1 %13, i32 0, i32 %12
  br label %39

15:                                               ; preds = %4
  %16 = zext i16 %1 to i32
  %17 = shl i32 %2, 3
  %18 = add i32 %17, %16
  %19 = call i32 @regmap_read(ptr noundef %9, i32 noundef %18, ptr noundef nonnull %5) #4
  %20 = add i32 %18, 4
  %21 = call i32 @regmap_read(ptr noundef %9, i32 noundef %20, ptr noundef nonnull %6) #4
  %22 = load i32, ptr %5, align 4
  %23 = lshr i32 %22, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr i8, ptr %3, i32 5
  store i8 %24, ptr %25, align 1
  %26 = trunc i32 %22 to i8
  %27 = getelementptr i8, ptr %3, i32 4
  store i8 %26, ptr %27, align 1
  %28 = load i32, ptr %6, align 4
  %29 = lshr i32 %28, 24
  %30 = trunc i32 %29 to i8
  %31 = getelementptr i8, ptr %3, i32 3
  store i8 %30, ptr %31, align 1
  %32 = lshr i32 %28, 16
  %33 = trunc i32 %32 to i8
  %34 = getelementptr i8, ptr %3, i32 2
  store i8 %33, ptr %34, align 1
  %35 = lshr i32 %28, 8
  %36 = trunc i32 %35 to i8
  %37 = getelementptr i8, ptr %3, i32 1
  store i8 %36, ptr %37, align 1
  %38 = trunc i32 %28 to i8
  store i8 %38, ptr %3, align 1
  br label %39

39:                                               ; preds = %15, %11
  %40 = phi i32 [ 0, %15 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @davinci_emac_3517_get_macid(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %8, ptr noundef nonnull @.str.7) #4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = ptrtoint ptr %9 to i32
  %13 = icmp eq ptr %9, inttoptr (i32 -19 to ptr)
  %14 = select i1 %13, i32 0, i32 %12
  br label %39

15:                                               ; preds = %4
  %16 = zext i16 %1 to i32
  %17 = shl i32 %2, 3
  %18 = add i32 %17, %16
  %19 = call i32 @regmap_read(ptr noundef %9, i32 noundef %18, ptr noundef nonnull %5) #4
  %20 = add i32 %18, 4
  %21 = call i32 @regmap_read(ptr noundef %9, i32 noundef %20, ptr noundef nonnull %6) #4
  %22 = load i32, ptr %6, align 4
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %3, align 1
  %25 = lshr i32 %22, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr i8, ptr %3, i32 1
  store i8 %26, ptr %27, align 1
  %28 = trunc i32 %22 to i8
  %29 = getelementptr i8, ptr %3, i32 2
  store i8 %28, ptr %29, align 1
  %30 = load i32, ptr %5, align 4
  %31 = lshr i32 %30, 16
  %32 = trunc i32 %31 to i8
  %33 = getelementptr i8, ptr %3, i32 3
  store i8 %32, ptr %33, align 1
  %34 = lshr i32 %30, 8
  %35 = trunc i32 %34 to i8
  %36 = getelementptr i8, ptr %3, i32 4
  store i8 %35, ptr %36, align 1
  %37 = trunc i32 %30 to i8
  %38 = getelementptr i8, ptr %3, i32 5
  store i8 %37, ptr %38, align 1
  br label %39

39:                                               ; preds = %15, %11
  %40 = phi i32 [ 0, %15 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
