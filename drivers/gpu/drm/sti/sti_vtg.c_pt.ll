; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_vtg.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_vtg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sti_vtg_regs_offs = type { i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sti_vtg = type { ptr, [4 x %struct.sti_vtg_sync_params], i32, i32, %struct.raw_notifier_head, ptr }
%struct.sti_vtg_sync_params = type { i32, i32, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@vtg_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,vtg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [8 x i8] c"sti-vtg\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@sti_vtg_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vtg_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @vtg_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [46 x i8] c"description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@vtg_regs_offs = internal unnamed_addr constant [4 x %struct.sti_vtg_regs_offs] [%struct.sti_vtg_regs_offs { i32 192, i32 196, i32 200, i32 204, i32 208 }, %struct.sti_vtg_regs_offs { i32 224, i32 228, i32 232, i32 236, i32 240 }, %struct.sti_vtg_regs_offs { i32 256, i32 260, i32 264, i32 268, i32 272 }, %struct.sti_vtg_regs_offs { i32 288, i32 292, i32 296, i32 300, i32 304 }], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Get memory resource failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to remap I/O memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to get VTG interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register VTG interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\016[drm] %s %s\0A\00", align 1
@__func__.vtg_probe = private unnamed_addr constant [10 x i8] c"vtg_probe\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_license239], section "llvm.metadata"

@__mod_of__vtg_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @vtg_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_vtg_find(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @of_find_device_by_node(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sti_vtg_set_config(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = shl nuw nsw i32 %11, 1
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !9
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds i8, ptr %1, i32 6
  %17 = load i16, ptr %16, align 1
  %18 = load i16, ptr %4, align 1
  %19 = zext i16 %18 to i32
  %20 = zext i16 %17 to i32
  %21 = sub nsw i32 %19, %20
  %22 = getelementptr inbounds i8, ptr %1, i32 16
  %23 = load i16, ptr %22, align 1
  %24 = load i16, ptr %9, align 1
  %25 = getelementptr inbounds i8, ptr %1, i32 24
  %26 = load i32, ptr %25, align 1
  %27 = zext i16 %24 to i32
  %28 = zext i16 %23 to i32
  %29 = sub nsw i32 1, %28
  %30 = add nsw i32 %29, %27
  %31 = lshr i32 %26, 4
  %32 = and i32 %31, 1
  %33 = shl nsw i32 %30, %32
  %34 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = xor i32 %20, -1
  %38 = add nsw i32 %19, %37
  %39 = add nsw i32 %38, %36
  %40 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = add nuw nsw i32 %42, 65535
  %44 = add i32 %43, %33
  %45 = shl i32 %33, 16
  %46 = or i32 %45, %21
  %47 = shl i32 %44, 16
  %48 = or i32 %47, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %49 = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %50 = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %51 = getelementptr i8, ptr %15, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %46) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %52 = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %48) #4, !srcloc !9
  %53 = load i16, ptr %4, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = load i16, ptr %16, align 2
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %57, %59
  %61 = add nsw i32 %60, 5
  %62 = icmp ugt i16 %53, 5
  %63 = sub nuw nsw i32 5, %54
  %64 = select i1 %62, i32 5, i32 %63
  %65 = icmp slt i32 %60, -5
  %66 = icmp slt i32 %61, %54
  %67 = select i1 %66, i32 0, i32 %54
  %68 = sub nsw i32 0, %67
  %69 = select i1 %65, i32 %54, i32 %68
  %70 = add nsw i32 %69, %61
  %71 = shl i32 %70, 16
  %72 = or i32 %71, %64
  store i32 %72, ptr %3, align 4
  %73 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, ptr %22, align 4
  %77 = zext i16 %76 to i32
  %78 = add nuw nsw i32 %75, 1
  %79 = sub nsw i32 %78, %77
  %80 = shl i32 %79, 16
  %81 = or i32 %80, 1
  %82 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 0, i32 3
  store i32 327685, ptr %83, align 4
  %84 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 0, i32 2
  store i32 %81, ptr %84, align 4
  %85 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 0, i32 4
  store i32 327685, ptr %85, align 4
  %86 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 1
  %87 = load i16, ptr %4, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, ptr %55, align 4
  %90 = zext i16 %89 to i32
  %91 = load i16, ptr %16, align 2
  %92 = zext i16 %91 to i32
  %93 = sub nsw i32 %90, %92
  %94 = icmp slt i32 %93, 0
  %95 = icmp slt i32 %93, %88
  %96 = select i1 %95, i32 0, i32 %88
  %97 = sub nsw i32 0, %96
  %98 = select i1 %94, i32 %88, i32 %97
  %99 = add nsw i32 %98, %93
  %100 = shl i32 %99, 16
  store i32 %100, ptr %86, align 4
  %101 = load i16, ptr %73, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, ptr %22, align 4
  %104 = zext i16 %103 to i32
  %105 = add nuw nsw i32 %102, 1
  %106 = sub nsw i32 %105, %104
  %107 = shl i32 %106, 16
  %108 = or i32 %107, 1
  %109 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 1, i32 1
  store i32 %108, ptr %109, align 4
  %110 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 1, i32 3
  store i32 0, ptr %110, align 4
  %111 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 1, i32 2
  store i32 %108, ptr %111, align 4
  %112 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 1, i32 4
  store i32 0, ptr %112, align 4
  %113 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 2
  %114 = load i16, ptr %4, align 2
  %115 = zext i16 %114 to i32
  %116 = load i16, ptr %55, align 4
  %117 = zext i16 %116 to i32
  %118 = load i16, ptr %16, align 2
  %119 = zext i16 %118 to i32
  %120 = sub nsw i32 %117, %119
  %121 = add nsw i32 %120, -9
  %122 = add nsw i32 %115, -9
  %123 = icmp slt i32 %120, 9
  %124 = icmp slt i32 %121, %115
  %125 = select i1 %124, i32 0, i32 %115
  %126 = sub nsw i32 0, %125
  %127 = select i1 %123, i32 %115, i32 %126
  %128 = add nsw i32 %127, %121
  %129 = shl i32 %128, 16
  %130 = or i32 %129, %122
  store i32 %130, ptr %113, align 4
  %131 = load i16, ptr %9, align 4
  %132 = zext i16 %131 to i32
  %133 = load i16, ptr %73, align 2
  %134 = zext i16 %133 to i32
  %135 = load i16, ptr %22, align 4
  %136 = zext i16 %135 to i32
  %137 = sub nsw i32 %134, %136
  %138 = shl i32 %137, 16
  %139 = or i32 %138, %132
  %140 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 2, i32 1
  store i32 %139, ptr %140, align 4
  %141 = shl i32 %122, 16
  %142 = or i32 %141, %122
  %143 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 2, i32 3
  store i32 %142, ptr %143, align 4
  %144 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 2, i32 2
  store i32 %139, ptr %144, align 4
  %145 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 2, i32 4
  store i32 %142, ptr %145, align 4
  %146 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 3
  %147 = load i16, ptr %4, align 2
  %148 = zext i16 %147 to i32
  %149 = load i16, ptr %55, align 4
  %150 = zext i16 %149 to i32
  %151 = load i16, ptr %16, align 2
  %152 = zext i16 %151 to i32
  %153 = sub nsw i32 %150, %152
  %154 = add nsw i32 %153, 7
  %155 = icmp ugt i16 %147, 7
  %156 = sub nuw nsw i32 7, %148
  %157 = select i1 %155, i32 7, i32 %156
  %158 = icmp slt i32 %153, -7
  %159 = icmp slt i32 %154, %148
  %160 = select i1 %159, i32 0, i32 %148
  %161 = sub nsw i32 0, %160
  %162 = select i1 %158, i32 %148, i32 %161
  %163 = add nsw i32 %162, %154
  %164 = shl i32 %163, 16
  %165 = or i32 %164, %157
  store i32 %165, ptr %146, align 4
  %166 = load i16, ptr %73, align 2
  %167 = zext i16 %166 to i32
  %168 = load i16, ptr %22, align 4
  %169 = zext i16 %168 to i32
  %170 = add nuw nsw i32 %167, 1
  %171 = sub nsw i32 %170, %169
  %172 = shl i32 %171, 16
  %173 = or i32 %172, 1
  %174 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 3, i32 1
  store i32 %173, ptr %174, align 4
  %175 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 3, i32 3
  store i32 458759, ptr %175, align 4
  %176 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 3, i32 2
  store i32 %173, ptr %176, align 4
  %177 = getelementptr %struct.sti_vtg, ptr %0, i32 0, i32 1, i32 3, i32 4
  store i32 458759, ptr %177, align 4
  br label %178

178:                                              ; preds = %178, %2
  %179 = phi i32 [ 0, %2 ], [ %210, %178 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %180 = getelementptr %struct.sti_vtg_sync_params, ptr %3, i32 %179
  %181 = load i32, ptr %180, align 4
  %182 = load ptr, ptr %0, align 4
  %183 = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %179
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr i8, ptr %182, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %181) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %186 = getelementptr %struct.sti_vtg_sync_params, ptr %3, i32 %179, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = load ptr, ptr %0, align 4
  %189 = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %179, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr i8, ptr %188, i32 %190
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %187) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %192 = getelementptr %struct.sti_vtg_sync_params, ptr %3, i32 %179, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = load ptr, ptr %0, align 4
  %195 = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %179, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i8, ptr %194, i32 %196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %193) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %198 = getelementptr %struct.sti_vtg_sync_params, ptr %3, i32 %179, i32 3
  %199 = load i32, ptr %198, align 4
  %200 = load ptr, ptr %0, align 4
  %201 = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %179, i32 3
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr i8, ptr %200, i32 %202
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %199) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %204 = getelementptr %struct.sti_vtg_sync_params, ptr %3, i32 %179, i32 4
  %205 = load i32, ptr %204, align 4
  %206 = load ptr, ptr %0, align 4
  %207 = getelementptr [4 x %struct.sti_vtg_regs_offs], ptr @vtg_regs_offs, i32 0, i32 %179, i32 4
  %208 = load i32, ptr %207, align 4
  %209 = getelementptr i8, ptr %206, i32 %208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %205) #4, !srcloc !9
  %210 = add nuw nsw i32 %179, 1
  %211 = icmp eq i32 %210, 4
  br i1 %211, label %212, label %178

