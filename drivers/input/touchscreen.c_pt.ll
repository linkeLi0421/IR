; ModuleID = '/llk/IR/drivers/input/touchscreen.c_pt.bc'
source_filename = "../drivers/input/touchscreen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touchscreen_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22touchscreen_parse_properties\22\09\09\09\09\09"
module asm "__kstrtabns_touchscreen_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touchscreen_set_mt_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22touchscreen_set_mt_pos\22\09\09\09\09\09"
module asm "__kstrtabns_touchscreen_set_mt_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touchscreen_report_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22touchscreen_report_pos\22\09\09\09\09\09"
module asm "__kstrtabns_touchscreen_report_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_mt_pos = type { i16, i16 }

@.str = private unnamed_addr constant [18 x i8] c"touchscreen-min-x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"touchscreen-size-x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"touchscreen-min-y\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"touchscreen-size-y\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-y\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"touchscreen-max-pressure\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"touchscreen-fuzz-pressure\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-x\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-y\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"touchscreen-swapped-x-y\00", align 1
@__kstrtab_touchscreen_parse_properties = external dso_local constant [0 x i8], align 1
@__kstrtabns_touchscreen_parse_properties = external dso_local constant [0 x i8], align 1
@__ksymtab_touchscreen_parse_properties = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touchscreen_parse_properties to i32), ptr @__kstrtab_touchscreen_parse_properties, ptr @__kstrtabns_touchscreen_parse_properties }, section "___ksymtab+touchscreen_parse_properties", align 4
@__kstrtab_touchscreen_set_mt_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_touchscreen_set_mt_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_touchscreen_set_mt_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touchscreen_set_mt_pos to i32), ptr @__kstrtab_touchscreen_set_mt_pos, ptr @__kstrtabns_touchscreen_set_mt_pos }, section "___ksymtab+touchscreen_set_mt_pos", align 4
@__kstrtab_touchscreen_report_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_touchscreen_report_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_touchscreen_report_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touchscreen_report_pos to i32), ptr @__kstrtab_touchscreen_report_pos, ptr @__kstrtabns_touchscreen_report_pos }, section "___ksymtab+touchscreen_report_pos", align 4
@__UNIQUE_ID_file202 = internal constant [41 x i8] c"input_core.file=drivers/input/input-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license203 = internal constant [26 x i8] c"input_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description204 = internal constant [75 x i8] c"input_core.description=Helper functions for touchscreens and other devices\00", section ".modinfo", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Parameters are specified but the axis %lu is not set up\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description204, ptr @__UNIQUE_ID_file202, ptr @__UNIQUE_ID_license203, ptr @__ksymtab_touchscreen_parse_properties, ptr @__ksymtab_touchscreen_report_pos, ptr @__ksymtab_touchscreen_set_mt_pos], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @touchscreen_parse_properties(ptr noundef %0, i1 noundef zeroext %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.input_absinfo, align 4
  %13 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @input_alloc_absinfo(ptr noundef %0) #6
  %15 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %213, label %18

18:                                               ; preds = %3
  %19 = select i1 %1, i32 53, i32 0
  %20 = select i1 %1, i32 54, i32 1
  %21 = getelementptr %struct.input_absinfo, ptr %16, i32 %19, i32 1
  %22 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 0, ptr %11, align 4, !annotation !8
  %23 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull %11, i32 noundef 1) #6
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %11, align 4
  %26 = select i1 %24, i32 %25, i32 %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  %27 = load ptr, ptr %15, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = getelementptr %struct.input_absinfo, ptr %27, i32 %19, i32 2
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = phi i32 [ %31, %29 ], [ 0, %18 ]
  %34 = add i32 %33, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 0, ptr %10, align 4, !annotation !8
  %35 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull %10, i32 noundef 1) #6
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr %10, align 4
  %38 = select i1 %36, i32 %37, i32 %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  %39 = or i1 %24, %36
  %40 = load ptr, ptr %15, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = getelementptr %struct.input_absinfo, ptr %40, i32 %19, i32 3
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %32
  %46 = phi i32 [ %44, %42 ], [ 0, %32 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 0, ptr %9, align 4, !annotation !8
  %47 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef nonnull %9, i32 noundef 1) #6
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr %9, align 4
  %50 = select i1 %48, i32 %49, i32 %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  %51 = or i1 %39, %48
  br i1 %51, label %52, label %69

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %54 = lshr i32 %19, 5
  %55 = getelementptr i32, ptr %53, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %19, 21
  %58 = shl nuw nsw i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.11, i32 noundef %19) #7
  br label %69

