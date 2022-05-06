; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_usif.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_usif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_notify_rep_v0 = type { i8, [6 x i8], i8, i64, [0 x i8] }
%struct.usif_notify = type { %struct.list_head, %struct.atomic_t, i32, i16, i8, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.usif_notify_p = type { %struct.drm_pending_event, %struct.anon.76 }
%struct.anon.76 = type { %struct.drm_event, [0 x i8] }
%struct.drm_event = type { i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.80 }
%struct.anon.80 = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.usif_object = type { %struct.list_head, %struct.list_head, i8, i64 }
%struct.nvif_ioctl_new_v0 = type { i8, [6 x i8], i8, i64, i64, i32, i32, [0 x i8] }
%struct.nvif_ioctl_ntfy_new_v0 = type { i8, i8, i8, [5 x i8], [0 x i8] }
%struct.nvif_ioctl_ntfy_del_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_ioctl_ntfy_put_v0 = type { i8, i8, [6 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"drivers/gpu/drm/nouveau/nouveau_usif.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usif_notify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 16
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = load i8, ptr %0, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %0, i32 0, i32 3
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef null) #8
  br label %78

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %0, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %22, label %20, !prof !9

20:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_usif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

21:                                               ; preds = %6, %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef null) #8
  br label %78

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.usif_notify, ptr %13, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.usif_notify, ptr %13, i32 0, i32 3
  %28 = load i16, ptr %27, align 8
  %29 = zext i16 %28 to i32
  %30 = add i32 %3, 16
  %31 = icmp eq i32 %30, %29
  br i1 %31, label %33, label %32, !prof !9

32:                                               ; preds = %26, %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #8
  br label %78

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.drm_pending_event, ptr %24, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_file, ptr %35, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.drm_minor, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usif_notify_p, ptr %24, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %40, ptr noundef align 1 dereferenceable(16) %0, i32 16, i1 false)
  %41 = load ptr, ptr %23, align 8
  %42 = getelementptr %struct.usif_notify_p, ptr %41, i32 1, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %2, i32 %3, i1 false)
  %43 = load i8, ptr %0, align 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %33
  %46 = load ptr, ptr %23, align 8
  %47 = getelementptr inbounds %struct.usif_notify_p, ptr %46, i32 1
  %48 = getelementptr inbounds %struct.usif_notify, ptr %13, i32 0, i32 4
  %49 = load i8, ptr %48, align 2
  %50 = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %47, i32 0, i32 2
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.usif_notify, ptr %13, i32 0, i32 5
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.usif_notify_p, ptr %46, i32 1, i32 0, i32 2
  store i64 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 28
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #8
  %56 = getelementptr inbounds %struct.drm_file, ptr %35, i32 0, i32 26
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %23, align 8
  %59 = getelementptr inbounds %struct.usif_notify_p, ptr %58, i32 0, i32 1, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %63, label %64, !prof !8

62:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_usif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

63:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #8
  br label %75

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.drm_pending_event, ptr %58, i32 0, i32 5
  %66 = getelementptr inbounds %struct.drm_file, ptr %35, i32 0, i32 25
  %67 = getelementptr inbounds %struct.drm_file, ptr %35, i32 0, i32 25, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %65, ptr %67, align 4
  store ptr %66, ptr %65, align 4
  %69 = getelementptr inbounds %struct.drm_pending_event, ptr %58, i32 0, i32 5, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %65, ptr %68, align 4
  %70 = load ptr, ptr %23, align 8
  %71 = getelementptr inbounds %struct.usif_notify_p, ptr %70, i32 0, i32 1, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %56, align 4
  %74 = sub i32 %73, %72
  store i32 %74, ptr %56, align 4
  br label %75

75:                                               ; preds = %64, %63
  %76 = getelementptr inbounds %struct.drm_file, ptr %35, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %76, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #8
  %77 = getelementptr inbounds %struct.usif_notify, ptr %13, i32 0, i32 1
  store volatile i32 0, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %32, %21, %15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usif_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %120, label %12

