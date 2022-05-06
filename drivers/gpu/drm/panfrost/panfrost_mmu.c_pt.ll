; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_mmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.77, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.77 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_mmu = type { ptr, %struct.kref, %struct.io_pgtable_cfg, ptr, %struct.drm_mm, %struct.spinlock, i32, %struct.atomic_t, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.80 }
%union.anon.80 = type { %struct.anon.87 }
%struct.anon.87 = type { [4 x i64], i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.89, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.anon.89 = type { %struct.list_head, %struct.mutex }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_mmu.c\00", align 1
@mmu_tlb_ops = internal constant %struct.iommu_flush_ops { ptr @mmu_tlb_inv_context_s1, ptr @mmu_tlb_flush_walk, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mmu\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"panfrost-mmu\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to request mmu irq\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"AS_ACTIVE bit stuck\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [165 x i8] c"Unhandled Page fault in AS%d at VA 0x%016llX\0AReason: %s\0Araw fault status: 0x%X\0Adecoded fault status: %s\0Aexception type 0x%X: %s\0Aaccess type 0x%X: %s\0Asource id 0x%X\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TODO\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"DECODER FAULT\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SLAVE FAULT\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"%s %s: matching BO is not heap type (GPU VA = %llx)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ATOMIC\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"EXECUTE\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_mmu_as_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #10, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #10, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %11 = shl i32 65537, %5
  %12 = icmp sgt i32 %10, 3
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 8
  %16 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 17
  %17 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 8, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %15, ptr %22, align 4
  store ptr %21, ptr %15, align 4
  store ptr %16, ptr %17, align 4
  store volatile ptr %15, ptr %16, align 4
  %23 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 16
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, %11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %84, label %27

27:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %28 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %11) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %31 = load i32, ptr %23, align 8
  %32 = xor i32 %31, -1
  %33 = load ptr, ptr %28, align 4
  %34 = getelementptr i8, ptr %33, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #10, !srcloc !14
  %35 = xor i32 %11, -1
  %36 = load i32, ptr %23, align 8
  %37 = and i32 %36, %35
  store i32 %37, ptr %23, align 8
  br label %82

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %40, -1
  %42 = tail call i32 @llvm.cttz.i32(i32 %41, i1 false) #10, !range !16
  %43 = shl nuw i32 1, %42
  %44 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 17
  %50 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 17, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %49
  br i1 %52, label %62, label %53

53:                                               ; preds = %58, %48
  %54 = phi ptr [ %60, %58 ], [ %51, %48 ]
  %55 = getelementptr i8, ptr %54, i32 -4
  %56 = load volatile i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %49
  br i1 %61, label %62, label %53

62:                                               ; preds = %58, %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #10
  br label %63

63:                                               ; preds = %62, %53
  %64 = phi ptr [ %49, %62 ], [ %54, %53 ]
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %64, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %67, ptr %66, align 4
  store volatile ptr %64, ptr %64, align 4
  store ptr %64, ptr %65, align 4
  %69 = getelementptr i8, ptr %64, i32 -8
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73, !prof !12

72:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef null) #10
  br label %73

73:                                               ; preds = %72, %63
  store i32 -1, ptr %69, align 4
  br label %74

74:                                               ; preds = %73, %38
  %75 = phi i32 [ %42, %38 ], [ %70, %73 ]
  store i32 %75, ptr %4, align 4
  tail call void @_set_bit(i32 noundef %75, ptr noundef %39) #10
  %76 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 7
  store volatile i32 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 8
  %78 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store ptr %79, ptr %77, align 4
  %81 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 8, i32 1
  store ptr %78, ptr %81, align 4
  store volatile ptr %77, ptr %78, align 4
  br label %82

82:                                               ; preds = %74, %27
  %83 = phi i32 [ %5, %27 ], [ %75, %74 ]
  tail call fastcc void @panfrost_mmu_enable(ptr noundef %0, ptr noundef %1)
  br label %84

