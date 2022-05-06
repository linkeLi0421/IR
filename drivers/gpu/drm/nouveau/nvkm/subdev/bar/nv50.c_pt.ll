; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvkm_bar_func = type { ptr, ptr, ptr, %struct.anon.123, %struct.anon.123, ptr }
%struct.anon.123 = type { ptr, ptr, ptr, ptr }
%struct.nv50_bar = type { %struct.nvkm_bar, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj = type { %union.anon.144, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.144 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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

@nv50_bar_oneinit.bar1_lock = internal global %struct.lock_class_key zeroinitializer, align 1
@nv50_bar_oneinit.bar2_lock = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"bar2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bar1\00", align 1
@nv50_bar_func = internal constant %struct.nvkm_bar_func { ptr @nv50_bar_dtor, ptr @nv50_bar_oneinit, ptr @nv50_bar_init, %struct.anon.123 { ptr @nv50_bar_bar1_init, ptr @nv50_bar_bar1_fini, ptr @nv50_bar_bar1_wait, ptr @nv50_bar_bar1_vmm }, %struct.anon.123 { ptr @nv50_bar_bar2_init, ptr @nv50_bar_bar2_fini, ptr @nv50_bar_bar1_wait, ptr @nv50_bar_bar2_vmm }, ptr @nv50_bar_flush }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bar/nv50.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nv50_bar_bar1_vmm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar1_wait(ptr noundef %0) #2 {
  tail call void @nvkm_bar_flush(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar1_fini(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5896
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar1_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 4
  %11 = or i32 %10, -2147483648
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 5896
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #6, !srcloc !9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nv50_bar_bar2_vmm(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar2_fini(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5900
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_bar_bar2_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %5, i32 0, i32 4
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 12
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 5892
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #6, !srcloc !9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %13, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = lshr i64 %15, 12
  %17 = trunc i64 %16 to i32
  %18 = or i32 %17, 1073741824
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 5892
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !9
  %21 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 4
  %28 = or i32 %27, -2147483648
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr i8, ptr %29, i32 5900
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_bar_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 6400
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 6404
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #6, !srcloc !9
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 6408
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 6412
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #6, !srcloc !9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 6416
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #6, !srcloc !9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 6420
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #6, !srcloc !9
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 6424
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !9
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 6428
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_bar_oneinit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 2
  %5 = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 131072, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %150

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 3
  %12 = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef %9, i32 noundef 0, i1 noundef zeroext false, ptr noundef %10, ptr noundef %11) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %150

14:                                               ; preds = %7
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 4
  %17 = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 16384, i32 noundef 0, i1 noundef zeroext false, ptr noundef %15, ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %150

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_device_func, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %3, i32 noundef 3) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %150, label %25

25:                                               ; preds = %19
  %26 = zext i32 %23 to i64
  %27 = add i32 %23, -1
  %28 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 7
  %29 = tail call i32 @nvkm_vmm_new(ptr noundef %3, i64 noundef 4294967296, i64 noundef %26, ptr noundef null, i32 noundef 0, ptr noundef nonnull @nv50_bar_oneinit.bar2_lock, ptr noundef nonnull @.str, ptr noundef %28) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %150

31:                                               ; preds = %25
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr %struct.nvkm_vmm, ptr %32, i32 0, i32 14, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #6, !srcloc !10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #6, !srcloc !11
  %35 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = getelementptr inbounds %struct.nvkm_vmm, ptr %37, i32 0, i32 3
  store i32 %36, ptr %38, align 4
  %39 = load ptr, ptr %28, align 4
  %40 = tail call i32 @nvkm_vmm_boot(ptr noundef %39) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %150

42:                                               ; preds = %31
  %43 = load ptr, ptr %28, align 4
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 @nvkm_vmm_join(ptr noundef %43, ptr noundef %46) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %150

49:                                               ; preds = %42
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 8
  %52 = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 24, i32 noundef 16, i1 noundef zeroext false, ptr noundef %50, ptr noundef %51) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %150

54:                                               ; preds = %49
  %55 = load ptr, ptr %51, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %56, align 4
  %58 = tail call ptr %57(ptr noundef %55) #6
  %59 = load ptr, ptr %51, align 4
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %59, i32 noundef 0, i32 noundef 2143289344) #6
  %63 = load ptr, ptr %51, align 4
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef %63, i32 noundef 4, i32 noundef %27) #6
  %67 = load ptr, ptr %51, align 4
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  tail call void %70(ptr noundef %67, i32 noundef 8, i32 noundef 0) #6
  %71 = load ptr, ptr %51, align 4
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %71, i32 noundef 12, i32 noundef 16777217) #6
  %75 = load ptr, ptr %51, align 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  tail call void %78(ptr noundef %75, i32 noundef 16, i32 noundef 0) #6
  %79 = load ptr, ptr %51, align 4
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %79, i32 noundef 20, i32 noundef 0) #6
  %83 = load ptr, ptr %51, align 4
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %83) #6
  %87 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 8
  store i8 1, ptr %87, align 4
  tail call void @nvkm_bar_bar2_init(ptr noundef %3) #6
  %88 = load ptr, ptr %3, align 8
  %89 = getelementptr inbounds %struct.nvkm_device_func, ptr %88, i32 0, i32 7
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 %90(ptr noundef %3, i32 noundef 1) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %150, label %93

93:                                               ; preds = %54
  %94 = zext i32 %91 to i64
  %95 = add i32 %91, -1
  %96 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 5
  %97 = tail call i32 @nvkm_vmm_new(ptr noundef %3, i64 noundef 0, i64 noundef %94, ptr noundef null, i32 noundef 0, ptr noundef nonnull @nv50_bar_oneinit.bar1_lock, ptr noundef nonnull @.str.1, ptr noundef %96) #6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %150