12:                                               ; preds = %8
  %13 = icmp slt i32 %2, 0
  %14 = load i1, ptr @check_copy_size.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %120

18:                                               ; preds = %12
  br i1 %13, label %120, label %19, !prof !8

19:                                               ; preds = %18
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #10, !srcloc !12
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30, !prof !9

23:                                               ; preds = %19
  %24 = tail call ptr @llvm.thread.pointer() #8
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #11, !srcloc !13
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  %29 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %2) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i32 [ %29, %23 ], [ %2, %19 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !9

33:                                               ; preds = %30
  %34 = sub i32 %2, %31
  %35 = getelementptr i8, ptr %10, i32 %34
  tail call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %31, i1 false) #8
  br label %120

36:                                               ; preds = %30
  %37 = icmp ugt i32 %2, 23
  br i1 %37, label %38, label %120

38:                                               ; preds = %36
  %39 = load i8, ptr %10, align 64
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %120

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %10, i32 24
  %43 = add nsw i32 %2, -24
  %44 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 3
  %45 = load i8, ptr %44, align 2
  %46 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 6
  %47 = load i64, ptr %46, align 16
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8 [ 1, %53 ], [ -1, %49 ]
  store i8 %55, ptr %44, align 2
  %56 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %56) #8
  %57 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = icmp eq i8 %58, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = tail call i32 @nouveau_abi16_usif(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62, %60
  %66 = phi i32 [ %63, %62 ], [ -22, %60 ]
  tail call void @mutex_unlock(ptr noundef %56) #8
  br label %120

67:                                               ; preds = %62, %54
  %68 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 1
  %69 = load i8, ptr %68, align 1
  switch i8 %69, label %81 [
    i8 2, label %70
    i8 9, label %73
    i8 10, label %75
    i8 11, label %77
    i8 12, label %79
  ]

70:                                               ; preds = %67
  %71 = xor i1 %59, true
  %72 = tail call fastcc i32 @usif_object_new(ptr noundef %0, ptr noundef %42, i32 noundef %43, ptr noundef nonnull %10, i32 noundef %2, i1 noundef zeroext %71)
  br label %83

73:                                               ; preds = %67
  %74 = tail call fastcc i32 @usif_notify_new(ptr noundef %0, ptr noundef %42, i32 noundef %43, ptr noundef nonnull %10, i32 noundef %2)
  br label %83

75:                                               ; preds = %67
  %76 = tail call fastcc i32 @usif_notify_del(ptr noundef %0, ptr noundef %42, i32 noundef %43, ptr noundef nonnull %10, i32 noundef %2)
  br label %83

77:                                               ; preds = %67
  %78 = tail call fastcc i32 @usif_notify_get(ptr noundef %0, ptr noundef %42, i32 noundef %43, ptr noundef nonnull %10, i32 noundef %2)
  br label %83

79:                                               ; preds = %67
  %80 = tail call fastcc i32 @usif_notify_put(ptr noundef %0, ptr noundef %42, i32 noundef %43, ptr noundef nonnull %10, i32 noundef %2)
  br label %83

81:                                               ; preds = %67
  %82 = tail call i32 @nvif_client_ioctl(ptr noundef %9, ptr noundef nonnull %10, i32 noundef %2) #8
  br label %83

83:                                               ; preds = %81, %79, %77, %75, %73, %70
  %84 = phi i32 [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ], [ %72, %70 ]
  %85 = load i8, ptr %57, align 1
  %86 = icmp eq i8 %85, 1
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 5
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr inbounds %struct.usif_object, ptr %91, i32 0, i32 2
  %93 = load i8, ptr %92, align 8
  store i8 %93, ptr %57, align 1
  %94 = getelementptr inbounds %struct.usif_object, ptr %91, i32 0, i32 3
  %95 = load i64, ptr %94, align 8
  store i64 %95, ptr %88, align 8
  %96 = icmp eq i32 %84, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %87
  %98 = load i8, ptr %68, align 1
  %99 = icmp eq i8 %98, 3
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %91, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %102, ptr %104, align 4
  store volatile ptr %103, ptr %102, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %91, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %101, align 4
  tail call void @kfree(ptr noundef %91) #8
  br label %107

105:                                              ; preds = %83
  store i8 -1, ptr %57, align 1
  %106 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %10, i32 0, i32 5
  store i64 0, ptr %106, align 8
  br label %107

107:                                              ; preds = %105, %100, %97, %87
  store i8 %45, ptr %44, align 2
  tail call void @mutex_unlock(ptr noundef %56) #8
  %108 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #10, !srcloc !16
  %109 = extractvalue { i32, i32 } %108, 0
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = tail call ptr @llvm.thread.pointer() #8
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 3
  %114 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %113) #11, !srcloc !13
  %115 = and i32 %114, -13
  %116 = or i32 %115, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  %117 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %10, i32 noundef %2) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %114) #8, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !15
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 %84, i32 -14
  br label %120

