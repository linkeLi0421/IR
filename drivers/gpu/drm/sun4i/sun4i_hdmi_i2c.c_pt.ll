; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun4i_hdmi = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.sun4i_hdmi_variant = type { i8, i8, i32, i32, i32, %struct.reg_field, i8, i8, i8, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i8, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__this_module = external dso_local global %struct.module, align 64
@sun4i_hdmi_i2c_algorithm = internal constant %struct.i2c_algorithm { ptr @sun4i_hdmi_i2c_xfer, ptr null, ptr null, ptr null, ptr @sun4i_hdmi_i2c_func, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [23 x i8] c"sun4i_hdmi_i2c adapter\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_hdmi_i2c_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @sun4i_ddc_create(ptr noundef %1, ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %335

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 32
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %13, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = insertvalue [5 x i32] undef, i32 %15, 0
  %17 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %13, i32 0, i32 9, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = insertvalue [5 x i32] %16, i32 %18, 1
  %20 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %13, i32 0, i32 9, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = insertvalue [5 x i32] %19, i32 %21, 2
  %23 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %13, i32 0, i32 9, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [5 x i32] %22, i32 %24, 3
  %26 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %13, i32 0, i32 9, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = insertvalue [5 x i32] %25, i32 %27, 4
  %29 = tail call ptr @devm_regmap_field_alloc(ptr noundef %9, ptr noundef %11, [5 x i32] %28) #6
  %30 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 15
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %318, label %32

32:                                               ; preds = %7
  %33 = load ptr, ptr %8, align 8
  %34 = load ptr, ptr %10, align 8
  %35 = load ptr, ptr %12, align 8
  %36 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %35, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = insertvalue [5 x i32] undef, i32 %37, 0
  %39 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %35, i32 0, i32 10, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = insertvalue [5 x i32] %38, i32 %40, 1
  %42 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %35, i32 0, i32 10, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = insertvalue [5 x i32] %41, i32 %43, 2
  %45 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %35, i32 0, i32 10, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = insertvalue [5 x i32] %44, i32 %46, 3
  %48 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %35, i32 0, i32 10, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = insertvalue [5 x i32] %47, i32 %49, 4
  %51 = tail call ptr @devm_regmap_field_alloc(ptr noundef %33, ptr noundef %34, [5 x i32] %50) #6
  %52 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 16
  store ptr %51, ptr %52, align 8
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %318, label %54

54:                                               ; preds = %32
  %55 = load ptr, ptr %8, align 8
  %56 = load ptr, ptr %10, align 8
  %57 = load ptr, ptr %12, align 8
  %58 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %57, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = insertvalue [5 x i32] undef, i32 %59, 0
  %61 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %57, i32 0, i32 11, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = insertvalue [5 x i32] %60, i32 %62, 1
  %64 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %57, i32 0, i32 11, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = insertvalue [5 x i32] %63, i32 %65, 2
  %67 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %57, i32 0, i32 11, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = insertvalue [5 x i32] %66, i32 %68, 3
  %70 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %57, i32 0, i32 11, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = insertvalue [5 x i32] %69, i32 %71, 4
  %73 = tail call ptr @devm_regmap_field_alloc(ptr noundef %55, ptr noundef %56, [5 x i32] %72) #6
  %74 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 17
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %318, label %76

76:                                               ; preds = %54
  %77 = load ptr, ptr %8, align 8
  %78 = load ptr, ptr %10, align 8
  %79 = load ptr, ptr %12, align 8
  %80 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %79, i32 0, i32 12
  %81 = load i32, ptr %80, align 4
  %82 = insertvalue [5 x i32] undef, i32 %81, 0
  %83 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %79, i32 0, i32 12, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = insertvalue [5 x i32] %82, i32 %84, 1
  %86 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %79, i32 0, i32 12, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = insertvalue [5 x i32] %85, i32 %87, 2
  %89 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %79, i32 0, i32 12, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = insertvalue [5 x i32] %88, i32 %90, 3
  %92 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %79, i32 0, i32 12, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = insertvalue [5 x i32] %91, i32 %93, 4
  %95 = tail call ptr @devm_regmap_field_alloc(ptr noundef %77, ptr noundef %78, [5 x i32] %94) #6
  %96 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 18
  store ptr %95, ptr %96, align 8
  %97 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %318, label %98

98:                                               ; preds = %76
  %99 = load ptr, ptr %8, align 8
  %100 = load ptr, ptr %10, align 8
  %101 = load ptr, ptr %12, align 8
  %102 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %101, i32 0, i32 13
  %103 = load i32, ptr %102, align 4
  %104 = insertvalue [5 x i32] undef, i32 %103, 0
  %105 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %101, i32 0, i32 13, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = insertvalue [5 x i32] %104, i32 %106, 1
  %108 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %101, i32 0, i32 13, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = insertvalue [5 x i32] %107, i32 %109, 2
  %111 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %101, i32 0, i32 13, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = insertvalue [5 x i32] %110, i32 %112, 3
  %114 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %101, i32 0, i32 13, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = insertvalue [5 x i32] %113, i32 %115, 4
  %117 = tail call ptr @devm_regmap_field_alloc(ptr noundef %99, ptr noundef %100, [5 x i32] %116) #6
  %118 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 19
  store ptr %117, ptr %118, align 4
  %119 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %318, label %120

120:                                              ; preds = %98
  %121 = load ptr, ptr %8, align 8
  %122 = load ptr, ptr %10, align 8
  %123 = load ptr, ptr %12, align 8
  %124 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %123, i32 0, i32 14
  %125 = load i32, ptr %124, align 4
  %126 = insertvalue [5 x i32] undef, i32 %125, 0
  %127 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %123, i32 0, i32 14, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = insertvalue [5 x i32] %126, i32 %128, 1
  %130 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %123, i32 0, i32 14, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = insertvalue [5 x i32] %129, i32 %131, 2
  %133 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %123, i32 0, i32 14, i32 3
  %134 = load i32, ptr %133, align 4
  %135 = insertvalue [5 x i32] %132, i32 %134, 3
  %136 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %123, i32 0, i32 14, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = insertvalue [5 x i32] %135, i32 %137, 4
  %139 = tail call ptr @devm_regmap_field_alloc(ptr noundef %121, ptr noundef %122, [5 x i32] %138) #6
  %140 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 20
  store ptr %139, ptr %140, align 8
  %141 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %318, label %142

142:                                              ; preds = %120
  %143 = load ptr, ptr %8, align 8
  %144 = load ptr, ptr %10, align 8
  %145 = load ptr, ptr %12, align 8
  %146 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %145, i32 0, i32 15
  %147 = load i32, ptr %146, align 4
  %148 = insertvalue [5 x i32] undef, i32 %147, 0
  %149 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %145, i32 0, i32 15, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = insertvalue [5 x i32] %148, i32 %150, 1
  %152 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %145, i32 0, i32 15, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = insertvalue [5 x i32] %151, i32 %153, 2
  %155 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %145, i32 0, i32 15, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = insertvalue [5 x i32] %154, i32 %156, 3
  %158 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %145, i32 0, i32 15, i32 4
  %159 = load i32, ptr %158, align 4
  %160 = insertvalue [5 x i32] %157, i32 %159, 4
  %161 = tail call ptr @devm_regmap_field_alloc(ptr noundef %143, ptr noundef %144, [5 x i32] %160) #6
  %162 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 21
  store ptr %161, ptr %162, align 4
  %163 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %318, label %164

164:                                              ; preds = %142
  %165 = load ptr, ptr %8, align 8
  %166 = load ptr, ptr %10, align 8
  %167 = load ptr, ptr %12, align 8
  %168 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %167, i32 0, i32 16
  %169 = load i32, ptr %168, align 4
  %170 = insertvalue [5 x i32] undef, i32 %169, 0
  %171 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %167, i32 0, i32 16, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = insertvalue [5 x i32] %170, i32 %172, 1
  %174 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %167, i32 0, i32 16, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = insertvalue [5 x i32] %173, i32 %175, 2
  %177 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %167, i32 0, i32 16, i32 3
  %178 = load i32, ptr %177, align 4
  %179 = insertvalue [5 x i32] %176, i32 %178, 3
  %180 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %167, i32 0, i32 16, i32 4
  %181 = load i32, ptr %180, align 4
  %182 = insertvalue [5 x i32] %179, i32 %181, 4
  %183 = tail call ptr @devm_regmap_field_alloc(ptr noundef %165, ptr noundef %166, [5 x i32] %182) #6
  %184 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 22
  store ptr %183, ptr %184, align 8
  %185 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  br i1 %185, label %318, label %186

186:                                              ; preds = %164
  %187 = load ptr, ptr %8, align 8
  %188 = load ptr, ptr %10, align 8
  %189 = load ptr, ptr %12, align 8
  %190 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %189, i32 0, i32 17
  %191 = load i32, ptr %190, align 4
  %192 = insertvalue [5 x i32] undef, i32 %191, 0
  %193 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %189, i32 0, i32 17, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = insertvalue [5 x i32] %192, i32 %194, 1
  %196 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %189, i32 0, i32 17, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = insertvalue [5 x i32] %195, i32 %197, 2
  %199 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %189, i32 0, i32 17, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = insertvalue [5 x i32] %198, i32 %200, 3
  %202 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %189, i32 0, i32 17, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = insertvalue [5 x i32] %201, i32 %203, 4
  %205 = tail call ptr @devm_regmap_field_alloc(ptr noundef %187, ptr noundef %188, [5 x i32] %204) #6
  %206 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 23
  store ptr %205, ptr %206, align 4
  %207 = icmp ugt ptr %205, inttoptr (i32 -4096 to ptr)
  br i1 %207, label %318, label %208

208:                                              ; preds = %186
  %209 = load ptr, ptr %8, align 8
  %210 = load ptr, ptr %10, align 8
  %211 = load ptr, ptr %12, align 8
  %212 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 18
  %213 = load i32, ptr %212, align 4
  %214 = insertvalue [5 x i32] undef, i32 %213, 0
  %215 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 18, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = insertvalue [5 x i32] %214, i32 %216, 1
  %218 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 18, i32 2
  %219 = load i32, ptr %218, align 4
  %220 = insertvalue [5 x i32] %217, i32 %219, 2
  %221 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 18, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = insertvalue [5 x i32] %220, i32 %222, 3
  %224 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %211, i32 0, i32 18, i32 4
  %225 = load i32, ptr %224, align 4
  %226 = insertvalue [5 x i32] %223, i32 %225, 4
  %227 = tail call ptr @devm_regmap_field_alloc(ptr noundef %209, ptr noundef %210, [5 x i32] %226) #6
  %228 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 24
  store ptr %227, ptr %228, align 8
  %229 = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  br i1 %229, label %318, label %230

230:                                              ; preds = %208
  %231 = load ptr, ptr %8, align 8
  %232 = load ptr, ptr %10, align 8
  %233 = load ptr, ptr %12, align 8
  %234 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %233, i32 0, i32 19
  %235 = load i32, ptr %234, align 4
  %236 = insertvalue [5 x i32] undef, i32 %235, 0
  %237 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %233, i32 0, i32 19, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = insertvalue [5 x i32] %236, i32 %238, 1
  %240 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %233, i32 0, i32 19, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = insertvalue [5 x i32] %239, i32 %241, 2
  %243 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %233, i32 0, i32 19, i32 3
  %244 = load i32, ptr %243, align 4
  %245 = insertvalue [5 x i32] %242, i32 %244, 3
  %246 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %233, i32 0, i32 19, i32 4
  %247 = load i32, ptr %246, align 4
  %248 = insertvalue [5 x i32] %245, i32 %247, 4
  %249 = tail call ptr @devm_regmap_field_alloc(ptr noundef %231, ptr noundef %232, [5 x i32] %248) #6
  %250 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 25
  store ptr %249, ptr %250, align 4
  %251 = icmp ugt ptr %249, inttoptr (i32 -4096 to ptr)
  br i1 %251, label %318, label %252

252:                                              ; preds = %230
  %253 = load ptr, ptr %8, align 8
  %254 = load ptr, ptr %10, align 8
  %255 = load ptr, ptr %12, align 8
  %256 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %255, i32 0, i32 20
  %257 = load i32, ptr %256, align 4
  %258 = insertvalue [5 x i32] undef, i32 %257, 0
  %259 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %255, i32 0, i32 20, i32 1
  %260 = load i32, ptr %259, align 4
  %261 = insertvalue [5 x i32] %258, i32 %260, 1
  %262 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %255, i32 0, i32 20, i32 2
  %263 = load i32, ptr %262, align 4
  %264 = insertvalue [5 x i32] %261, i32 %263, 2
  %265 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %255, i32 0, i32 20, i32 3
  %266 = load i32, ptr %265, align 4
  %267 = insertvalue [5 x i32] %264, i32 %266, 3
  %268 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %255, i32 0, i32 20, i32 4
  %269 = load i32, ptr %268, align 4
  %270 = insertvalue [5 x i32] %267, i32 %269, 4
  %271 = tail call ptr @devm_regmap_field_alloc(ptr noundef %253, ptr noundef %254, [5 x i32] %270) #6
  %272 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 26
  store ptr %271, ptr %272, align 8
  %273 = icmp ugt ptr %271, inttoptr (i32 -4096 to ptr)
  br i1 %273, label %318, label %274

274:                                              ; preds = %252
  %275 = load ptr, ptr %8, align 8
  %276 = load ptr, ptr %10, align 8
  %277 = load ptr, ptr %12, align 8
  %278 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %277, i32 0, i32 21
  %279 = load i32, ptr %278, align 4
  %280 = insertvalue [5 x i32] undef, i32 %279, 0
  %281 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %277, i32 0, i32 21, i32 1
  %282 = load i32, ptr %281, align 4
  %283 = insertvalue [5 x i32] %280, i32 %282, 1
  %284 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %277, i32 0, i32 21, i32 2
  %285 = load i32, ptr %284, align 4
  %286 = insertvalue [5 x i32] %283, i32 %285, 2
  %287 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %277, i32 0, i32 21, i32 3
  %288 = load i32, ptr %287, align 4
  %289 = insertvalue [5 x i32] %286, i32 %288, 3
  %290 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %277, i32 0, i32 21, i32 4
  %291 = load i32, ptr %290, align 4
  %292 = insertvalue [5 x i32] %289, i32 %291, 4
  %293 = tail call ptr @devm_regmap_field_alloc(ptr noundef %275, ptr noundef %276, [5 x i32] %292) #6
  %294 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 27
  store ptr %293, ptr %294, align 4
  %295 = icmp ugt ptr %293, inttoptr (i32 -4096 to ptr)
  br i1 %295, label %318, label %296

296:                                              ; preds = %274
  %297 = load ptr, ptr %8, align 8
  %298 = load ptr, ptr %10, align 8
  %299 = load ptr, ptr %12, align 8
  %300 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %299, i32 0, i32 22
  %301 = load i32, ptr %300, align 4
  %302 = insertvalue [5 x i32] undef, i32 %301, 0
  %303 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %299, i32 0, i32 22, i32 1
  %304 = load i32, ptr %303, align 4
  %305 = insertvalue [5 x i32] %302, i32 %304, 1
  %306 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %299, i32 0, i32 22, i32 2
  %307 = load i32, ptr %306, align 4
  %308 = insertvalue [5 x i32] %305, i32 %307, 2
  %309 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %299, i32 0, i32 22, i32 3
  %310 = load i32, ptr %309, align 4
  %311 = insertvalue [5 x i32] %308, i32 %310, 3
  %312 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %299, i32 0, i32 22, i32 4
  %313 = load i32, ptr %312, align 4
  %314 = insertvalue [5 x i32] %311, i32 %313, 4
  %315 = tail call ptr @devm_regmap_field_alloc(ptr noundef %297, ptr noundef %298, [5 x i32] %314) #6
  %316 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 28
  store ptr %315, ptr %316, align 8
  %317 = icmp ugt ptr %315, inttoptr (i32 -4096 to ptr)
  br i1 %317, label %318, label %322

318:                                              ; preds = %296, %274, %252, %230, %208, %186, %164, %142, %120, %98, %76, %54, %32, %7
  %319 = phi ptr [ %315, %296 ], [ %29, %7 ], [ %51, %32 ], [ %73, %54 ], [ %95, %76 ], [ %117, %98 ], [ %139, %120 ], [ %161, %142 ], [ %183, %164 ], [ %205, %186 ], [ %227, %208 ], [ %249, %230 ], [ %271, %252 ], [ %293, %274 ]
  %320 = ptrtoint ptr %319 to i32
  %321 = icmp eq ptr %319, null
  br i1 %321, label %322, label %335

322:                                              ; preds = %318, %296
  %323 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 656, i32 noundef 3520) #6
  %324 = icmp eq ptr %323, null
  br i1 %324, label %335, label %325

325:                                              ; preds = %322
  store ptr @__this_module, ptr %323, align 8
  %326 = getelementptr inbounds %struct.i2c_adapter, ptr %323, i32 0, i32 1
  store i32 8, ptr %326, align 4
  %327 = getelementptr inbounds %struct.i2c_adapter, ptr %323, i32 0, i32 2
  store ptr @sun4i_hdmi_i2c_algorithm, ptr %327, align 8
  %328 = getelementptr inbounds %struct.i2c_adapter, ptr %323, i32 0, i32 12
  %329 = tail call i32 @strlcpy(ptr noundef %328, ptr noundef nonnull @.str, i32 noundef 48) #6
  %330 = getelementptr inbounds %struct.i2c_adapter, ptr %323, i32 0, i32 9, i32 8
  store ptr %1, ptr %330, align 8
  %331 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %323) #6
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.sun4i_hdmi, ptr %1, i32 0, i32 13
  store ptr %323, ptr %334, align 4
  br label %335