84:                                               ; preds = %82, %14
  %85 = phi i32 [ %5, %14 ], [ %83, %82 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %86 = load i16, ptr %3, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @panfrost_mmu_enable(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 2, i32 7
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 2, i32 7, i32 0, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  tail call fastcc void @mmu_hw_do_operation_locked(ptr noundef %0, i32 noundef %4, i64 noundef 0, i64 noundef -1, i32 noundef 5)
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %9 = trunc i64 %6 to i32
  %10 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %4, 6
  %13 = add i32 %12, 9216
  %14 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %15 = lshr i64 %6, 32
  %16 = trunc i64 %15 to i32
  %17 = load ptr, ptr %10, align 4
  %18 = add i32 %12, 9220
  %19 = getelementptr i8, ptr %17, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %20 = trunc i64 %8 to i32
  %21 = load ptr, ptr %10, align 4
  %22 = add i32 %12, 9224
  %23 = getelementptr i8, ptr %21, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %24 = lshr i64 %8, 32
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr %10, align 4
  %27 = add i32 %12, 9228
  %28 = getelementptr i8, ptr %26, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #10, !srcloc !14
  %29 = tail call fastcc i32 @wait_ready(ptr noundef %0, i32 noundef %4) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %32 = load ptr, ptr %10, align 4
  %33 = add i32 %12, 9240
  %34 = getelementptr i8, ptr %32, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1) #10, !srcloc !14
  br label %35

35:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_as_put(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #10, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #10, !srcloc !26
  %5 = load volatile i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #10
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 15
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 16
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %17, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %9, i32 -8
  store i32 -1, ptr %11, align 4
  %12 = getelementptr i8, ptr %9, i32 -4
  store volatile i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %10, ptr %14, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %13, align 4
  %16 = icmp eq ptr %10, %5
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %18 = load i16, ptr %2, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  %20 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr i8, ptr %23, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_mmu_map(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 5
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !29

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #10
  br label %31

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.panfrost_gem_object, ptr %3, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = tail call ptr @drm_gem_shmem_get_pages_sgt(ptr noundef %3) #10
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20, !prof !12

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #10
  %19 = ptrtoint ptr %16 to i32
  br label %31

20:                                               ; preds = %13
  %21 = and i8 %15, 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 3, i32 11
  %24 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 3, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = shl i64 %27, 12
  tail call fastcc void @mmu_map_sg(ptr noundef %7, ptr noundef %25, i64 noundef %28, i32 noundef %23, ptr noundef %16)
  %29 = load i8, ptr %8, align 4
  %30 = or i8 %29, 1
  store i8 %30, ptr %8, align 4
  br label %31

31:                                               ; preds = %20, %18, %12
  %32 = phi i32 [ 0, %12 ], [ %19, %18 ], [ 0, %20 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_get_pages_sgt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmu_map_sg(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sg_table, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %48, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %4, align 4
  br label %13

13:                                               ; preds = %42, %11
  %14 = phi i64 [ %43, %42 ], [ %2, %11 ]
  %15 = phi ptr [ %45, %42 ], [ %12, %11 ]
  %16 = phi i32 [ %44, %42 ], [ 0, %11 ]
  %17 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ %38, %23 ], [ %14, %20 ]
  %25 = phi i32 [ %40, %23 ], [ %18, %20 ]
  %26 = phi i32 [ %39, %23 ], [ %22, %20 ]
  %27 = zext i32 %26 to i64
  %28 = or i64 %24, %27
  %29 = and i64 %28, 2097151
  %30 = icmp ne i64 %29, 0
  %31 = icmp ult i32 %25, 2097152
  %32 = or i1 %31, %30
  %33 = select i1 %32, i32 4096, i32 2097152
  %34 = load ptr, ptr %7, align 4
  %35 = trunc i64 %24 to i32
  %36 = tail call i32 %34(ptr noundef %7, i32 noundef %35, i32 noundef %26, i32 noundef %33, i32 noundef %3, i32 noundef 3264) #10
  %37 = zext i32 %33 to i64
  %38 = add i64 %24, %37
  %39 = add i32 %33, %26
  %40 = sub i32 %25, %33
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %23

42:                                               ; preds = %23, %13
  %43 = phi i64 [ %14, %13 ], [ %38, %23 ]
  %44 = add nuw i32 %16, 1
  %45 = tail call ptr @sg_next(ptr noundef %15) #10
  %46 = load i32, ptr %8, align 4
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %13, label %48

48:                                               ; preds = %42, %5
  %49 = phi i64 [ %2, %5 ], [ %43, %42 ]
  %50 = sub i64 %49, %2
  %51 = getelementptr inbounds %struct.panfrost_mmu, ptr %1, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #10, !srcloc !9
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #10, !srcloc !30
  %58 = load ptr, ptr %0, align 8
  %59 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 11, i32 18
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 11, i32 15
  %64 = load i16, ptr %63, align 8
  %65 = and i16 %64, 7
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62, %54
  %68 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %68) #10
  %69 = load i32, ptr %51, align 4
  tail call fastcc void @mmu_hw_do_operation_locked(ptr noundef %0, i32 noundef %69, i64 noundef %2, i64 noundef %50, i32 noundef 4) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %70 = load i16, ptr %68, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %68, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %72 = load ptr, ptr %0, align 8
  br label %73

73:                                               ; preds = %67, %62
  %74 = phi ptr [ %72, %67 ], [ %58, %62 ]
  %75 = tail call i32 @__pm_runtime_suspend(ptr noundef %74, i32 noundef 12) #10
  br label %76

76:                                               ; preds = %73, %48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_unmap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.panfrost_mmu, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 3, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = shl i64 %13, 12
  %15 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 3, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 12
  %19 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23, !prof !12

23:                                               ; preds = %1
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.io_pgtable_ops, ptr %11, i32 0, i32 4
  %27 = getelementptr inbounds %struct.io_pgtable_ops, ptr %11, i32 0, i32 2
  br label %29

28:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 340, i32 noundef 9, ptr noundef null) #10
  br label %88

29:                                               ; preds = %47, %25
  %30 = phi i32 [ 0, %25 ], [ %50, %47 ]
  %31 = phi i64 [ %14, %25 ], [ %49, %47 ]
  %32 = sub i32 %18, %30
  %33 = and i64 %31, 2093056
  %34 = icmp ne i64 %33, 0
  %35 = icmp ult i32 %32, 2097152
  %36 = or i1 %34, %35
  %37 = select i1 %36, i32 4096, i32 2097152
  %38 = load ptr, ptr %26, align 4
  %39 = trunc i64 %31 to i32
  %40 = tail call i32 %38(ptr noundef %11, i32 noundef %39) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %29
  %43 = load ptr, ptr %27, align 4
  %44 = tail call i32 %43(ptr noundef %11, i32 noundef %39, i32 noundef %37, ptr noundef null) #10
  %45 = icmp eq i32 %44, %37
  br i1 %45, label %47, label %46, !prof !29

46:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef null) #10
  br label %47

47:                                               ; preds = %46, %42, %29
  %48 = zext i32 %37 to i64
  %49 = add i64 %31, %48
  %50 = add i32 %37, %30
  %51 = icmp ugt i32 %18, %50
  br i1 %51, label %29, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %8, align 8
  %54 = load i64, ptr %12, align 8
  %55 = shl i64 %54, 12
  br label %56

56:                                               ; preds = %52, %23
  %57 = phi i64 [ %55, %52 ], [ %14, %23 ]
  %58 = phi ptr [ %53, %52 ], [ %9, %23 ]
  %59 = zext i32 %18 to i64
  %60 = getelementptr inbounds %struct.panfrost_mmu, ptr %58, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %7, align 8
  %65 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #10, !srcloc !9
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #10, !srcloc !30
  %67 = load ptr, ptr %7, align 8
  %68 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 11, i32 18
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 11, i32 15
  %73 = load i16, ptr %72, align 8
  %74 = and i16 %73, 7
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71, %63
  %77 = getelementptr inbounds %struct.panfrost_device, ptr %7, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %77) #10
  %78 = load i32, ptr %60, align 4
  tail call fastcc void @mmu_hw_do_operation_locked(ptr noundef %7, i32 noundef %78, i64 noundef %57, i64 noundef %59, i32 noundef 4) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %79 = load i16, ptr %77, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %77, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %81 = load ptr, ptr %7, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = phi ptr [ %81, %76 ], [ %67, %71 ]
  %84 = tail call i32 @__pm_runtime_suspend(ptr noundef %83, i32 noundef 12) #10
  br label %85

