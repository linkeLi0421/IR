; ModuleID = '/llk/IR/drivers/perf/arm_pmu_platform.c_pt.bc'
source_filename = "../drivers/perf/arm_pmu_platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.arm_pmu = type { %struct.pmu, %struct.cpumask, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i32], [2 x i32], ptr, ptr, %struct.hlist_node, %struct.notifier_block, [5 x ptr], i64, i32 }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pmu_hw_events = type { [32 x ptr], [1 x i32], %struct.raw_spinlock, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pmu_probe_info = type { i32, i32, ptr }

@.str = private unnamed_addr constant [18 x i8] c"secure-reg-access\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"hw perfevents: failed to probe PMU!\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"hw perfevents: failed to register PMU devices!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to count PMU IRQs\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"hw perfevents: no irqs for PMU, sampling events not supported\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"hw perfevents: no interrupt-affinity property, guessing.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"drivers/perf/arm_pmu_platform.c\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"hw perfevents: multiple PPIs or mismatched SPI/PPI detected\0A\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"hw perfevents: multiple PMU IRQs for the same CPU detected\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"interrupt-affinity\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"hw perfevents: failed to parse interrupt-affinity[%d]\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"hw perfevents: failed to find logical CPU for %pOFn\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\016hw perfevents: probing PMU on CPU %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arm_pmu_device_probe(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @armpmu_alloc() #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %207, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 21
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @platform_irq_count(ptr noundef %0) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %103, label %14

14:                                               ; preds = %8
  switch i32 %12, label %46 [
    i32 0, label %15
    i32 1, label %20
  ]

15:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.4) #8
  %16 = getelementptr inbounds %struct.pmu, ptr %6, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 1
  store i32 -1, ptr %19, align 4
  br label %106

20:                                               ; preds = %14
  %21 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = tail call zeroext i1 @irq_check_status_bit(i32 noundef %21, i32 noundef 131072) #7
  br i1 %24, label %25, label %46

25:                                               ; preds = %23
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 1
  %28 = tail call i32 @irq_get_percpu_devid_partition(i32 noundef %21, ptr noundef %27) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %205

30:                                               ; preds = %25
  %31 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %27) #9
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %106

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.pmu_hw_events, ptr %26, i32 0, i32 4
  %36 = ptrtoint ptr %35 to i32
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ %31, %34 ], [ %43, %37 ]
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %36
  %42 = inttoptr i32 %41 to ptr
  store i32 %21, ptr %42, align 4
  %43 = tail call i32 @cpumask_next(i32 noundef %38, ptr noundef %27) #9
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %37, label %106

46:                                               ; preds = %23, %20, %14
  %47 = load i32, ptr @nr_cpu_ids, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %51 = load ptr, ptr %50, align 8
  %52 = tail call ptr @of_find_property(ptr noundef %51, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.5) #8
  br label %55

55:                                               ; preds = %54, %49, %46
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %57 = getelementptr inbounds %struct.pmu_hw_events, ptr %11, i32 0, i32 4
  %58 = ptrtoint ptr %57 to i32
  %59 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 1
  br label %60

60:                                               ; preds = %100, %55
  %61 = phi i32 [ 0, %55 ], [ %101, %100 ]
  %62 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef %61) #7
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %65, !prof !8

64:                                               ; preds = %60
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 131, i32 noundef 9, ptr noundef null) #7
  br label %100

65:                                               ; preds = %60
  %66 = call zeroext i1 @irq_check_status_bit(i32 noundef %62, i32 noundef 131072) #7
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.7) #8
  br label %205

68:                                               ; preds = %65
  %69 = load ptr, ptr %56, align 8
  %70 = call ptr @of_find_property(ptr noundef %69, ptr noundef nonnull @.str.9, ptr noundef null) #7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %56, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #7, !annotation !9
  %74 = call i32 @__of_parse_phandle_with_args(ptr noundef %73, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef %61, ptr noundef nonnull %4) #7
  %75 = icmp ne i32 %74, 0
  %76 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  %77 = icmp eq ptr %76, null
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %61) #8
  br label %205

80:                                               ; preds = %72
  %81 = call i32 @of_cpu_node_to_id(ptr noundef nonnull %76) #7
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @of_node_put(ptr noundef nonnull %76) #7
  br label %87

84:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef nonnull %76) #8
  %85 = load i32, ptr @nr_cpu_ids, align 4
  call void @of_node_put(ptr noundef nonnull %76) #7
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %205, label %87

87:                                               ; preds = %84, %83, %68
  %88 = phi i32 [ %85, %84 ], [ %81, %83 ], [ %61, %68 ]
  %89 = load i32, ptr @nr_cpu_ids, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, %58
  %95 = inttoptr i32 %94 to ptr
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.8) #8
  br label %205

99:                                               ; preds = %91
  store i32 %62, ptr %95, align 4
  call void @_set_bit(i32 noundef %88, ptr noundef %59) #7
  br label %100

100:                                              ; preds = %99, %87, %64
  %101 = add nuw nsw i32 %61, 1
  %102 = icmp eq i32 %101, %12
  br i1 %102, label %106, label %60

103:                                              ; preds = %8
  %104 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %12, ptr noundef nonnull @.str.3) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %205