99:                                               ; preds = %93
  %100 = load ptr, ptr %96, align 4
  %101 = getelementptr %struct.nvkm_vmm, ptr %100, i32 0, i32 14, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #6, !srcloc !10
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #6, !srcloc !11
  %103 = load i32, ptr %35, align 4
  %104 = load ptr, ptr %96, align 4
  %105 = getelementptr inbounds %struct.nvkm_vmm, ptr %104, i32 0, i32 3
  store i32 %103, ptr %105, align 4
  %106 = load ptr, ptr %96, align 4
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = tail call i32 @nvkm_vmm_join(ptr noundef %106, ptr noundef %109) #6
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %150

112:                                              ; preds = %99
  %113 = load ptr, ptr %4, align 4
  %114 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 6
  %115 = tail call i32 @nvkm_gpuobj_new(ptr noundef %3, i32 noundef 24, i32 noundef 16, i1 noundef zeroext false, ptr noundef %113, ptr noundef %114) #6
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %150

117:                                              ; preds = %112
  %118 = load ptr, ptr %114, align 4
  %119 = load ptr, ptr %118, align 8
  %120 = load ptr, ptr %119, align 4
  %121 = tail call ptr %120(ptr noundef %118) #6
  %122 = load ptr, ptr %114, align 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 4
  tail call void %125(ptr noundef %122, i32 noundef 0, i32 noundef 2143289344) #6
  %126 = load ptr, ptr %114, align 4
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %127, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  tail call void %129(ptr noundef %126, i32 noundef 4, i32 noundef %95) #6
  %130 = load ptr, ptr %114, align 4
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %131, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  tail call void %133(ptr noundef %130, i32 noundef 8, i32 noundef 0) #6
  %134 = load ptr, ptr %114, align 4
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  tail call void %137(ptr noundef %134, i32 noundef 12, i32 noundef 0) #6
  %138 = load ptr, ptr %114, align 4
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %139, i32 0, i32 3
  %141 = load ptr, ptr %140, align 4
  tail call void %141(ptr noundef %138, i32 noundef 16, i32 noundef 0) #6
  %142 = load ptr, ptr %114, align 4
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  tail call void %145(ptr noundef %142, i32 noundef 20, i32 noundef 0) #6
  %146 = load ptr, ptr %114, align 4
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  tail call void %149(ptr noundef %146) #6
  br label %150

150:                                              ; preds = %117, %112, %99, %93, %54, %49, %42, %31, %25, %19, %14, %7, %1
  %151 = phi i32 [ 0, %117 ], [ %5, %1 ], [ %12, %7 ], [ %17, %14 ], [ -12, %19 ], [ %29, %25 ], [ %40, %31 ], [ %47, %42 ], [ %52, %49 ], [ -12, %54 ], [ %97, %93 ], [ %110, %99 ], [ %115, %112 ]
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_boot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv50_bar_dtor(ptr noundef returned %0) #2 {
  %2 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 6
  tail call void @nvkm_gpuobj_del(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  tail call void @nvkm_vmm_part(ptr noundef %8, ptr noundef %11) #6
  tail call void @nvkm_vmm_unref(ptr noundef %7) #6
  %12 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 8
  tail call void @nvkm_gpuobj_del(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  tail call void @nvkm_vmm_part(ptr noundef %14, ptr noundef %17) #6
  tail call void @nvkm_vmm_unref(ptr noundef %13) #6
  %18 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 4
  tail call void @nvkm_gpuobj_del(ptr noundef %18) #6
  %19 = getelementptr inbounds %struct.nv50_bar, ptr %0, i32 0, i32 3
  tail call void @nvkm_gpuobj_del(ptr noundef %19) #6
  tail call void @nvkm_gpuobj_del(ptr noundef %2) #6
  br label %20

20:                                               ; preds = %5, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_bar_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #2 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 96) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @nvkm_bar_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %8) #6
  %11 = getelementptr inbounds %struct.nv50_bar, ptr %8, i32 0, i32 1
  store i32 %4, ptr %11, align 8
  store ptr %8, ptr %5, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ 0, %10 ], [ -12, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_bar_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 96) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  tail call void @nvkm_bar_ctor(ptr noundef nonnull @nv50_bar_func, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.nv50_bar, ptr %6, i32 0, i32 1
  store i32 5120, ptr %9, align 8
  store ptr %6, ptr %3, align 4
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_bar_flush(ptr noundef %0) #2 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_bar, ptr %0, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 13068
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %10

10:                                               ; preds = %16, %1
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 13068
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %10
  %17 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %18 = icmp sgt i64 %17, -1
  br i1 %18, label %10, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.nvkm_timer, ptr %20, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @dev_driver_string(ptr noundef %24) #6
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.nvkm_timer, ptr %26, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load ptr, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi ptr [ %35, %34 ], [ %32, %19 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 42, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %25, ptr noundef %37) #6
  br label %38

38:                                               ; preds = %36, %10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 2151486524}
!9 = !{i64 3945431}
!10 = !{i64 772793, i64 2148262764, i64 2148262790, i64 2148262837, i64 2148262859, i64 2148262887, i64 2148262907}
!11 = !{i64 2148274179, i64 2148274205, i64 2148274234, i64 2148274268, i64 2148274299, i64 2148274322}
!12 = !{!"auto-init"}
!13 = !{i64 3945849}
!14 = !{i64 2151485302}