85:                                               ; preds = %82, %56
  %86 = load i8, ptr %19, align 4
  %87 = and i8 %86, -2
  store i8 %87, ptr %19, align 4
  br label %88

88:                                               ; preds = %85, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_ctx_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_mmu, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #10, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #10, !srcloc !32
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %49, label %8, !prof !29

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #10
  br label %49

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !33
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.panfrost_device, ptr %10, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %11) #10
  %12 = getelementptr %struct.panfrost_mmu, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #10, !srcloc !30
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 11, i32 15
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 7
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %15
  %29 = load i32, ptr %12, align 4
  tail call fastcc void @panfrost_mmu_disable(ptr noundef %10, i32 noundef %29) #10
  %30 = load ptr, ptr %10, align 8
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %30, %28 ], [ %19, %23 ]
  %33 = tail call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 13) #10
  %34 = load i32, ptr %12, align 4
  %35 = getelementptr inbounds %struct.panfrost_device, ptr %10, i32 0, i32 15
  tail call void @_clear_bit(i32 noundef %34, ptr noundef %35) #10
  %36 = load i32, ptr %12, align 4
  %37 = getelementptr inbounds %struct.panfrost_device, ptr %10, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef %36, ptr noundef %37) #10
  %38 = getelementptr %struct.panfrost_mmu, ptr %0, i32 0, i32 8
  %39 = getelementptr %struct.panfrost_mmu, ptr %0, i32 0, i32 8, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  br label %43