63:                                               ; preds = %52
  %64 = add i32 %38, -1
  %65 = load ptr, ptr %15, align 4
  %66 = getelementptr %struct.input_absinfo, ptr %65, i32 %19, i32 1
  store i32 %26, ptr %66, align 4
  %67 = getelementptr %struct.input_absinfo, ptr %65, i32 %19, i32 2
  store i32 %64, ptr %67, align 4
  %68 = getelementptr %struct.input_absinfo, ptr %65, i32 %19, i32 3
  store i32 %50, ptr %68, align 4
  br label %69

69:                                               ; preds = %63, %61, %45
  %70 = load ptr, ptr %15, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = getelementptr %struct.input_absinfo, ptr %70, i32 %20, i32 1
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %74, %72 ], [ 0, %69 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 0, ptr %8, align 4, !annotation !8
  %77 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %8, i32 noundef 1) #6
  %78 = icmp eq i32 %77, 0
  %79 = load i32, ptr %8, align 4
  %80 = select i1 %78, i32 %79, i32 %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %81 = load ptr, ptr %15, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %75
  %84 = getelementptr %struct.input_absinfo, ptr %81, i32 %20, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  br label %87

87:                                               ; preds = %83, %75
  %88 = phi i32 [ %86, %83 ], [ 1, %75 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %89 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull %7, i32 noundef 1) #6
  %90 = icmp eq i32 %89, 0
  %91 = load i32, ptr %7, align 4
  %92 = select i1 %90, i32 %91, i32 %88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %93 = or i1 %78, %90
  %94 = load ptr, ptr %15, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = getelementptr %struct.input_absinfo, ptr %94, i32 %20, i32 3
  %98 = load i32, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %87
  %100 = phi i32 [ %98, %96 ], [ 0, %87 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %101 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, i32 noundef 1) #6
  %102 = icmp eq i32 %101, 0
  %103 = load i32, ptr %6, align 4
  %104 = select i1 %102, i32 %103, i32 %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %105 = or i1 %93, %102
  br i1 %105, label %106, label %123

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %108 = lshr i32 %20, 5
  %109 = getelementptr i32, ptr %107, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %20, 23
  %112 = shl nuw nsw i32 1, %111
  %113 = and i32 %110, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.11, i32 noundef %20) #7
  br label %123

117:                                              ; preds = %106
  %118 = add i32 %92, -1
  %119 = load ptr, ptr %15, align 4
  %120 = getelementptr %struct.input_absinfo, ptr %119, i32 %20, i32 1
  store i32 %80, ptr %120, align 4
  %121 = getelementptr %struct.input_absinfo, ptr %119, i32 %20, i32 2
  store i32 %118, ptr %121, align 4
  %122 = getelementptr %struct.input_absinfo, ptr %119, i32 %20, i32 3
  store i32 %104, ptr %122, align 4
  br label %123

123:                                              ; preds = %117, %115, %99
  %124 = select i1 %1, i32 58, i32 24
  %125 = load ptr, ptr %15, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = getelementptr %struct.input_absinfo, ptr %125, i32 %124, i32 2
  %129 = load i32, ptr %128, align 4
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i32 [ %129, %127 ], [ 0, %123 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %132 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1) #6
  %133 = icmp eq i32 %132, 0
  %134 = load i32, ptr %5, align 4
  %135 = select i1 %133, i32 %134, i32 %131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %136 = load ptr, ptr %15, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %130
  %139 = getelementptr %struct.input_absinfo, ptr %136, i32 %124, i32 3
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %130
  %142 = phi i32 [ %140, %138 ], [ 0, %130 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %143 = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 1) #6
  %144 = icmp eq i32 %143, 0
  %145 = load i32, ptr %4, align 4
  %146 = select i1 %144, i32 %145, i32 %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %147 = or i1 %133, %144
  br i1 %147, label %148, label %164

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 8
  %150 = lshr i32 %124, 5
  %151 = getelementptr i32, ptr %149, i32 %150
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %124, 26
  %154 = shl nuw nsw i32 1, %153
  %155 = and i32 %152, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.11, i32 noundef %124) #7
  br label %164

159:                                              ; preds = %148
  %160 = load ptr, ptr %15, align 4
  %161 = getelementptr %struct.input_absinfo, ptr %160, i32 %124, i32 1
  store i32 0, ptr %161, align 4
  %162 = getelementptr %struct.input_absinfo, ptr %160, i32 %124, i32 2
  store i32 %135, ptr %162, align 4
  %163 = getelementptr %struct.input_absinfo, ptr %160, i32 %124, i32 3
  store i32 %146, ptr %163, align 4
  br label %164

164:                                              ; preds = %159, %157, %141
  %165 = icmp eq ptr %2, null
  br i1 %165, label %213, label %166