212:                                              ; preds = %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %213 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %214 = load ptr, ptr %0, align 4
  %215 = getelementptr i8, ptr %214, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %216 = load ptr, ptr %0, align 4
  %217 = getelementptr i8, ptr %216, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 65535) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %218 = load ptr, ptr %0, align 4
  %219 = getelementptr i8, ptr %218, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 65535) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %220 = load ptr, ptr %0, align 4
  %221 = getelementptr i8, ptr %220, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 3) #4, !srcloc !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sti_vtg_get_line_number(ptr nocapture noundef readonly byval(%struct.drm_display_mode) align 4 %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %0, i32 0, i32 9
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.drm_display_mode, ptr %0, i32 0, i32 7
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = add nuw nsw i32 %5, 1
  %10 = sub nsw i32 %9, %8
  %11 = getelementptr inbounds %struct.drm_display_mode, ptr %0, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 1
  %15 = shl nsw i32 %10, %14
  %16 = add i32 %15, %1
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sti_vtg_get_pixel_number(ptr nocapture noundef readonly byval(%struct.drm_display_mode) align 4 %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %0, i32 0, i32 4
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.drm_display_mode, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %1
  %10 = sub i32 %9, %8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_vtg_register_client(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 5
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 4
  %6 = tail call i32 @raw_notifier_chain_register(ptr noundef %5, ptr noundef %1) #4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sti_vtg_unregister_client(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sti_vtg, ptr %0, i32 0, i32 4
  %4 = tail call i32 @raw_notifier_chain_unregister(ptr noundef %3, ptr noundef %1) #4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vtg_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 100, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %44

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 4
  %11 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 1, %10
  %14 = add i32 %13, %12
  %15 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %10, i32 noundef %14) #4
  store ptr %15, ptr %3, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #4
  br label %44

18:                                               ; preds = %9
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %20 = getelementptr inbounds %struct.sti_vtg, ptr %3, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #4
  br label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sti_vtg, ptr %3, i32 0, i32 4
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi ptr [ %29, %28 ], [ %26, %23 ]
  %32 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %19, ptr noundef nonnull @vtg_irq, ptr noundef nonnull @vtg_irq_thread, i32 noundef 8192, ptr noundef %31, ptr noundef nonnull %3) #4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %36, align 8
  %37 = load ptr, ptr %25, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %37, %35 ]
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vtg_probe, ptr noundef %42) #5
  br label %44