43:                                               ; preds = %31, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %44 = load i16, ptr %11, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %46 = getelementptr %struct.panfrost_mmu, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  tail call void @free_io_pgtable_ops(ptr noundef %47) #10
  %48 = getelementptr %struct.panfrost_mmu, ptr %0, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %48) #10
  tail call void @kfree(ptr noundef %0) #10
  br label %49

49:                                               ; preds = %43, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @panfrost_mmu_ctx_get(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_mmu, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #10, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #10, !srcloc !34
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !12

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !29

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #10
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @panfrost_mmu_ctx_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [44 x i8], align 4
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 264) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 5
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 4
  tail call void @drm_mm_init(ptr noundef %8, i64 noundef 8192, i64 noundef 1040384) #10
  store ptr @panfrost_drm_mm_color_adjust, ptr %8, align 8
  %9 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 8
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 8, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 6
  store i32 -1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 12
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 255
  %16 = lshr i32 %14, 8
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 10
  %19 = load i8, ptr %18, align 8, !range !35
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %21, i8 0, i32 40, i1 false)
  store i32 0, ptr %12, align 8
  %22 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 2, i32 1
  store i32 2101248, ptr %22, align 4
  %23 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 2, i32 2
  store i32 %15, ptr %23, align 8
  %24 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 2, i32 3
  store i32 %17, ptr %24, align 4
  %25 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 2, i32 4
  store i8 %19, ptr %25, align 8
  %26 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 2, i32 5
  store ptr @mmu_tlb_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 2, i32 6
  store ptr %20, ptr %27, align 8
  %28 = getelementptr inbounds i8, ptr %12, i32 28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %28, ptr noundef nonnull align 4 dereferenceable(44) %2, i32 44, i1 false)
  %29 = tail call ptr @alloc_io_pgtable_ops(i32 noundef 5, ptr noundef %12, ptr noundef nonnull %4) #10
  %30 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 3
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %35

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.panfrost_mmu, ptr %4, i32 0, i32 1
  store volatile i32 1, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %32, %1
  %36 = phi ptr [ %4, %33 ], [ inttoptr (i32 -22 to ptr), %32 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %36
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @panfrost_drm_mm_color_adjust(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #3 {
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 1048575
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = add nuw i64 %8, 1
  store i64 %12, ptr %2, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %12, %11 ], [ %8, %7 ]
  %15 = load i64, ptr %3, align 8
  %16 = and i64 %15, 1048575
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = add i64 %15, -1
  store i64 %19, ptr %3, align 8
  %20 = load i64, ptr %2, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i64 [ %19, %18 ], [ %15, %13 ]
  %23 = phi i64 [ %20, %18 ], [ %14, %13 ]
  %24 = add i64 %23, 1048575
  %25 = and i64 %24, -1048576
  %26 = sub i64 %25, %23
  %27 = icmp ult i64 %26, 4097
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = or i64 %25, 1
  store i64 %29, ptr %2, align 8
  %30 = load i64, ptr %3, align 8
  %31 = add i64 %25, 1048576
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i64 [ %31, %28 ], [ %25, %21 ]
  %34 = phi i64 [ %30, %28 ], [ %22, %21 ]
  %35 = add i64 %33, -1
  %36 = tail call i64 @llvm.umin.i64(i64 %34, i64 %35)
  store i64 %36, ptr %3, align 8
  br label %37

37:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_mmu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = tail call i32 @platform_get_irq_byname(ptr noundef %3, ptr noundef nonnull @.str.1) #10
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %4, ptr noundef nonnull @panfrost_mmu_irq_handler, ptr noundef nonnull @panfrost_mmu_irq_handler_thread, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %0) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.3) #12
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi i32 [ %8, %10 ], [ -19, %1 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_mmu_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8204
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !37
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !38
  tail call void @arm_heavy_mb() #10
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !14
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ 2, %8 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_mmu_irq_handler_thread(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8192
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !39
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %252, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 13
  %10 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 17
  %11 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 11, i32 23
  %12 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 16
  br label %13

13:                                               ; preds = %249, %8
  %14 = phi i32 [ %6, %8 ], [ %250, %249 ]
  %15 = lshr i32 %14, 16
  %16 = or i32 %15, %14
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true), !range !16
  %18 = shl nuw i32 1, %17
  %19 = shl i32 65537, %17
  %20 = load ptr, ptr %3, align 4
  %21 = shl nuw nsw i32 %17, 6
  %22 = add nuw nsw i32 %21, 9244
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !40
  %25 = load ptr, ptr %3, align 4
  %26 = add nuw nsw i32 %21, 9248
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !41
  %29 = zext i32 %28 to i64
  %30 = load ptr, ptr %3, align 4
  %31 = add nuw nsw i32 %21, 9252
  %32 = getelementptr i8, ptr %30, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  %34 = zext i32 %33 to i64
  %35 = shl nuw i64 %34, 32
  %36 = or i64 %35, %29
  %37 = and i32 %24, 255
  %38 = lshr i32 %24, 8
  %39 = and i32 %38, 3
  %40 = lshr i32 %24, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr i8, ptr %41, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %19) #10, !srcloc !14
  %43 = and i32 %19, %14
  %44 = icmp eq i32 %43, %18
  %45 = and i32 %24, 248
  %46 = icmp eq i32 %45, 192
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %218