106:                                              ; preds = %103, %100, %37, %30, %15
  %107 = call ptr @of_device_get_match_data(ptr noundef %5) #7
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %111 = load ptr, ptr %110, align 8
  %112 = call ptr @of_find_property(ptr noundef %111, ptr noundef nonnull @.str, ptr noundef null) #7
  %113 = icmp ne ptr %112, null
  %114 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 18
  %115 = zext i1 %113 to i8
  store i8 %115, ptr %114, align 4
  %116 = call i32 %107(ptr noundef nonnull %6) #7
  br label %152

117:                                              ; preds = %106
  %118 = icmp eq ptr %2, null
  br i1 %118, label %156, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 1
  store i32 -1, ptr %120, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %121 = tail call ptr @llvm.thread.pointer() #7
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !11
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %123) #8
  %126 = getelementptr inbounds %struct.pmu_probe_info, ptr %2, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %150, label %129

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.pmu_probe_info, ptr %2, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, %124
  %133 = load i32, ptr %2, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %147, label %135

135:                                              ; preds = %140, %129
  %136 = phi ptr [ %141, %140 ], [ %2, %129 ]
  %137 = getelementptr %struct.pmu_probe_info, ptr %136, i32 1, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = getelementptr %struct.pmu_probe_info, ptr %136, i32 1
  %142 = getelementptr %struct.pmu_probe_info, ptr %136, i32 1, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, %124
  %145 = load i32, ptr %141, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %135

147:                                              ; preds = %140, %129
  %148 = phi ptr [ %127, %129 ], [ %138, %140 ]
  %149 = call i32 %148(ptr noundef nonnull %6) #7
  br label %150

150:                                              ; preds = %147, %135, %119
  %151 = phi i32 [ %149, %147 ], [ -19, %119 ], [ -19, %135 ]
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %152

152:                                              ; preds = %150, %109
  %153 = phi i32 [ %116, %109 ], [ %151, %150 ]
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %205

156:                                              ; preds = %152, %117
  %157 = load ptr, ptr %10, align 4
  %158 = getelementptr inbounds %struct.arm_pmu, ptr %6, i32 0, i32 1
  %159 = getelementptr inbounds %struct.pmu_hw_events, ptr %157, i32 0, i32 4
  %160 = ptrtoint ptr %159 to i32
  %161 = load i32, ptr @nr_cpu_ids, align 4
  %162 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %158) #9
  %163 = icmp ult i32 %162, %161
  br i1 %163, label %164, label %181

164:                                              ; preds = %177, %156
  %165 = phi i32 [ %179, %177 ], [ %162, %156 ]
  %166 = phi i32 [ %178, %177 ], [ %161, %156 ]
  %167 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %165
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, %160
  %170 = inttoptr i32 %169 to ptr
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %164
  %174 = call i32 @armpmu_request_irq(i32 noundef %171, i32 noundef %165) #7
  %175 = icmp eq i32 %174, 0
  %176 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %175, label %177, label %186

177:                                              ; preds = %173, %164
  %178 = phi i32 [ %166, %164 ], [ %176, %173 ]
  %179 = call i32 @cpumask_next(i32 noundef %165, ptr noundef %158) #9
  %180 = icmp ult i32 %179, %178
  br i1 %180, label %164, label %181

181:                                              ; preds = %177, %156
  %182 = call i32 @armpmu_register(ptr noundef nonnull %6) #7
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %181
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #8
  %185 = load i32, ptr @nr_cpu_ids, align 4
  br label %186

186:                                              ; preds = %184, %173
  %187 = phi i32 [ %185, %184 ], [ %176, %173 ]
  %188 = phi i32 [ %182, %184 ], [ %174, %173 ]
  %189 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %158) #9
  %190 = icmp ult i32 %189, %187
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load ptr, ptr %10, align 4
  %193 = getelementptr inbounds %struct.pmu_hw_events, ptr %192, i32 0, i32 4
  %194 = ptrtoint ptr %193 to i32
  br label %195

195:                                              ; preds = %195, %191
  %196 = phi i32 [ %189, %191 ], [ %202, %195 ]
  %197 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %196
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %194
  %200 = inttoptr i32 %199 to ptr
  %201 = load i32, ptr %200, align 4
  call void @armpmu_free_irq(i32 noundef %201, i32 noundef %196) #7
  %202 = call i32 @cpumask_next(i32 noundef %196, ptr noundef %158) #9
  %203 = load i32, ptr @nr_cpu_ids, align 4
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %195, label %205

205:                                              ; preds = %195, %186, %155, %103, %98, %84, %79, %67, %25
  %206 = phi i32 [ %104, %103 ], [ %153, %155 ], [ %188, %186 ], [ -22, %67 ], [ -22, %98 ], [ -22, %79 ], [ %28, %25 ], [ %188, %195 ], [ %85, %84 ]
  call void @armpmu_free(ptr noundef nonnull %6) #7
  br label %207

207:                                              ; preds = %205, %181, %3
  %208 = phi i32 [ %206, %205 ], [ -12, %3 ], [ 0, %181 ]
  ret i32 %208
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @armpmu_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @armpmu_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_check_status_bit(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_percpu_devid_partition(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_cpu_node_to_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armpmu_request_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @armpmu_free_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2153510294}
!11 = !{i64 2153129270}
!12 = !{i64 2153510958}