44:                                               ; preds = %41, %34, %22, %17, %8, %1
  %45 = phi i32 [ %19, %22 ], [ %32, %34 ], [ 0, %41 ], [ -12, %17 ], [ -12, %8 ], [ -12, %1 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vtg_irq(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 120
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  %6 = getelementptr inbounds %struct.sti_vtg, ptr %1, i32 0, i32 3
  store i32 %5, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr i8, ptr %8, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !9
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr i8, ptr %10, i32 120
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !25
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vtg_irq_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sti_vtg, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 2, i32 1
  %8 = getelementptr inbounds %struct.sti_vtg, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.sti_vtg, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @raw_notifier_call_chain(ptr noundef %8, i32 noundef %7, ptr noundef %10) #4
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2153366537}
!9 = !{i64 2884883}
!10 = !{i64 2153366891}
!11 = !{i64 2153365061}
!12 = !{i64 2153365427}
!13 = !{i64 2153365795}
!14 = !{i64 2153366170}
!15 = !{i64 2153367281}
!16 = !{i64 2153367670}
!17 = !{i64 2153368081}
!18 = !{i64 2153368491}
!19 = !{i64 2153368899}
!20 = !{i64 2153369278}
!21 = !{i64 2153364729}
!22 = !{i64 2153369606}
!23 = !{i64 2153369938}
!24 = !{i64 2153370520}
!25 = !{i64 2885301}
!26 = !{i64 2153371205}
!27 = !{i64 2153371410}
!28 = !{i64 2153371908}