48:                                               ; preds = %13
  %49 = lshr i64 %36, 12
  tail call void @_raw_spin_lock(ptr noundef %9) #10
  br label %50

50:                                               ; preds = %54, %48
  %51 = phi ptr [ %10, %48 ], [ %52, %54 ]
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %10
  br i1 %53, label %92, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %52, i32 -8
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %17
  br i1 %57, label %58, label %50

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %52, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %59) #10
  %60 = getelementptr i8, ptr %52, i32 -120
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %88, label %63

63:                                               ; preds = %85, %58
  %64 = phi ptr [ %86, %85 ], [ %61, %58 ]
  %65 = getelementptr i8, ptr %64, i32 -20
  %66 = load i64, ptr %65, align 8
  %67 = icmp ult i64 %49, %66
  br i1 %67, label %85, label %68

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %64, i32 -12
  %70 = load i64, ptr %69, align 8
  %71 = add i64 %70, %66
  %72 = icmp ult i64 %49, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %64, i32 -44
  %75 = getelementptr i8, ptr %64, i32 -36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #10, !srcloc !9
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #10, !srcloc !34
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79, !prof !12

79:                                               ; preds = %73
  %80 = add i32 %77, 1
  %81 = or i32 %80, %77
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %88, label %83, !prof !29

83:                                               ; preds = %79, %73
  %84 = phi i32 [ 2, %73 ], [ 1, %79 ]
  tail call void @refcount_warn_saturate(ptr noundef %75, i32 noundef %84) #10
  br label %88

85:                                               ; preds = %68, %63
  %86 = load ptr, ptr %64, align 4
  %87 = icmp eq ptr %86, %60
  br i1 %87, label %88, label %63

88:                                               ; preds = %85, %83, %79, %58
  %89 = phi ptr [ %74, %79 ], [ %74, %83 ], [ null, %58 ], [ null, %85 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %90 = load i16, ptr %59, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  br label %92

92:                                               ; preds = %88, %50
  %93 = phi ptr [ %89, %88 ], [ null, %50 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %94 = load i16, ptr %9, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %96 = icmp eq ptr %93, null
  br i1 %96, label %218, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %93, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.panfrost_gem_object, ptr %99, i32 0, i32 4
  %101 = load i8, ptr %100, align 4
  %102 = and i8 %101, 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load ptr, ptr %1, align 8
  %106 = tail call ptr @dev_driver_string(ptr noundef %105) #10
  %107 = load ptr, ptr %1, align 8
  %108 = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load ptr, ptr %107, align 4
  br label %113

113:                                              ; preds = %111, %104
  %114 = phi ptr [ %112, %111 ], [ %109, %104 ]
  %115 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %93, i32 0, i32 3, i32 1
  %116 = load i64, ptr %115, align 8
  %117 = shl i64 %116, 12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 438, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %106, ptr noundef %114, i64 noundef %117) #10
  br label %205

118:                                              ; preds = %97
  %119 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %93, i32 0, i32 4
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.panfrost_mmu, ptr %120, i32 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, %17
  br i1 %123, label %125, label %124, !prof !29

124:                                              ; preds = %118
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 442, i32 noundef 9, ptr noundef null) #10
  br label %125

125:                                              ; preds = %124, %118
  %126 = and i64 %36, -2097152
  %127 = lshr exact i64 %126, 12
  %128 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %93, i32 0, i32 3, i32 1
  %129 = load i64, ptr %128, align 8
  %130 = sub i64 %127, %129
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %99, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %132) #10
  %133 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %99, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %155

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.drm_gem_object, ptr %99, i32 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 21
  %140 = mul nuw nsw i32 %139, 12
  %141 = tail call noalias ptr @kvmalloc_node(i32 noundef %140, i32 noundef 3520, i32 noundef -1) #13
  %142 = getelementptr inbounds %struct.panfrost_gem_object, ptr %99, i32 0, i32 1
  store ptr %141, ptr %142, align 8
  %143 = icmp eq ptr %141, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  tail call void @mutex_unlock(ptr noundef %132) #10
  br label %205