166:                                              ; preds = %164
  %167 = load ptr, ptr %15, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = getelementptr %struct.input_absinfo, ptr %167, i32 %19, i32 2
  %171 = load i32, ptr %170, align 4
  br label %172

172:                                              ; preds = %169, %166
  %173 = phi i32 [ %171, %169 ], [ 0, %166 ]
  store i32 %173, ptr %2, align 4
  %174 = load ptr, ptr %15, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = getelementptr %struct.input_absinfo, ptr %174, i32 %20, i32 2
  %178 = load i32, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %172
  %180 = phi i32 [ %178, %176 ], [ 0, %172 ]
  %181 = getelementptr inbounds %struct.touchscreen_properties, ptr %2, i32 0, i32 1
  store i32 %180, ptr %181, align 4
  %182 = call zeroext i1 @device_property_present(ptr noundef %14, ptr noundef nonnull @.str.8) #6
  %183 = getelementptr inbounds %struct.touchscreen_properties, ptr %2, i32 0, i32 2
  %184 = zext i1 %182 to i8
  store i8 %184, ptr %183, align 4
  br i1 %182, label %185, label %192

185:                                              ; preds = %179
  %186 = load ptr, ptr %15, align 4
  %187 = getelementptr %struct.input_absinfo, ptr %186, i32 %19, i32 1
  %188 = load i32, ptr %187, align 4
  %189 = getelementptr %struct.input_absinfo, ptr %186, i32 %19, i32 2
  %190 = load i32, ptr %189, align 4
  %191 = sub i32 %190, %188
  store i32 %191, ptr %189, align 4
  store i32 0, ptr %187, align 4
  br label %192

192:                                              ; preds = %185, %179
  %193 = call zeroext i1 @device_property_present(ptr noundef %14, ptr noundef nonnull @.str.9) #6
  %194 = getelementptr inbounds %struct.touchscreen_properties, ptr %2, i32 0, i32 3
  %195 = zext i1 %193 to i8
  store i8 %195, ptr %194, align 1
  br i1 %193, label %196, label %203

196:                                              ; preds = %192
  %197 = load ptr, ptr %15, align 4
  %198 = getelementptr %struct.input_absinfo, ptr %197, i32 %20, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = getelementptr %struct.input_absinfo, ptr %197, i32 %20, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = sub i32 %201, %199
  store i32 %202, ptr %200, align 4
  store i32 0, ptr %198, align 4
  br label %203

203:                                              ; preds = %196, %192
  %204 = call zeroext i1 @device_property_present(ptr noundef %14, ptr noundef nonnull @.str.10) #6
  %205 = getelementptr inbounds %struct.touchscreen_properties, ptr %2, i32 0, i32 4
  %206 = zext i1 %204 to i8
  store i8 %206, ptr %205, align 2
  br i1 %204, label %207, label %213

207:                                              ; preds = %203
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12)
  %208 = load ptr, ptr %15, align 4
  %209 = getelementptr %struct.input_absinfo, ptr %208, i32 %19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, ptr noundef align 4 dereferenceable(24) %209, i32 24, i1 false)
  %210 = getelementptr %struct.input_absinfo, ptr %208, i32 %20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %209, ptr noundef align 4 dereferenceable(24) %210, i32 24, i1 false)
  %211 = load ptr, ptr %15, align 4
  %212 = getelementptr %struct.input_absinfo, ptr %211, i32 %20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %212, ptr noundef nonnull align 4 dereferenceable(24) %12, i32 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12)
  br label %213

213:                                              ; preds = %207, %203, %164, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @touchscreen_set_mt_pos(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 4
  %10 = sub i32 %9, %2
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %2, %4 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %3
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i32 [ %3, %11 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 4
  %23 = load i8, ptr %22, align 2, !range !9
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i32 %12, i32 %21
  %26 = select i1 %24, i32 %21, i32 %12
  %27 = trunc i32 %25 to i16
  store i16 %27, ptr %0, align 2
  %28 = trunc i32 %26 to i16
  %29 = getelementptr inbounds %struct.input_mt_pos, ptr %0, i32 0, i32 1
  store i16 %28, ptr %29, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @touchscreen_report_pos(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 2
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %1, align 4
  %11 = sub i32 %10, %2
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %2, %5 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 3
  %15 = load i8, ptr %14, align 1, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %19, %3
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %3, %12 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.touchscreen_properties, ptr %1, i32 0, i32 4
  %24 = load i8, ptr %23, align 2, !range !9
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 %13, i32 %22
  %27 = select i1 %25, i32 %22, i32 %13
  %28 = select i1 %4, i32 53, i32 0
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef %28, i32 noundef %26) #6
  %29 = select i1 %4, i32 54, i32 1
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef %29, i32 noundef %27) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i8 0, i8 2}
