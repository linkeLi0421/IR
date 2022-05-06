; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/devinit/nv05.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_devinit_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_devinit = type { ptr, %struct.nvkm_subdev, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.io_mapping = type { i32, i32, i32, ptr }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.70 }
%struct.anon.70 = type { i8, i8, i8, i8, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@nv05_devinit = internal constant %struct.nvkm_devinit_func { ptr @nv04_devinit_dtor, ptr @nv04_devinit_preinit, ptr null, ptr @nv04_devinit_post, ptr null, ptr @nv05_devinit_meminit, ptr @nv04_devinit_pll_set, ptr null }, align 4
@nv05_devinit_meminit.default_config_tab = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"$\00", [2 x i8] c"(\00", [2 x i8] c"$\01", [2 x i8] c"\1F\00", [2 x i8] c"\0F\00", [2 x i8] c"\17\00", [2 x i8] c"\06\00", [2 x i8] zeroinitializer], align 1
@.str = private unnamed_addr constant [22 x i8] c"%s: failed to map fb\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv05_devinit_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv04_devinit_new_(ptr noundef nonnull @nv05_devinit, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_devinit_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_devinit_preinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_post(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv05_devinit_meminit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_device_func, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i32 noundef 1) #5
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_device_func, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %3, i32 noundef 1) #5
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 16) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = tail call ptr @ioremap_wc(i32 noundef %9, i32 noundef %13) #5
  %19 = getelementptr inbounds %struct.io_mapping, ptr %15, i32 0, i32 3
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %15) #5
  br label %22

22:                                               ; preds = %21, %1
  %23 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %301, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_devinit, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef %30) #7
  br label %301

31:                                               ; preds = %17
  store i32 %9, ptr %15, align 8
  %32 = getelementptr inbounds %struct.io_mapping, ptr %15, i32 0, i32 1
  store i32 %13, ptr %32, align 4
  %33 = load i32, ptr @pgprot_kernel, align 4
  %34 = and i32 %33, -573
  %35 = or i32 %34, 516
  %36 = getelementptr inbounds %struct.io_mapping, ptr %15, i32 0, i32 2
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 1052672
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %41 = trunc i32 %40 to i8
  %42 = lshr i8 %41, 2
  %43 = and i8 %42, 15
  %44 = getelementptr inbounds %struct.nvkm_bios, ptr %5, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %31
  %48 = add i32 %45, 5
  %49 = tail call zeroext i8 @nvbios_rd08(ptr noundef %5, i32 noundef %48) #5
  %50 = load i32, ptr %44, align 4
  %51 = add i32 %50, 6
  %52 = tail call zeroext i8 @nvbios_rd08(ptr noundef %5, i32 noundef %51) #5
  %53 = icmp ugt i8 %49, 2
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load i32, ptr %44, align 4
  %56 = add i32 %55, 24
  %57 = tail call zeroext i16 @nvbios_rd16(ptr noundef %5, i32 noundef %56) #5
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = zext i16 %57 to i32
  %61 = shl nuw nsw i8 %43, 1
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %60, %62
  %64 = tail call zeroext i8 @nvbios_rd08(ptr noundef %5, i32 noundef %63) #5
  %65 = add nuw nsw i32 %63, 1
  %66 = tail call zeroext i8 @nvbios_rd08(ptr noundef %5, i32 noundef %65) #5
  %67 = add i16 %57, 16
  br label %74

68:                                               ; preds = %54, %47, %31
  %69 = zext i8 %43 to i32
  %70 = getelementptr [8 x [2 x i8]], ptr @nv05_devinit_meminit.default_config_tab, i32 0, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr [8 x [2 x i8]], ptr @nv05_devinit_meminit.default_config_tab, i32 0, i32 %69, i32 1
  %73 = load i8, ptr %72, align 1
  br label %74