145:                                              ; preds = %136
  %146 = load i32, ptr %137, align 8
  %147 = lshr i32 %146, 10
  %148 = and i32 %147, 4194300
  %149 = tail call noalias ptr @kvmalloc_node(i32 noundef %148, i32 noundef 3520, i32 noundef -1) #13
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load ptr, ptr %142, align 8
  tail call void @kvfree(ptr noundef %152) #10
  store ptr null, ptr %142, align 8
  tail call void @mutex_unlock(ptr noundef %132) #10
  br label %205

153:                                              ; preds = %145
  store ptr %149, ptr %133, align 4
  %154 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %99, i32 0, i32 3
  store i32 1, ptr %154, align 8
  br label %160

155:                                              ; preds = %125
  %156 = getelementptr ptr, ptr %134, i32 %131
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  tail call void @mutex_unlock(ptr noundef %132) #10
  br label %201

160:                                              ; preds = %155, %153
  %161 = phi ptr [ %134, %155 ], [ %149, %153 ]
  %162 = getelementptr inbounds %struct.drm_gem_object, ptr %99, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.file, ptr %163, i32 0, i32 17
  %165 = load ptr, ptr %164, align 8
  %166 = getelementptr inbounds %struct.address_space, ptr %165, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %166) #10
  %167 = add i32 %131, 512
  %168 = icmp ult i32 %131, -512
  br i1 %168, label %169, label %184

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.address_space, ptr %165, i32 0, i32 3
  br label %171

171:                                              ; preds = %181, %169
  %172 = phi i32 [ %131, %169 ], [ %182, %181 ]
  %173 = load i32, ptr %170, align 4
  %174 = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %165, i32 noundef %172, i32 noundef %173) #10
  %175 = getelementptr ptr, ptr %161, i32 %172
  store ptr %174, ptr %175, align 4
  %176 = icmp ugt ptr %174, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = getelementptr ptr, ptr %161, i32 %172
  tail call void @mutex_unlock(ptr noundef %132) #10
  %179 = load ptr, ptr %178, align 4
  %180 = ptrtoint ptr %179 to i32
  br label %203

181:                                              ; preds = %171
  %182 = add nuw i32 %172, 1
  %183 = icmp ult i32 %182, %167
  br i1 %183, label %171, label %184

184:                                              ; preds = %181, %160
  tail call void @mutex_unlock(ptr noundef %132) #10
  %185 = getelementptr inbounds %struct.panfrost_gem_object, ptr %99, i32 0, i32 1
  %186 = load ptr, ptr %185, align 8
  %187 = lshr i32 %131, 9
  %188 = getelementptr %struct.sg_table, ptr %186, i32 %187
  %189 = getelementptr ptr, ptr %161, i32 %131
  %190 = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %188, ptr noundef %189, i32 noundef 512, i32 noundef 0, i32 noundef 2097152, i32 noundef -1, i32 noundef 3264) #10
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %184
  %193 = load ptr, ptr %1, align 8
  %194 = tail call i32 @dma_map_sgtable(ptr noundef %193, ptr noundef %188, i32 noundef 0, i32 noundef 0) #10
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load ptr, ptr %119, align 8
  tail call fastcc void @mmu_map_sg(ptr noundef %1, ptr noundef %197, i64 noundef %126, i32 noundef 11, ptr noundef %188) #10
  %198 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %93, i32 0, i32 5
  %199 = load i8, ptr %198, align 4
  %200 = or i8 %199, 1
  store i8 %200, ptr %198, align 4
  br label %201

201:                                              ; preds = %196, %159
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %93) #10
  br label %238

202:                                              ; preds = %192
  tail call void @sg_free_table(ptr noundef %188) #10
  br label %203

203:                                              ; preds = %202, %184, %177
  %204 = phi i32 [ %180, %177 ], [ %190, %184 ], [ %194, %202 ]
  tail call void @drm_gem_shmem_put_pages(ptr noundef %99) #10
  br label %205

205:                                              ; preds = %203, %151, %144, %113
  %206 = phi i32 [ %204, %203 ], [ -12, %151 ], [ -12, %144 ], [ -12, %113 ]
  %207 = icmp eq ptr %99, null
  br i1 %207, label %216, label %208

208:                                              ; preds = %205
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %99) #10, !srcloc !9
  %209 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %99, ptr nonnull %99, i32 1, ptr nonnull elementtype(i32) %99) #10, !srcloc !32
  %210 = extractvalue { i32, i32, i32 } %209, 0
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = icmp sgt i32 %210, 0
  br i1 %213, label %216, label %214, !prof !29