120:                                              ; preds = %111, %107, %65, %38, %36, %33, %18, %17, %8
  %121 = phi ptr [ null, %8 ], [ %10, %65 ], [ %10, %17 ], [ %10, %33 ], [ %10, %38 ], [ %10, %36 ], [ %10, %18 ], [ %10, %107 ], [ %10, %111 ]
  %122 = phi i32 [ -12, %8 ], [ %66, %65 ], [ -14, %17 ], [ -14, %33 ], [ -38, %38 ], [ -38, %36 ], [ -14, %18 ], [ -14, %107 ], [ %119, %111 ]
  tail call void @kfree(ptr noundef %121) #8
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_usif(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usif_object_new(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %10, %8 ], [ null, %6 ]
  %13 = icmp ugt i32 %2, 31
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load i8, ptr %1, align 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %22 [
    i32 2, label %49
    i32 3, label %49
    i32 61, label %49
    i32 128, label %20
  ]

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %1, i32 33
  store i8 0, ptr %21, align 1
  br label %23

22:                                               ; preds = %17
  br i1 %5, label %23, label %49

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 32) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nouveau_cli, ptr %12, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %25, ptr %30, align 4
  store ptr %29, ptr %25, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %28, ptr %31, align 4
  store volatile ptr %25, ptr %28, align 4
  %32 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %1, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.usif_object, ptr %25, i32 0, i32 2
  store i8 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %1, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.usif_object, ptr %25, i32 0, i32 3
  store i64 %36, ptr %37, align 8
  store i8 1, ptr %32, align 1
  %38 = ptrtoint ptr %25 to i32
  %39 = zext i32 %38 to i64
  store i64 %39, ptr %35, align 8
  %40 = tail call i32 @nvif_client_ioctl(ptr noundef %12, ptr noundef %3, i32 noundef %4) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %27
  %43 = load ptr, ptr %31, align 4
  %44 = load ptr, ptr %25, align 8
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  tail call void @kfree(ptr noundef nonnull %25) #8
  br label %49

46:                                               ; preds = %27
  %47 = load i64, ptr %37, align 8
  store i64 %47, ptr %35, align 8
  %48 = load i8, ptr %34, align 8
  store i8 %48, ptr %32, align 1
  br label %49