74:                                               ; preds = %68, %59
  %75 = phi i1 [ false, %59 ], [ true, %68 ]
  %76 = phi i16 [ %67, %59 ], [ 16, %68 ]
  %77 = phi i8 [ %66, %59 ], [ %73, %68 ]
  %78 = phi i8 [ %64, %59 ], [ %71, %68 ]
  %79 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1) #5
  %80 = or i8 %79, 32
  tail call void @nvkm_wrvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %80) #5
  %81 = load ptr, ptr %37, align 4
  %82 = getelementptr i8, ptr %81, i32 1048576
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %84 = and i32 %83, 256
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %297

86:                                               ; preds = %74
  %87 = load ptr, ptr %37, align 4
  %88 = getelementptr i8, ptr %87, i32 1048704
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %90 = and i32 %89, -17
  %91 = load ptr, ptr %37, align 4
  %92 = getelementptr i8, ptr %91, i32 1048704
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #5, !srcloc !11
  br i1 %75, label %133, label %93

93:                                               ; preds = %86
  %94 = zext i16 %76 to i32
  %95 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %94) #5
  %96 = load ptr, ptr %37, align 4
  %97 = getelementptr i8, ptr %96, i32 1049600
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %95) #5, !srcloc !11
  %98 = add i16 %76, 4
  %99 = zext i16 %98 to i32
  %100 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %99) #5
  %101 = load ptr, ptr %37, align 4
  %102 = getelementptr i8, ptr %101, i32 1049604
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #5, !srcloc !11
  %103 = add i16 %76, 8
  %104 = zext i16 %103 to i32
  %105 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %104) #5
  %106 = load ptr, ptr %37, align 4
  %107 = getelementptr i8, ptr %106, i32 1049608
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #5, !srcloc !11
  %108 = add i16 %76, 12
  %109 = zext i16 %108 to i32
  %110 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %109) #5
  %111 = load ptr, ptr %37, align 4
  %112 = getelementptr i8, ptr %111, i32 1049612
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #5, !srcloc !11
  %113 = add i16 %76, 16
  %114 = zext i16 %113 to i32
  %115 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %114) #5
  %116 = load ptr, ptr %37, align 4
  %117 = getelementptr i8, ptr %116, i32 1049616
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #5, !srcloc !11
  %118 = add i16 %76, 20
  %119 = zext i16 %118 to i32
  %120 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %119) #5
  %121 = load ptr, ptr %37, align 4
  %122 = getelementptr i8, ptr %121, i32 1049620
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #5, !srcloc !11
  %123 = add i16 %76, 24
  %124 = zext i16 %123 to i32
  %125 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %124) #5
  %126 = load ptr, ptr %37, align 4
  %127 = getelementptr i8, ptr %126, i32 1049624
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #5, !srcloc !11
  %128 = add i16 %76, 28
  %129 = zext i16 %128 to i32
  %130 = tail call i32 @nvbios_rd32(ptr noundef %5, i32 noundef %129) #5
  %131 = load ptr, ptr %37, align 4
  %132 = getelementptr i8, ptr %131, i32 1049628
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #5, !srcloc !11
  br label %133

133:                                              ; preds = %93, %86
  %134 = load ptr, ptr %37, align 4
  %135 = getelementptr i8, ptr %134, i32 1048576
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %137 = and i32 %136, -64
  %138 = zext i8 %78 to i32
  %139 = or i32 %137, %138
  %140 = load ptr, ptr %37, align 4
  %141 = getelementptr i8, ptr %140, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #5, !srcloc !11
  %142 = zext i8 %77 to i32
  %143 = and i32 %142, 128
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %133
  %146 = load ptr, ptr %37, align 4
  %147 = getelementptr i8, ptr %146, i32 1049088
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %149 = or i32 %148, 536870912
  %150 = load ptr, ptr %37, align 4
  %151 = getelementptr i8, ptr %150, i32 1049088
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %149) #5, !srcloc !11
  br label %152