214:                                              ; preds = %212
  tail call void @refcount_warn_saturate(ptr noundef nonnull %99, i32 noundef 3) #10
  br label %216

215:                                              ; preds = %208
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !33
  tail call void @drm_gem_object_free(ptr noundef nonnull %99) #10, !callees !44
  br label %216

216:                                              ; preds = %215, %214, %212, %205
  %217 = icmp eq i32 %206, 0
  br i1 %217, label %238, label %218

218:                                              ; preds = %216, %92, %13
  %219 = load ptr, ptr %1, align 8
  %220 = and i32 %24, 1024
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, ptr @.str.8, ptr @.str.7
  %223 = tail call ptr @panfrost_exception_name(i32 noundef %37) #10
  switch i32 %39, label %231 [
    i32 0, label %224
    i32 2, label %232
    i32 3, label %229
    i32 1, label %230
  ]

224:                                              ; preds = %218
  %225 = load volatile i32, ptr %11, align 4
  %226 = and i32 %225, 67108864
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, ptr @.str.11, ptr @.str.10
  br label %232

229:                                              ; preds = %218
  br label %232

230:                                              ; preds = %218
  br label %232

231:                                              ; preds = %218
  unreachable

232:                                              ; preds = %230, %229, %224, %218
  %233 = phi ptr [ @.str.14, %230 ], [ @.str.13, %229 ], [ %228, %224 ], [ @.str.12, %218 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.5, i32 noundef %17, i64 noundef %36, ptr noundef nonnull @.str.6, i32 noundef %24, ptr noundef nonnull %222, i32 noundef %37, ptr noundef %223, i32 noundef %39, ptr noundef nonnull %233, i32 noundef %40) #12
  tail call void @_raw_spin_lock(ptr noundef %9) #10
  %234 = load i32, ptr %12, align 8
  %235 = or i32 %234, %19
  store i32 %235, ptr %12, align 8
  tail call fastcc void @panfrost_mmu_disable(ptr noundef %1, i32 noundef %17)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %236 = load i16, ptr %9, align 4
  %237 = add i16 %236, 1
  store i16 %237, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  br label %238

238:                                              ; preds = %232, %216, %201
  %239 = xor i32 %19, -1
  %240 = and i32 %14, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %238
  %243 = load ptr, ptr %3, align 4
  %244 = getelementptr i8, ptr %243, i32 8192
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #10, !srcloc !36
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !45
  %246 = load i32, ptr %12, align 8
  %247 = xor i32 %246, -1
  %248 = and i32 %245, %247
  br label %249

249:                                              ; preds = %242, %238
  %250 = phi i32 [ %240, %238 ], [ %248, %242 ]
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %13

252:                                              ; preds = %249, %2
  %253 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %253) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %254 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 16
  %255 = load i32, ptr %254, align 8
  %256 = xor i32 %255, -1
  %257 = load ptr, ptr %3, align 4
  %258 = getelementptr i8, ptr %257, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #10, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %259 = load i16, ptr %253, align 4
  %260 = add i16 %259, 1
  store i16 %260, ptr %253, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_mmu_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #10, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmu_hw_do_operation_locked(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %5
  %8 = icmp eq i64 %3, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %7
  %10 = add i64 %2, -1
  %11 = add i64 %10, %3
  %12 = xor i64 %11, %2
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #10, !range !16
  %18 = sub nuw nsw i32 64, %17
  br label %25

19:                                               ; preds = %9
  %20 = trunc i64 %12 to i32
  %21 = icmp eq i32 %20, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 false) #10, !range !16
  %23 = sub nuw nsw i32 32, %22
  %24 = select i1 %21, i32 0, i32 %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 15) #10
  %28 = trunc i32 %27 to i8
  %29 = add nsw i8 %28, -1
  %30 = zext i8 %29 to i64
  %31 = shl nsw i64 -1, %30
  %32 = and i64 %31, %2
  %33 = or i64 %32, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = shl i32 %1, 6
  %38 = add i32 %37, 9232
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %34) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %40 = lshr i64 %32, 32
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr %35, align 4
  %43 = add i32 %37, 9236
  %44 = getelementptr i8, ptr %42, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %41) #10, !srcloc !14
  %45 = tail call fastcc i32 @wait_ready(ptr noundef %0, i32 noundef %1) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %48 = load ptr, ptr %35, align 4
  %49 = add i32 %37, 9240
  %50 = getelementptr i8, ptr %48, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 2) #10, !srcloc !14
  br label %51

51:                                               ; preds = %47, %25, %7
  %52 = tail call fastcc i32 @wait_ready(ptr noundef %0, i32 noundef %1) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %55 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = shl i32 %1, 6
  %58 = add i32 %57, 9240
  %59 = getelementptr i8, ptr %56, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %4) #10, !srcloc !14
  br label %60