49:                                               ; preds = %46, %42, %23, %22, %17, %17, %17, %14, %11
  %50 = phi i32 [ %40, %42 ], [ 0, %46 ], [ -22, %17 ], [ -22, %17 ], [ -22, %17 ], [ -22, %22 ], [ -12, %23 ], [ -38, %14 ], [ -38, %11 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_new(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp ugt i32 %2, 7
  br i1 %12, label %13, label %76

13:                                               ; preds = %10
  %14 = load i8, ptr %1, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %1, i32 8
  %18 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %1, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  br i1 %6, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %23, %21 ], [ null, %16 ]
  %26 = getelementptr inbounds %struct.nouveau_cli, ptr %25, i32 0, i32 11
  br label %27

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %26, %24 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.usif_notify, ptr %29, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %20
  br i1 %34, label %35, label %27

35:                                               ; preds = %31
  %36 = icmp eq ptr %29, null
  br i1 %36, label %37, label %76

37:                                               ; preds = %35, %27
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 40) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %76, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.usif_notify, ptr %39, i32 0, i32 1
  store volatile i32 0, ptr %42, align 8
  %43 = add i32 %2, -24
  %44 = icmp ult i32 %43, -16
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i8, ptr %17, align 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %1, i32 9
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i16
  %52 = add nuw nsw i16 %51, 16
  %53 = getelementptr inbounds %struct.usif_notify, ptr %39, i32 0, i32 3
  store i16 %52, ptr %53, align 8
  %54 = getelementptr i8, ptr %1, i32 15
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.usif_notify, ptr %39, i32 0, i32 4
  store i8 %55, ptr %56, align 2
  %57 = getelementptr i8, ptr %1, i32 16
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.usif_notify, ptr %39, i32 0, i32 5
  store i64 %58, ptr %59, align 8
  store i8 1, ptr %54, align 1
  %60 = ptrtoint ptr %39 to i32
  %61 = zext i32 %60 to i64
  store i64 %61, ptr %57, align 8
  %62 = tail call i32 @nvif_client_ioctl(ptr noundef %11, ptr noundef %3, i32 noundef %4) #8
  %63 = load i64, ptr %59, align 8
  store i64 %63, ptr %57, align 8
  %64 = load i8, ptr %56, align 2
  store i8 %64, ptr %54, align 1
  %65 = load i8, ptr %18, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.usif_notify, ptr %39, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = icmp eq i32 %62, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %48
  %70 = getelementptr inbounds %struct.nouveau_cli, ptr %11, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %39, ptr %72, align 4
  store ptr %71, ptr %39, align 8
  %73 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %70, ptr %73, align 4
  store volatile ptr %39, ptr %70, align 4
  br label %76

74:                                               ; preds = %48, %45, %41
  %75 = phi i32 [ %62, %48 ], [ -38, %41 ], [ -38, %45 ]
  tail call void @kfree(ptr noundef nonnull %39) #8
  br label %76

76:                                               ; preds = %74, %69, %37, %35, %13, %10
  %77 = phi i32 [ -17, %35 ], [ -12, %37 ], [ %75, %74 ], [ 0, %69 ], [ -38, %13 ], [ -38, %10 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_del(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp ugt i32 %2, 7
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i8, ptr %1, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br i1 %6, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ null, %16 ]
  %25 = getelementptr inbounds %struct.nouveau_cli, ptr %24, i32 0, i32 11
  br label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %25, %23 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %19
  br i1 %33, label %34, label %26

34:                                               ; preds = %30
  %35 = icmp eq ptr %28, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = tail call i32 @nvif_client_ioctl(ptr noundef %11, ptr noundef %3, i32 noundef %4) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %28, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @kfree(ptr noundef nonnull %28) #8
  br label %44

44:                                               ; preds = %39, %36, %34, %26, %13, %10
  %45 = phi i32 [ -2, %34 ], [ -38, %13 ], [ 0, %39 ], [ %37, %36 ], [ -38, %10 ], [ -2, %26 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_get(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp ugt i32 %2, 7
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = load i8, ptr %1, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br i1 %6, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ null, %16 ]
  %25 = getelementptr inbounds %struct.nouveau_cli, ptr %24, i32 0, i32 11
  br label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %25, %23 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %19
  br i1 %33, label %34, label %26

34:                                               ; preds = %30
  %35 = icmp eq ptr %28, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #8, !srcloc !18
  %38 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %37) #8, !srcloc !19
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 3
  %43 = load i16, ptr %42, align 8
  %44 = zext i16 %43 to i32
  %45 = add nuw nsw i32 %44, 44
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3264) #9
  %47 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 6
  store ptr %46, ptr %47, align 8
  %48 = icmp eq ptr %46, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.usif_notify_p, ptr %46, i32 0, i32 1
  %51 = getelementptr inbounds %struct.drm_pending_event, ptr %46, i32 0, i32 2
  store ptr %50, ptr %51, align 8
  %52 = load ptr, ptr %47, align 8
  %53 = getelementptr inbounds %struct.drm_pending_event, ptr %52, i32 0, i32 4
  store ptr %0, ptr %53, align 4
  %54 = load ptr, ptr %47, align 8
  %55 = getelementptr inbounds %struct.usif_notify_p, ptr %54, i32 0, i32 1
  store i32 -2147483648, ptr %55, align 4
  %56 = load i16, ptr %42, align 8
  %57 = zext i16 %56 to i32
  %58 = add nuw nsw i32 %57, 8
  %59 = load ptr, ptr %47, align 8
  %60 = getelementptr inbounds %struct.usif_notify_p, ptr %59, i32 0, i32 1, i32 0, i32 1
  store i32 %58, ptr %60, align 4
  %61 = tail call i32 @nvif_client_ioctl(ptr noundef %11, ptr noundef %3, i32 noundef %4) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %49, %41
  %64 = phi i32 [ %61, %49 ], [ -12, %41 ]
  store volatile i32 0, ptr %37, align 4
  %65 = load ptr, ptr %47, align 8
  tail call void @kfree(ptr noundef %65) #8
  br label %66