152:                                              ; preds = %145, %133
  %153 = load ptr, ptr %37, align 4
  %154 = getelementptr i8, ptr %153, i32 1049092
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %156 = and i32 %155, -7340034
  %157 = shl nuw nsw i32 %142, 20
  %158 = and i32 %157, 1048576
  %159 = or i32 %156, %158
  %160 = load ptr, ptr %37, align 4
  %161 = getelementptr i8, ptr %160, i32 1049092
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #5, !srcloc !11
  %162 = load ptr, ptr %37, align 4
  %163 = getelementptr i8, ptr %162, i32 1049092
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %163) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %165 = or i32 %164, 1
  %166 = load ptr, ptr %37, align 4
  %167 = getelementptr i8, ptr %166, i32 1049092
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %168 = tail call ptr @llvm.thread.pointer() #5
  %169 = getelementptr inbounds %struct.task_struct, ptr %168, i32 0, i32 149
  %170 = load i32, ptr %169, align 8
  %171 = add i32 %170, 1
  store i32 %171, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %172 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 -559038737) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %173 = load i32, ptr %169, align 8
  %174 = add i32 %173, -1
  store i32 %174, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %175 = load i32, ptr %169, align 8
  %176 = add i32 %175, 1
  store i32 %176, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %177 = load ptr, ptr %19, align 4
  %178 = getelementptr i8, ptr %177, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 -559038737) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %179 = load i32, ptr %169, align 8
  %180 = add i32 %179, -1
  store i32 %180, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %181 = load i32, ptr %169, align 8
  %182 = add i32 %181, 1
  store i32 %182, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %183 = load ptr, ptr %19, align 4
  %184 = getelementptr i8, ptr %183, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 -559038737) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %185 = load i32, ptr %169, align 8
  %186 = add i32 %185, -1
  store i32 %186, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %187 = load i32, ptr %169, align 8
  %188 = add i32 %187, 1
  store i32 %188, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %189 = load ptr, ptr %19, align 4
  %190 = getelementptr i8, ptr %189, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 -559038737) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %191 = load i32, ptr %169, align 8
  %192 = add i32 %191, -1
  store i32 %192, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %193 = load i32, ptr %169, align 8
  %194 = add i32 %193, 1
  store i32 %194, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %195 = load ptr, ptr %19, align 4
  %196 = getelementptr i8, ptr %195, i32 12
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %198 = load i32, ptr %169, align 8
  %199 = add i32 %198, -1
  store i32 %199, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %200 = icmp eq i32 %197, -559038737
  br i1 %200, label %208, label %201

201:                                              ; preds = %152
  %202 = load ptr, ptr %37, align 4
  %203 = getelementptr i8, ptr %202, i32 1048576
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %205 = and i32 %204, -5
  %206 = load ptr, ptr %37, align 4
  %207 = getelementptr i8, ptr %206, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %207, i32 %205) #5, !srcloc !11
  br label %208

208:                                              ; preds = %201, %152
  %209 = load ptr, ptr %37, align 4
  %210 = getelementptr i8, ptr %209, i32 1048576
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %212 = and i32 %211, 3
  switch i32 %212, label %272 [
    i32 0, label %213
    i32 3, label %249
  ]

213:                                              ; preds = %208
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %214 = load i32, ptr %169, align 8
  %215 = add i32 %214, 1
  store i32 %215, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %216 = load ptr, ptr %19, align 4
  %217 = getelementptr i8, ptr %216, i32 16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 -559038736) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %218 = load i32, ptr %169, align 8
  %219 = add i32 %218, -1
  store i32 %219, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %220 = load i32, ptr %169, align 8
  %221 = add i32 %220, 1
  store i32 %221, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %222 = load ptr, ptr %19, align 4
  %223 = getelementptr i8, ptr %222, i32 16777216
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %225 = load i32, ptr %169, align 8
  %226 = add i32 %225, -1
  store i32 %226, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %227 = icmp eq i32 %224, -559038736
  br i1 %227, label %228, label %241

228:                                              ; preds = %213
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %229 = load i32, ptr %169, align 8
  %230 = add i32 %229, 1
  store i32 %230, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %231 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 -559038735) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %232 = load i32, ptr %169, align 8
  %233 = add i32 %232, -1
  store i32 %233, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %234 = load i32, ptr %169, align 8
  %235 = add i32 %234, 1
  store i32 %235, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %236 = load ptr, ptr %19, align 4
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %238 = load i32, ptr %169, align 8
  %239 = add i32 %238, -1
  store i32 %239, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %240 = icmp eq i32 %237, -559038735
  br i1 %240, label %272, label %241