60:                                               ; preds = %54, %51
  %61 = tail call fastcc i32 @wait_ready(ptr noundef %0, i32 noundef %1)
  br label %62

62:                                               ; preds = %60, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_ready(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @ktime_get() #10
  %4 = add i64 %3, 100000000
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %6 = shl i32 %1, 6
  %7 = add i32 %6, 9256
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !36
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %16, %2
  %14 = tail call i64 @ktime_get() #10
  %15 = icmp sgt i64 %14, %4
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #10
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 %7
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !36
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %13

23:                                               ; preds = %13
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 %7
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !36
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23
  %31 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 2
  store volatile i32 1, ptr %31, align 4
  %32 = load ptr, ptr %30, align 8
  %33 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 23, i32 1
  %34 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %32, ptr noundef %33) #10
  %35 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.4) #12
  br label %36

36:                                               ; preds = %29, %23, %16, %2
  %37 = phi i32 [ -110, %29 ], [ 0, %23 ], [ 0, %2 ], [ 0, %16 ]
  ret i32 %37
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @panfrost_mmu_disable(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @mmu_hw_do_operation_locked(ptr noundef %0, i32 noundef %1, i64 noundef 0, i64 noundef -1, i32 noundef 5)
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = shl i32 %1, 6
  %6 = add i32 %5, 9216
  %7 = getelementptr i8, ptr %4, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %8 = load ptr, ptr %3, align 4
  %9 = add i32 %5, 9220
  %10 = getelementptr i8, ptr %8, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  tail call void @arm_heavy_mb() #10
  %11 = load ptr, ptr %3, align 4
  %12 = add i32 %5, 9224
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %14 = load ptr, ptr %3, align 4
  %15 = add i32 %5, 9228
  %16 = getelementptr i8, ptr %14, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #10, !srcloc !14
  %17 = tail call fastcc i32 @wait_ready(ptr noundef %0, i32 noundef %1) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %20 = load ptr, ptr %3, align 4
  %21 = add i32 %5, 9240
  %22 = getelementptr i8, ptr %20, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #10, !srcloc !14
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mmu_tlb_inv_context_s1(ptr nocapture noundef %0) #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @mmu_tlb_flush_walk(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #8 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_exception_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_put_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{i64 2148060524}
!9 = !{i64 387435, i64 2147889001, i64 2147889027, i64 2147889074, i64 2147889096, i64 2147889124, i64 2147889144}
!10 = !{i64 2147963386, i64 2147963418, i64 2147963447, i64 2147963481, i64 2147963512, i64 2147963535}
!11 = !{i64 2148060727}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2154465882}
!14 = !{i64 5128199}
!15 = !{i64 2154466301}
!16 = !{i32 0, i32 33}
!17 = !{i64 2149335088}
!18 = !{i64 2149330912}
!19 = !{i64 2149330987, i64 2149331014, i64 2149331061, i64 2149331083, i64 2149331111, i64 2149331131}
!20 = !{i64 2149358091}
!21 = !{i64 2154460632}
!22 = !{i64 2154461314}
!23 = !{i64 2154461992}
!24 = !{i64 2154462669}
!25 = !{i64 2154417396}
!26 = !{i64 2147965059, i64 2147965085, i64 2147965114, i64 2147965148, i64 2147965179, i64 2147965202}
!27 = !{i64 2154477655}
!28 = !{i64 2154478030}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2147962702, i64 2147962728, i64 2147962757, i64 2147962791, i64 2147962822, i64 2147962845}
!31 = !{i64 2148064358}
!32 = !{i64 2147966517, i64 2147966549, i64 2147966578, i64 2147966612, i64 2147966643, i64 2147966666}
!33 = !{i64 2149409003}
!34 = !{i64 2147964160, i64 2147964192, i64 2147964221, i64 2147964255, i64 2147964286, i64 2147964309}
!35 = !{i8 0, i8 2}
!36 = !{i64 5128617}
!37 = !{i64 2154531854}
!38 = !{i64 2154532095}
!39 = !{i64 2154532618}
!40 = !{i64 2154533363}
!41 = !{i64 2154533910}
!42 = !{i64 2154534457}
!43 = !{i64 2154534704}
!44 = distinct !{ptr @drm_gem_object_free, null}
!45 = !{i64 2154537441}
!46 = !{i64 2154537724}
!47 = !{i64 2154540074}
!48 = !{i64 2154459268}
!49 = !{i64 2154459940}
!50 = !{i64 2154463257}
!51 = !{i64 2154463769}
!52 = !{i64 2154464281}
!53 = !{i64 2154464793}