66:                                               ; preds = %63, %49, %36, %34, %26, %13, %10
  %67 = phi i32 [ -2, %34 ], [ -38, %13 ], [ 0, %36 ], [ %64, %63 ], [ 0, %49 ], [ -38, %10 ], [ -2, %26 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_put(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp ugt i32 %2, 7
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i8, ptr %1, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br i1 %6, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ null, %16 ]
  %25 = getelementptr inbounds %struct.nouveau_cli, ptr %24, i32 0, i32 11
  br label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %25, %23 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %25
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %19
  br i1 %33, label %34, label %26

34:                                               ; preds = %30
  %35 = icmp eq ptr %28, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = tail call i32 @nvif_client_ioctl(ptr noundef %11, ptr noundef %3, i32 noundef %4) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #8, !srcloc !18
  %41 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %40) #8, !srcloc !19
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.usif_notify, ptr %28, i32 0, i32 6
  %46 = load ptr, ptr %45, align 8
  tail call void @kfree(ptr noundef %46) #8
  br label %47

47:                                               ; preds = %44, %39, %36, %34, %26, %13, %10
  %48 = phi i32 [ -2, %34 ], [ -38, %13 ], [ 0, %44 ], [ 0, %39 ], [ %37, %36 ], [ -38, %10 ], [ -2, %26 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usif_client_fini(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #8
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %23, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @kfree(ptr noundef %17) #8
  %22 = icmp eq ptr %18, %13
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usif_client_init(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 10
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 10, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 11
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 11, i32 1
  store ptr %4, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2155594879, i64 2155595381, i64 2155594916, i64 2155594972, i64 2155595006, i64 2155595030, i64 2155595071, i64 2155595092, i64 2155595120, i64 2155595154}
!11 = !{i64 2155596898, i64 2155597401, i64 2155596935, i64 2155596991, i64 2155597025, i64 2155597049, i64 2155597090, i64 2155597111, i64 2155597139, i64 2155597173}
!12 = !{i64 2152660691, i64 2152660716}
!13 = !{i64 5156803}
!14 = !{i64 5157000}
!15 = !{i64 2152642279}
!16 = !{i64 2152661269, i64 2152661294}
!17 = !{i64 2148399546}
!18 = !{i64 609228, i64 2148099199, i64 2148099225, i64 2148099272, i64 2148099294, i64 2148099322, i64 2148099342}
!19 = !{i64 618675, i64 618692, i64 618716, i64 618742, i64 618760}
!20 = !{i64 2148399890}