241:                                              ; preds = %228, %213
  %242 = phi i32 [ -559038735, %228 ], [ -559038736, %213 ]
  %243 = load ptr, ptr %37, align 4
  %244 = getelementptr i8, ptr %243, i32 1048576
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %246 = or i32 %245, 3
  %247 = load ptr, ptr %37, align 4
  %248 = getelementptr i8, ptr %247, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %248, i32 %246) #5, !srcloc !11
  br label %272

249:                                              ; preds = %208
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %250 = load i32, ptr %169, align 8
  %251 = add i32 %250, 1
  store i32 %251, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %252 = load ptr, ptr %19, align 4
  %253 = getelementptr i8, ptr %252, i32 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 -559038736) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %254 = load i32, ptr %169, align 8
  %255 = add i32 %254, -1
  store i32 %255, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %256 = load i32, ptr %169, align 8
  %257 = add i32 %256, 1
  store i32 %257, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %258 = load ptr, ptr %19, align 4
  %259 = getelementptr i8, ptr %258, i32 8388608
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %261 = load i32, ptr %169, align 8
  %262 = add i32 %261, -1
  store i32 %262, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %263 = icmp eq i32 %260, -559038736
  br i1 %263, label %272, label %264

264:                                              ; preds = %249
  %265 = load ptr, ptr %37, align 4
  %266 = getelementptr i8, ptr %265, i32 1048576
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %268 = and i32 %267, -4
  %269 = or i32 %268, 2
  %270 = load ptr, ptr %37, align 4
  %271 = getelementptr i8, ptr %270, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #5, !srcloc !11
  br label %272

272:                                              ; preds = %264, %249, %241, %228, %208
  %273 = phi i32 [ -559038736, %249 ], [ -559038736, %264 ], [ %242, %241 ], [ -559038735, %228 ], [ -559038737, %208 ]
  %274 = add nuw nsw i32 %273, 1
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %275 = load i32, ptr %169, align 8
  %276 = add i32 %275, 1
  store i32 %276, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %277 = load ptr, ptr %19, align 4
  %278 = getelementptr i8, ptr %277, i32 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %278, i32 %274) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %279 = load i32, ptr %169, align 8
  %280 = add i32 %279, -1
  store i32 %280, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %281 = load i32, ptr %169, align 8
  %282 = add i32 %281, 1
  store i32 %282, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %283 = load ptr, ptr %19, align 4
  %284 = getelementptr i8, ptr %283, i32 4194304
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %286 = load i32, ptr %169, align 8
  %287 = add i32 %286, -1
  store i32 %287, ptr %169, align 8
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %288 = icmp eq i32 %285, %274
  br i1 %288, label %297, label %289

289:                                              ; preds = %272
  %290 = load ptr, ptr %37, align 4
  %291 = getelementptr i8, ptr %290, i32 1048576
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %291) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %293 = and i32 %292, -4
  %294 = or i32 %293, 1
  %295 = load ptr, ptr %37, align 4
  %296 = getelementptr i8, ptr %295, i32 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 %294) #5, !srcloc !11
  br label %297

297:                                              ; preds = %289, %272, %74
  %298 = tail call zeroext i8 @nvkm_rdvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1) #5
  %299 = and i8 %298, -33
  tail call void @nvkm_wrvgas(ptr noundef %3, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext %299) #5
  %300 = load ptr, ptr %19, align 4
  tail call void @iounmap(ptr noundef %300) #5
  tail call void @kfree(ptr noundef nonnull %15) #5
  br label %301

301:                                              ; preds = %297, %26, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_devinit_pll_set(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_wrvgas(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgas(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
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
!8 = !{i64 3944006}
!9 = !{i64 2151483459}
!10 = !{i64 2151484681}
!11 = !{i64 3943588}
!12 = !{i64 2154443801}
!13 = !{i64 2152654464}
!14 = !{i64 2154748083}
!15 = !{i64 2152654671}
!16 = !{i64 2154444078}