335:                                              ; preds = %333, %325, %322, %318, %2
  %336 = phi i32 [ 0, %333 ], [ %5, %2 ], [ %320, %318 ], [ -12, %322 ], [ %331, %325 ]
  ret i32 %336
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_ddc_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_hdmi_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %13, label %19

10:                                               ; preds = %13
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %19, label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %15 = getelementptr %struct.i2c_msg, ptr %1, i32 %14, i32 2
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, -1024
  %18 = icmp ult i16 %17, -1023
  br i1 %18, label %292, label %10

19:                                               ; preds = %10, %3
  %20 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %28

28:                                               ; preds = %27, %24, %19
  %29 = load ptr, ptr %20, align 4
  %30 = tail call i32 @clk_set_rate(ptr noundef %29, i32 noundef 100000) #6
  %31 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @regmap_field_update_bits_base(ptr noundef %32, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %34 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regmap_field_update_bits_base(ptr noundef %35, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = tail call i64 @ktime_get() #6
  %38 = add i64 %37, 2000000
  %39 = load ptr, ptr %34, align 4
  %40 = call i32 @regmap_field_read(ptr noundef %39, ptr noundef nonnull %6) #6
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %59

45:                                               ; preds = %52, %28
  %46 = call i64 @ktime_get() #6
  %47 = icmp sgt i64 %46, %38
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load ptr, ptr %34, align 4
  %50 = call i32 @regmap_field_read(ptr noundef %49, ptr noundef nonnull %6) #6
  %51 = load i32, ptr %6, align 4
  br label %59

52:                                               ; preds = %45
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %53 = load ptr, ptr %34, align 4
  %54 = call i32 @regmap_field_read(ptr noundef %53, ptr noundef nonnull %6) #6
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr %6, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %45, label %59

59:                                               ; preds = %52, %48, %28
  %60 = phi i32 [ %51, %48 ], [ %42, %28 ], [ %56, %52 ]
  %61 = phi i32 [ %50, %48 ], [ %40, %28 ], [ %54, %52 ]
  %62 = icmp eq i32 %61, 0
  %63 = icmp eq i32 %60, 0
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %289

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 28
  %67 = load ptr, ptr %66, align 8
  %68 = call i32 @regmap_field_update_bits_base(ptr noundef %67, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %69 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 27
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 @regmap_field_update_bits_base(ptr noundef %70, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %9, label %72, label %289

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 32
  %74 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 3
  %75 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 18
  %76 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 19
  %77 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 24
  %78 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 23
  %79 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 22
  %80 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 25
  %81 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 26
  %82 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 21
  %83 = getelementptr inbounds %struct.sun4i_hdmi, ptr %8, i32 0, i32 16
  br label %84

84:                                               ; preds = %286, %72
  %85 = phi i32 [ 0, %72 ], [ %287, %286 ]
  %86 = getelementptr %struct.i2c_msg, ptr %1, i32 %85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %87 = load ptr, ptr %73, align 8
  %88 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %87, i32 0, i32 25
  %89 = load i8, ptr %88, align 1, !range !9
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %84
  %92 = load ptr, ptr %74, align 4
  %93 = getelementptr i8, ptr %92, i32 1280
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %95 = and i32 %94, -257
  %96 = getelementptr %struct.i2c_msg, ptr %1, i32 %85, i32 1
  %97 = load i16, ptr %96, align 2
  %98 = shl i16 %97, 8
  %99 = and i16 %98, 256
  %100 = xor i16 %99, 256
  %101 = zext i16 %100 to i32
  %102 = or i32 %95, %101
  store i32 %102, ptr %5, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  %103 = load ptr, ptr %74, align 4
  %104 = getelementptr i8, ptr %103, i32 1280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #6, !srcloc !13
  br label %105

105:                                              ; preds = %91, %84
  %106 = load ptr, ptr %75, align 8
  %107 = call i32 @regmap_field_update_bits_base(ptr noundef %106, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %108 = load ptr, ptr %76, align 4
  %109 = load i16, ptr %86, align 4
  %110 = zext i16 %109 to i32
  %111 = call i32 @regmap_field_update_bits_base(ptr noundef %108, i32 noundef -1, i32 noundef %110, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %112 = load ptr, ptr %77, align 8
  %113 = load ptr, ptr %73, align 8
  %114 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %113, i32 0, i32 24
  %115 = load i8, ptr %114, align 4, !range !9
  %116 = xor i8 %115, 1
  %117 = zext i8 %116 to i32
  %118 = call i32 @regmap_field_update_bits_base(ptr noundef %112, i32 noundef -1, i32 noundef %117, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %119 = load ptr, ptr %78, align 4
  %120 = call i32 @regmap_field_update_bits_base(ptr noundef %119, i32 noundef -1, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %121 = load ptr, ptr %79, align 8
  %122 = call i32 @regmap_field_update_bits_base(ptr noundef %121, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %123 = call i64 @ktime_get() #6
  %124 = add i64 %123, 2000000
  %125 = load ptr, ptr %79, align 8
  %126 = call i32 @regmap_field_read(ptr noundef %125, ptr noundef nonnull %5) #6
  %127 = icmp eq i32 %126, 0
  %128 = load i32, ptr %5, align 4
  %129 = icmp ne i32 %128, 0
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %145

131:                                              ; preds = %138, %105
  %132 = call i64 @ktime_get() #6
  %133 = icmp sgt i64 %132, %124
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load ptr, ptr %79, align 8
  %136 = call i32 @regmap_field_read(ptr noundef %135, ptr noundef nonnull %5) #6
  %137 = load i32, ptr %5, align 4
  br label %145

138:                                              ; preds = %131
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %139 = load ptr, ptr %79, align 8
  %140 = call i32 @regmap_field_read(ptr noundef %139, ptr noundef nonnull %5) #6
  %141 = icmp eq i32 %140, 0
  %142 = load i32, ptr %5, align 4
  %143 = icmp ne i32 %142, 0
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %131, label %145

145:                                              ; preds = %138, %134, %105
  %146 = phi i32 [ %137, %134 ], [ %128, %105 ], [ %142, %138 ]
  %147 = phi i32 [ %136, %134 ], [ %126, %105 ], [ %140, %138 ]
  %148 = icmp eq i32 %147, 0
  %149 = icmp eq i32 %146, 0
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %282

151:                                              ; preds = %145
  %152 = load ptr, ptr %80, align 4
  %153 = getelementptr %struct.i2c_msg, ptr %1, i32 %85, i32 2
  %154 = load i16, ptr %153, align 4
  %155 = zext i16 %154 to i32
  %156 = call i32 @regmap_field_update_bits_base(ptr noundef %152, i32 noundef -1, i32 noundef %155, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %157 = load ptr, ptr %81, align 8
  %158 = getelementptr %struct.i2c_msg, ptr %1, i32 %85, i32 1
  %159 = load i16, ptr %158, align 2
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  %162 = select i1 %161, i32 3, i32 5
  %163 = call i32 @regmap_field_update_bits_base(ptr noundef %157, i32 noundef -1, i32 noundef %162, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %164 = load ptr, ptr %82, align 4
  %165 = call i32 @regmap_field_update_bits_base(ptr noundef %164, i32 noundef -1, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %166 = load ptr, ptr %83, align 8
  %167 = call i32 @regmap_field_update_bits_base(ptr noundef %166, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %168 = load i16, ptr %153, align 4
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %246, label %170

170:                                              ; preds = %151
  %171 = zext i16 %168 to i32
  %172 = getelementptr %struct.i2c_msg, ptr %1, i32 %85, i32 3
  br label %173

173:                                              ; preds = %241, %170
  %174 = phi i32 [ %171, %170 ], [ %244, %241 ]
  %175 = phi i32 [ 0, %170 ], [ %242, %241 ]
  %176 = load ptr, ptr %172, align 4
  %177 = getelementptr i8, ptr %176, i32 %175
  %178 = sub i32 %174, %175
  %179 = load i16, ptr %158, align 2
  %180 = and i16 %179, 1
  %181 = icmp eq i16 %180, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %182 = load ptr, ptr %73, align 8
  %183 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %182, i32 0, i32 24
  %184 = load i8, ptr %183, align 4, !range !9
  %185 = sub nuw nsw i8 16, %184
  %186 = zext i8 %185 to i32
  %187 = select i1 %181, i32 16, i32 %186
  %188 = call i32 @llvm.smin.i32(i32 %187, i32 %178) #6
  %189 = mul i32 %188, 100
  %190 = call i64 @ktime_get() #6
  %191 = add i64 %190, 100000000
  %192 = load ptr, ptr %82, align 4
  %193 = call i32 @regmap_field_read(ptr noundef %192, ptr noundef nonnull %4) #6
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %235

195:                                              ; preds = %173
  %196 = icmp eq i32 %189, 0
  %197 = lshr exact i32 %189, 2
  %198 = add nuw nsw i32 %197, 1
  br label %199

199:                                              ; preds = %214, %195
  %200 = load i32, ptr %4, align 4
  %201 = and i32 %200, 255
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %199
  %204 = call i64 @ktime_get() #6
  %205 = icmp sgt i64 %204, %191
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = load ptr, ptr %82, align 4
  %208 = call i32 @regmap_field_read(ptr noundef %207, ptr noundef nonnull %4) #6
  %209 = icmp eq i32 %208, 0
  %210 = load i32, ptr %4, align 4
  %211 = and i32 %210, 255
  br label %218

212:                                              ; preds = %203
  br i1 %196, label %214, label %213

213:                                              ; preds = %212
  call void @usleep_range_state(i32 noundef %198, i32 noundef %189, i32 noundef 2) #6
  br label %214

214:                                              ; preds = %213, %212
  %215 = load ptr, ptr %82, align 4
  %216 = call i32 @regmap_field_read(ptr noundef %215, ptr noundef nonnull %4) #6
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %199, label %235

218:                                              ; preds = %206, %199
  %219 = phi i32 [ %211, %206 ], [ 1, %199 ]
  %220 = phi i32 [ %210, %206 ], [ %200, %199 ]
  %221 = phi i1 [ %209, %206 ], [ true, %199 ]
  %222 = icmp ne i32 %219, 0
  %223 = select i1 %221, i1 %222, i1 false
  br i1 %223, label %224, label %235

224:                                              ; preds = %218
  %225 = and i32 %220, 238
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %224
  %228 = load ptr, ptr %74, align 4
  %229 = load ptr, ptr %73, align 8
  %230 = getelementptr inbounds %struct.sun4i_hdmi_variant, ptr %229, i32 0, i32 23
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr i8, ptr %228, i32 %231
  br i1 %181, label %234, label %233

233:                                              ; preds = %227
  call void @__raw_readsb(ptr noundef %232, ptr noundef %177, i32 noundef %188) #6
  br label %237

234:                                              ; preds = %227
  call void @__raw_writesb(ptr noundef %232, ptr noundef %177, i32 noundef %188) #6
  br label %237

235:                                              ; preds = %224, %218, %214, %173
  %236 = phi i32 [ -110, %214 ], [ -110, %173 ], [ -5, %224 ], [ -110, %218 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %282

237:                                              ; preds = %234, %233
  %238 = load ptr, ptr %82, align 4
  %239 = call i32 @regmap_field_update_bits_base(ptr noundef %238, i32 noundef -1, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %240 = icmp slt i32 %188, 1
  br i1 %240, label %284, label %241

241:                                              ; preds = %237
  %242 = add i32 %188, %175
  %243 = load i16, ptr %153, align 4
  %244 = zext i16 %243 to i32
  %245 = icmp slt i32 %242, %244
  br i1 %245, label %173, label %246

246:                                              ; preds = %241, %151
  %247 = call i64 @ktime_get() #6
  %248 = add i64 %247, 100000000
  %249 = load ptr, ptr %83, align 8
  %250 = call i32 @regmap_field_read(ptr noundef %249, ptr noundef nonnull %5) #6
  %251 = icmp eq i32 %250, 0
  %252 = load i32, ptr %5, align 4
  %253 = icmp ne i32 %252, 0
  %254 = select i1 %251, i1 %253, i1 false
  br i1 %254, label %255, label %269

255:                                              ; preds = %262, %246
  %256 = call i64 @ktime_get() #6
  %257 = icmp sgt i64 %256, %248
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load ptr, ptr %83, align 8
  %260 = call i32 @regmap_field_read(ptr noundef %259, ptr noundef nonnull %5) #6
  %261 = load i32, ptr %5, align 4
  br label %269

262:                                              ; preds = %255
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %263 = load ptr, ptr %83, align 8
  %264 = call i32 @regmap_field_read(ptr noundef %263, ptr noundef nonnull %5) #6
  %265 = icmp eq i32 %264, 0
  %266 = load i32, ptr %5, align 4
  %267 = icmp ne i32 %266, 0
  %268 = select i1 %265, i1 %267, i1 false
  br i1 %268, label %255, label %269

269:                                              ; preds = %262, %258, %246
  %270 = phi i32 [ %261, %258 ], [ %252, %246 ], [ %266, %262 ]
  %271 = phi i32 [ %260, %258 ], [ %250, %246 ], [ %264, %262 ]
  %272 = icmp eq i32 %271, 0
  %273 = icmp eq i32 %270, 0
  %274 = select i1 %272, i1 %273, i1 false
  br i1 %274, label %275, label %282

275:                                              ; preds = %269
  %276 = load ptr, ptr %82, align 4
  %277 = call i32 @regmap_field_read(ptr noundef %276, ptr noundef nonnull %5) #6
  %278 = load i32, ptr %5, align 4
  %279 = and i32 %278, 239
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %286

282:                                              ; preds = %275, %269, %235, %145
  %283 = phi i32 [ %236, %235 ], [ -5, %275 ], [ -5, %269 ], [ -5, %145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %289

284:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %285 = icmp eq i32 %188, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %284, %281
  %287 = add nuw nsw i32 %85, 1
  %288 = icmp eq i32 %287, %2
  br i1 %288, label %289, label %84

289:                                              ; preds = %286, %284, %282, %65, %59
  %290 = phi i32 [ -5, %59 ], [ %283, %282 ], [ %2, %65 ], [ %2, %286 ], [ %188, %284 ]
  %291 = load ptr, ptr %20, align 4
  call void @clk_disable(ptr noundef %291) #6
  call void @clk_unprepare(ptr noundef %291) #6
  br label %292

292:                                              ; preds = %289, %13
  %293 = phi i32 [ %290, %289 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret i32 %293
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_hdmi_i2c_func(ptr nocapture noundef readnone %0) #4 {
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!10 = !{i64 5385319}
!11 = !{i64 2155326678}
!12 = !{i64 2155326977}
!13 = !{i64 5384901}
