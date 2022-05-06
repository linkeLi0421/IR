; ModuleID = '/llk/IR/drivers/net/ethernet/ti/davinci_cpdma.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/davinci_cpdma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpdma_control_info = type { i32, i32, i32, i32 }
%struct.cpdma_ctlr = type { i32, %struct.cpdma_params, ptr, ptr, %struct.spinlock, [64 x ptr], i32, i32, i32 }
%struct.cpdma_params = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cpdma_desc_pool = type { i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.cpdma_chan = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, i32, %struct.cpdma_chan_stats, i32, i32, i32, i32, i32, i32 }
%struct.cpdma_chan_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.submit_info = type { ptr, i32, ptr, ptr, i32, i32 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.cpdma_desc = type { i32, i32, i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"drivers/net/ethernet/ti/davinci_cpdma.c\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cpdma\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pool create failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"pool add failed %d\0A\00", align 1
@controls = internal unnamed_addr constant [12 x %struct.cpdma_control_info] [%struct.cpdma_control_info { i32 32, i32 8, i32 65535, i32 3 }, %struct.cpdma_control_info { i32 32, i32 3, i32 1, i32 2 }, %struct.cpdma_control_info { i32 32, i32 4, i32 1, i32 3 }, %struct.cpdma_control_info { i32 32, i32 2, i32 1, i32 3 }, %struct.cpdma_control_info { i32 32, i32 1, i32 1, i32 3 }, %struct.cpdma_control_info { i32 32, i32 0, i32 1, i32 3 }, %struct.cpdma_control_info { i32 36, i32 31, i32 1, i32 1 }, %struct.cpdma_control_info { i32 36, i32 16, i32 7, i32 3 }, %struct.cpdma_control_info { i32 36, i32 20, i32 15, i32 3 }, %struct.cpdma_control_info { i32 36, i32 8, i32 7, i32 3 }, %struct.cpdma_control_info { i32 36, i32 12, i32 15, i32 3 }, %struct.cpdma_control_info { i32 40, i32 0, i32 65535, i32 3 }], align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"cpdma_desc_pool size %zd != avail %zd\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Upper cpdma ch%d is not rate limited\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"The bus frequency is not set\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpdma_ctlr_create(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 356, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %1
  store i32 0, ptr %3, align 4
  %6 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(72) %6, ptr noundef align 4 dereferenceable(72) %0, i32 72, i1 false)
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 36, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 3
  store ptr %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 5
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 14
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 27
  %21 = sub i32 0, %19
  %22 = and i32 %20, %21
  %23 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = sdiv i32 %16, %22
  %25 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 16
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %13
  store i32 %27, ptr %25, align 4
  %30 = mul i32 %27, %22
  store i32 %30, ptr %17, align 4
  %31 = icmp sgt i32 %30, %16
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 11
  store i32 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %29, %13
  %35 = load ptr, ptr %8, align 4
  %36 = icmp eq i32 %22, 0
  %37 = tail call i32 @llvm.ctlz.i32(i32 %22, i1 false) #8, !range !8
  %38 = sub nsw i32 31, %37
  %39 = select i1 %36, i32 -1, i32 %38
  %40 = tail call ptr @devm_gen_pool_create(ptr noundef %35, i32 noundef %39, i32 noundef -1, ptr noundef nonnull @.str.1) #8
  %41 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 8
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %76, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  store i32 %45, ptr %11, align 4
  %48 = load ptr, ptr %8, align 4
  %49 = load i32, ptr %17, align 4
  %50 = tail call ptr @devm_ioremap(ptr noundef %48, i32 noundef %45, i32 noundef %49) #8
  %51 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 12
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  br label %61

54:                                               ; preds = %43
  %55 = load ptr, ptr %8, align 4
  %56 = load i32, ptr %17, align 4
  %57 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 1
  %58 = tail call ptr @dma_alloc_attrs(ptr noundef %55, i32 noundef %56, ptr noundef %57, i32 noundef 3264, i32 noundef 0) #8
  %59 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 3
  store ptr %58, ptr %59, align 4
  %60 = load i32, ptr %57, align 4
  store i32 %60, ptr %11, align 4
  br label %61

61:                                               ; preds = %54, %47
  %62 = phi ptr [ %58, %54 ], [ %50, %47 ]
  %63 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %11, i32 0, i32 2
  store ptr %62, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %41, align 4
  %67 = ptrtoint ptr %62 to i32
  %68 = load i32, ptr %11, align 4
  %69 = load i32, ptr %17, align 4
  %70 = tail call i32 @gen_pool_add_owner(ptr noundef %66, i32 noundef %67, i32 noundef %68, i32 noundef %69, i32 noundef -1, ptr noundef null) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.3, i32 noundef %70) #9
  tail call fastcc void @cpdma_desc_pool_destroy(ptr noundef nonnull %3) #8
  br label %74

74:                                               ; preds = %72, %61, %5
  %75 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 3
  store ptr null, ptr %75, align 4
  br label %89

76:                                               ; preds = %34
  %77 = ptrtoint ptr %40 to i32
  %78 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.2, i32 noundef %77) #9
  store ptr null, ptr %14, align 4
  br label %89

79:                                               ; preds = %65
  %80 = load i32, ptr %25, align 4
  %81 = sdiv i32 %80, 2
  %82 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 8
  store i32 %81, ptr %82, align 4
  %83 = sub i32 %80, %81
  %84 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 7
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 8
  %86 = load i32, ptr %85, align 4
  %87 = icmp sgt i32 %86, 32
  br i1 %87, label %88, label %89, !prof !9

88:                                               ; preds = %79
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 530, i32 noundef 9, ptr noundef null) #8
  store i32 32, ptr %85, align 4
  br label %89

89:                                               ; preds = %88, %79, %76, %74, %1
  %90 = phi ptr [ null, %1 ], [ null, %76 ], [ %3, %79 ], [ %3, %88 ], [ null, %74 ]
  ret ptr %90
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %107

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 9
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %11 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #8, !srcloc !12
  br label %14

14:                                               ; preds = %20, %10
  %15 = phi i32 [ 1000, %10 ], [ %22, %20 ]
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr i8, ptr %16, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #8
  %22 = add nsw i32 %15, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %14

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #8
  br label %25

25:                                               ; preds = %24, %14, %6
  %26 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 2
  %31 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 3
  %32 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 4
  %33 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 5
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i32 [ 0, %29 ], [ %45, %34 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %36 = load ptr, ptr %30, align 4
  %37 = shl i32 %35, 2
  %38 = getelementptr i8, ptr %36, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr i8, ptr %39, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr i8, ptr %41, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %33, align 4
  %44 = getelementptr i8, ptr %43, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #8, !srcloc !12
  %45 = add nuw nsw i32 %35, 1
  %46 = load i32, ptr %26, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %34, label %48

48:                                               ; preds = %34, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %49 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %52 = load ptr, ptr %49, align 4
  %53 = getelementptr i8, ptr %52, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %54 = load ptr, ptr %49, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %56 = load ptr, ptr %49, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1) #8, !srcloc !12
  store i32 1, ptr %0, align 4
  br label %58

58:                                               ; preds = %75, %48
  %59 = phi i32 [ 0, %48 ], [ %77, %75 ]
  %60 = phi i32 [ 0, %48 ], [ %76, %75 ]
  %61 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %59
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = tail call fastcc i32 @cpdma_chan_set_chan_shaper(ptr noundef nonnull %62)
  %66 = tail call fastcc i32 @cpdma_chan_on(ptr noundef nonnull %62)
  %67 = getelementptr inbounds %struct.cpdma_chan, ptr %62, i32 0, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 31
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.cpdma_chan, ptr %62, i32 0, i32 20
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 1, i32 %60
  br label %75

75:                                               ; preds = %70, %64, %58
  %76 = phi i32 [ %60, %64 ], [ %60, %58 ], [ %74, %70 ]
  %77 = add nuw nsw i32 %59, 1
  %78 = icmp eq i32 %77, 64
  br i1 %78, label %79, label %58

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 17
  %81 = load i8, ptr %80, align 4, !range !10
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %79
  %84 = load i32, ptr %0, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load ptr, ptr %49, align 4
  %88 = getelementptr i8, ptr %87, i32 32
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %90 = and i32 %89, -2
  %91 = and i32 %76, 1
  %92 = or i32 %90, %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %93 = load ptr, ptr %49, align 4
  %94 = getelementptr i8, ptr %93, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #8, !srcloc !12
  %95 = load i8, ptr %80, align 4
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %86
  %98 = load i32, ptr %0, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load ptr, ptr %49, align 4
  %102 = getelementptr i8, ptr %101, i32 40
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %104 = and i32 %103, -65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %105 = load ptr, ptr %49, align 4
  %106 = getelementptr i8, ptr %105, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #8, !srcloc !12
  br label %107

107:                                              ; preds = %100, %97, %86, %83, %79, %1
  %108 = phi i32 [ -16, %1 ], [ 0, %83 ], [ 0, %79 ], [ 0, %86 ], [ 0, %97 ], [ 0, %100 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_set_chan_shaper(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 2
  %11 = add i32 %10, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %12 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cpdma_ctlr, ptr %7, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #8, !srcloc !12
  %17 = getelementptr inbounds %struct.cpdma_ctlr, ptr %7, i32 0, i32 1, i32 17
  %18 = load i8, ptr %17, align 4, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %5
  %21 = load i32, ptr %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %27 = load i8, ptr %17, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %7, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr i8, ptr %35, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %38 = and i32 %37, -16776961
  %39 = shl i32 %34, 8
  %40 = or i32 %26, %39
  %41 = and i32 %40, 16776960
  %42 = or i32 %38, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #8, !srcloc !12
  br label %45

45:                                               ; preds = %32, %29, %23, %20, %5, %1
  %46 = phi i32 [ 0, %1 ], [ 0, %32 ], [ -524, %23 ], [ -22, %29 ], [ -524, %5 ], [ -22, %20 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_on(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = load i32, ptr %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %15 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %16) #8, !srcloc !12
  store i32 1, ptr %8, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %25 = load ptr, ptr %0, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %5, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = ptrtoint ptr %25 to i32
  %31 = add i32 %29, %30
  %32 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %5, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = sub i32 %31, %34
  br label %36

36:                                               ; preds = %27, %24
  %37 = phi i32 [ %35, %27 ], [ 0, %24 ]
  %38 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #8, !srcloc !12
  %40 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %44 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #8, !srcloc !12
  br label %47

47:                                               ; preds = %43, %36, %14, %11, %1
  %48 = phi i32 [ -16, %1 ], [ -22, %11 ], [ 0, %36 ], [ 0, %43 ], [ 0, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  store i32 2, ptr %0, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  br label %7

7:                                                ; preds = %14, %6
  %8 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %9 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @cpdma_chan_stop(ptr noundef nonnull %10)
  br label %14

14:                                               ; preds = %12, %7
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, 64
  br i1 %16, label %17, label %7

17:                                               ; preds = %14
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %19 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr i8, ptr %22, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #8, !srcloc !12
  store i32 0, ptr %0, align 4
  br label %28

28:                                               ; preds = %17, %1
  %29 = phi i32 [ %18, %17 ], [ %3, %1 ]
  %30 = phi i32 [ 0, %17 ], [ -22, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %29) #8
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %74, label %11

11:                                               ; preds = %1
  store i32 2, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %12 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %19 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 31
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #8, !srcloc !12
  %26 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 3
  br label %27

27:                                               ; preds = %32, %11
  %28 = phi i32 [ 10000, %11 ], [ %34, %32 ]
  %29 = load ptr, ptr %26, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !36
  %31 = icmp ugt i32 %30, -5
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #8
  %34 = add nsw i32 %28, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %27

36:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1341, i32 noundef 9, ptr noundef null) #8
  br label %37

37:                                               ; preds = %36, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -4) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  br label %39

39:                                               ; preds = %39, %37
  %40 = tail call fastcc i32 @__cpdma_chan_process(ptr noundef %0)
  %41 = and i32 %40, -2013265920
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %39, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %45 = load ptr, ptr %0, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %72, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %5, i32 0, i32 2
  %49 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 9
  %51 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 14, i32 12
  br label %52

52:                                               ; preds = %63, %47
  %53 = phi ptr [ %45, %47 ], [ %70, %63 ]
  %54 = phi i32 [ %44, %47 ], [ %69, %63 ]
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %53) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !38
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %48, align 4
  %59 = getelementptr i8, ptr %58, i32 %55
  %60 = load i32, ptr %49, align 4
  %61 = sub i32 0, %60
  %62 = getelementptr i8, ptr %59, i32 %61
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi ptr [ %62, %57 ], [ null, %52 ]
  store ptr %64, ptr %0, align 4
  %65 = load i32, ptr %50, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %50, align 4
  %67 = load i32, ptr %51, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %51, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %54) #8
  tail call fastcc void @__cpdma_chan_free(ptr noundef %0, ptr noundef nonnull %53, i32 noundef 0, i32 noundef -38)
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %70 = load ptr, ptr %0, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %52

72:                                               ; preds = %63, %43
  %73 = phi i32 [ %44, %43 ], [ %69, %63 ]
  store i32 0, ptr %8, align 4
  br label %74

74:                                               ; preds = %72, %1
  %75 = phi i32 [ %73, %72 ], [ %7, %1 ]
  %76 = phi i32 [ 0, %72 ], [ -22, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %75) #8
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @cpdma_ctlr_stop(ptr noundef nonnull %0)
  br label %8

8:                                                ; preds = %6, %3
  br label %9

9:                                                ; preds = %34, %8
  %10 = phi i32 [ %35, %34 ], [ 0, %8 ]
  %11 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cpdma_chan, ptr %12, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cpdma_ctlr, ptr %16, i32 0, i32 4
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #8
  %19 = getelementptr inbounds %struct.cpdma_chan, ptr %12, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = tail call i32 @cpdma_chan_stop(ptr noundef nonnull %12) #8
  br label %24

24:                                               ; preds = %22, %14
  %25 = getelementptr inbounds %struct.cpdma_chan, ptr %12, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.cpdma_ctlr, ptr %16, i32 0, i32 5, i32 %26
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cpdma_ctlr, ptr %16, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.cpdma_ctlr, ptr %16, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void @devm_kfree(ptr noundef %32, ptr noundef nonnull %12) #8
  %33 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %16) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #8
  br label %34

34:                                               ; preds = %24, %9
  %35 = add nuw nsw i32 %10, 1
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %9

37:                                               ; preds = %34
  tail call fastcc void @cpdma_desc_pool_destroy(ptr noundef nonnull %0)
  br label %38

38:                                               ; preds = %37, %1
  %39 = phi i32 [ 0, %37 ], [ -22, %1 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @cpdma_chan_stop(ptr noundef nonnull %0)
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.cpdma_ctlr, ptr %5, i32 0, i32 5, i32 %15
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.cpdma_ctlr, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @devm_kfree(ptr noundef %21, ptr noundef nonnull %0) #8
  %22 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %5)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  br label %23

23:                                               ; preds = %13, %1
  %24 = phi i32 [ 0, %13 ], [ -22, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpdma_desc_pool_destroy(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @gen_pool_size(ptr noundef %7) #8
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 @gen_pool_avail(ptr noundef %9) #8
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %17, label %12, !prof !39

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 4
  %14 = tail call i32 @gen_pool_size(ptr noundef %13) #8
  %15 = load ptr, ptr %6, align 4
  %16 = tail call i32 @gen_pool_avail(ptr noundef %15) #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %12, %5
  %18 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %3, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %3, align 4
  tail call void @dma_free_attrs(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %19, i32 noundef %26, i32 noundef 0) #8
  br label %27

27:                                               ; preds = %21, %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctlr_int_ctrl(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = load i32, ptr %0, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %34

7:                                                ; preds = %31, %2
  %8 = phi i32 [ %32, %31 ], [ 0, %2 ]
  %9 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.cpdma_chan, ptr %10, i32 0, i32 8
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %15 = getelementptr inbounds %struct.cpdma_chan, ptr %10, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %19 = getelementptr inbounds %struct.cpdma_chan, ptr %10, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cpdma_chan, ptr %10, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cpdma_ctlr, ptr %22, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cpdma_chan, ptr %10, i32 0, i32 15
  %26 = getelementptr inbounds %struct.cpdma_chan, ptr %10, i32 0, i32 16
  %27 = select i1 %1, ptr %25, ptr %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %24, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #8, !srcloc !12
  br label %30

30:                                               ; preds = %18, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #8
  br label %31

31:                                               ; preds = %30, %7
  %32 = add nuw nsw i32 %8, 1
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %34, label %7

34:                                               ; preds = %31, %2
  %35 = phi i32 [ -22, %2 ], [ 0, %31 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_int_ctrl(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %9 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cpdma_ctlr, ptr %12, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 15
  %16 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 16
  %17 = select i1 %1, ptr %15, ptr %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %14, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %10) #8, !srcloc !12
  br label %20

20:                                               ; preds = %8, %2
  %21 = phi i32 [ 0, %8 ], [ -22, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpdma_ctlr_eoi(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %3 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctrl_rxchs_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 164
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !42
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_ctrl_txchs_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 132
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !43
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_set_weight(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpdma_ctlr, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  br label %15

13:                                               ; preds = %2
  store i32 %1, ptr %9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #8
  %14 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %4)
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 0, %12 ], [ %14, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret i32 %16
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_split_pool(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %127, label %5

5:                                                ; preds = %28, %1
  %6 = phi i32 [ %33, %28 ], [ 0, %1 ]
  %7 = phi i32 [ %32, %28 ], [ 0, %1 ]
  %8 = phi i32 [ %31, %28 ], [ 0, %1 ]
  %9 = phi i32 [ %30, %28 ], [ 0, %1 ]
  %10 = phi i32 [ %29, %28 ], [ 0, %1 ]
  %11 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.cpdma_chan, ptr %12, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 31
  %18 = getelementptr inbounds %struct.cpdma_chan, ptr %12, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  br i1 %17, label %22, label %25

22:                                               ; preds = %14
  %23 = add i32 %10, %21
  %24 = add i32 %19, %8
  br label %28

25:                                               ; preds = %14
  %26 = add i32 %9, %21
  %27 = add i32 %19, %7
  br label %28

28:                                               ; preds = %25, %22, %5
  %29 = phi i32 [ %23, %22 ], [ %10, %25 ], [ %10, %5 ]
  %30 = phi i32 [ %9, %22 ], [ %26, %25 ], [ %9, %5 ]
  %31 = phi i32 [ %24, %22 ], [ %8, %25 ], [ %8, %5 ]
  %32 = phi i32 [ %7, %22 ], [ %27, %25 ], [ %7, %5 ]
  %33 = add nuw nsw i32 %6, 1
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %5

35:                                               ; preds = %28
  %36 = icmp sgt i32 %31, 100
  %37 = icmp sgt i32 %32, 100
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %127, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %30, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = mul i32 %41, %32
  %47 = sdiv i32 %46, -100
  %48 = add i32 %47, %41
  %49 = sdiv i32 %48, %30
  br label %50

50:                                               ; preds = %45, %39
  %51 = phi i32 [ %49, %45 ], [ 0, %39 ]
  %52 = icmp eq i32 %29, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = mul i32 %43, %31
  %55 = sdiv i32 %54, -100
  %56 = add i32 %55, %43
  %57 = sdiv i32 %56, %29
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i32 [ %57, %53 ], [ 0, %50 ]
  %60 = icmp eq i32 %41, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %81, %58
  %62 = phi i32 [ %85, %81 ], [ 0, %58 ]
  %63 = phi i32 [ %84, %81 ], [ 0, %58 ]
  %64 = phi i32 [ %83, %81 ], [ %41, %58 ]
  %65 = phi ptr [ %82, %81 ], [ null, %58 ]
  %66 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %62
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.cpdma_chan, ptr %67, i32 0, i32 18
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %73 = mul i32 %71, %41
  %74 = sdiv i32 %73, 100
  %75 = select i1 %72, i32 %51, i32 %74
  %76 = getelementptr inbounds %struct.cpdma_chan, ptr %67, i32 0, i32 10
  store i32 %75, ptr %76, align 4
  %77 = sub i32 %64, %75
  %78 = icmp ult i32 %63, %75
  %79 = select i1 %78, ptr %67, ptr %65
  %80 = tail call i32 @llvm.umax.i32(i32 %63, i32 %75) #8
  br label %81

81:                                               ; preds = %69, %61
  %82 = phi ptr [ %65, %61 ], [ %79, %69 ]
  %83 = phi i32 [ %64, %61 ], [ %77, %69 ]
  %84 = phi i32 [ %63, %61 ], [ %80, %69 ]
  %85 = add nuw nsw i32 %62, 1
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %61

87:                                               ; preds = %81
  %88 = icmp eq ptr %82, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.cpdma_chan, ptr %82, i32 0, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %83
  store i32 %92, ptr %90, align 4
  br label %93

93:                                               ; preds = %89, %87, %58
  %94 = icmp eq i32 %43, 0
  br i1 %94, label %127, label %95

95:                                               ; preds = %115, %93
  %96 = phi i32 [ %119, %115 ], [ 32, %93 ]
  %97 = phi i32 [ %118, %115 ], [ 0, %93 ]
  %98 = phi i32 [ %117, %115 ], [ %43, %93 ]
  %99 = phi ptr [ %116, %115 ], [ null, %93 ]
  %100 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %96
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.cpdma_chan, ptr %101, i32 0, i32 18
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  %107 = mul i32 %105, %43
  %108 = sdiv i32 %107, 100
  %109 = select i1 %106, i32 %59, i32 %108
  %110 = getelementptr inbounds %struct.cpdma_chan, ptr %101, i32 0, i32 10
  store i32 %109, ptr %110, align 4
  %111 = sub i32 %98, %109
  %112 = icmp ult i32 %97, %109
  %113 = select i1 %112, ptr %101, ptr %99
  %114 = tail call i32 @llvm.umax.i32(i32 %97, i32 %109) #8
  br label %115

115:                                              ; preds = %103, %95
  %116 = phi ptr [ %99, %95 ], [ %113, %103 ]
  %117 = phi i32 [ %98, %95 ], [ %111, %103 ]
  %118 = phi i32 [ %97, %95 ], [ %114, %103 ]
  %119 = add nuw nsw i32 %96, 1
  %120 = icmp eq i32 %119, 64
  br i1 %120, label %121, label %95

121:                                              ; preds = %115
  %122 = icmp eq ptr %116, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.cpdma_chan, ptr %116, i32 0, i32 10
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, %117
  store i32 %126, ptr %124, align 4
  br label %127

127:                                              ; preds = %123, %121, %93, %35, %1
  %128 = phi i32 [ 0, %1 ], [ -22, %35 ], [ 0, %93 ], [ 0, %121 ], [ 0, %123 ]
  ret i32 %128
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpdma_chan_get_min_rate(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = mul i32 %3, 32000
  %5 = add i32 %4, 16384
  %6 = udiv i32 %5, 16385
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_set_rate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %199, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 31
  br i1 %7, label %199, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %199, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cpdma_ctlr, ptr %14, i32 0, i32 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #8
  %19 = load ptr, ptr %13, align 4
  %20 = load i32, ptr %9, align 4
  br label %21

21:                                               ; preds = %43, %12
  %22 = phi i32 [ %20, %12 ], [ %44, %43 ]
  %23 = phi i32 [ 0, %12 ], [ %47, %43 ]
  %24 = phi i32 [ 0, %12 ], [ %46, %43 ]
  %25 = phi i32 [ 0, %12 ], [ %45, %43 ]
  %26 = getelementptr %struct.cpdma_ctlr, ptr %19, i32 0, i32 5, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = icmp eq ptr %27, %0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store i32 %1, ptr %9, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %1, %31 ], [ %22, %29 ]
  %34 = getelementptr inbounds %struct.cpdma_chan, ptr %27, i32 0, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.cpdma_chan, ptr %27, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, %25
  br label %43

41:                                               ; preds = %32
  %42 = icmp eq i32 %24, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %41, %37, %21
  %44 = phi i32 [ %33, %37 ], [ %33, %41 ], [ %22, %21 ]
  %45 = phi i32 [ %40, %37 ], [ %25, %41 ], [ %25, %21 ]
  %46 = phi i32 [ 1, %37 ], [ 0, %41 ], [ %24, %21 ]
  %47 = add nuw nsw i32 %23, 1
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %54, label %21

49:                                               ; preds = %41
  store i32 %20, ptr %9, align 4
  %50 = getelementptr inbounds %struct.cpdma_ctlr, ptr %19, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cpdma_chan, ptr %27, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.5, i32 noundef %53) #9
  br label %196

54:                                               ; preds = %43
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %156, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.cpdma_ctlr, ptr %14, i32 0, i32 1, i32 15
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, 32000
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %153, label %61

61:                                               ; preds = %56
  %62 = sub i32 %59, %44
  %63 = add i32 %59, -1
  %64 = udiv i32 %63, %44
  %65 = icmp ult i32 %64, 16385
  br i1 %65, label %66, label %147

66:                                               ; preds = %61
  %67 = zext i32 %64 to i64
  %68 = zext i32 %44 to i64
  %69 = lshr i32 %62, 1
  %70 = zext i32 %69 to i64
  %71 = zext i32 %59 to i64
  %72 = lshr i32 %44, 1
  %73 = zext i32 %72 to i64
  br label %74

74:                                               ; preds = %125, %66
  %75 = phi i32 [ -1, %66 ], [ %111, %125 ]
  %76 = phi i32 [ -1, %66 ], [ %127, %125 ]
  %77 = phi i32 [ -1, %66 ], [ %121, %125 ]
  %78 = phi i32 [ 0, %66 ], [ %120, %125 ]
  %79 = phi i32 [ 0, %66 ], [ %119, %125 ]
  %80 = phi i32 [ 0, %66 ], [ %118, %125 ]
  %81 = phi i64 [ %67, %66 ], [ %126, %125 ]
  %82 = mul nuw nsw i64 %81, %68
  %83 = add nuw nsw i64 %82, %70
  %84 = icmp ult i64 %83, 4294967296
  br i1 %84, label %85, label %89, !prof !39

85:                                               ; preds = %74
  %86 = trunc i64 %83 to i32
  %87 = udiv i32 %86, %62
  %88 = zext i32 %87 to i64
  br label %92

89:                                               ; preds = %74
  %90 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %62, i64 %83) #10, !srcloc !44
  %91 = extractvalue { i64, i64 } %90, 1
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi i64 [ %88, %85 ], [ %91, %89 ]
  %94 = mul i64 %93, %71
  %95 = add i64 %93, %81
  %96 = lshr i64 %95, 1
  %97 = add i64 %96, %94
  %98 = trunc i64 %95 to i32
  %99 = icmp ult i64 %97, 4294967296
  br i1 %99, label %100, label %103, !prof !39

100:                                              ; preds = %92
  %101 = trunc i64 %97 to i32
  %102 = udiv i32 %101, %98
  br label %107

103:                                              ; preds = %92
  %104 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %98, i64 %97) #10, !srcloc !44
  %105 = extractvalue { i64, i64 } %104, 1
  %106 = trunc i64 %105 to i32
  br label %107

107:                                              ; preds = %103, %100
  %108 = phi i32 [ %102, %100 ], [ %106, %103 ]
  %109 = icmp ult i32 %108, %44
  %110 = sub i32 %108, %44
  %111 = select i1 %109, i32 %75, i32 %110
  %112 = icmp ult i32 %111, %77
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = trunc i64 %81 to i32
  %115 = trunc i64 %93 to i32
  %116 = icmp eq i32 %111, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %113, %107
  %118 = phi i32 [ %108, %113 ], [ %80, %107 ]
  %119 = phi i32 [ %115, %113 ], [ %79, %107 ]
  %120 = phi i32 [ %114, %113 ], [ %78, %107 ]
  %121 = phi i32 [ %111, %113 ], [ %77, %107 ]
  %122 = icmp ult i32 %76, %111
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = add nuw nsw i64 %81, 1
  br label %125

125:                                              ; preds = %141, %123
  %126 = phi i64 [ %124, %123 ], [ %143, %141 ]
  %127 = phi i32 [ %111, %123 ], [ -1, %141 ]
  %128 = icmp ult i64 %126, 16385
  br i1 %128, label %74, label %147

129:                                              ; preds = %117
  %130 = add i64 %93, 1
  %131 = mul i64 %130, %71
  %132 = add i64 %131, %73
  %133 = icmp ult i64 %132, 4294967296
  br i1 %133, label %134, label %138, !prof !39

134:                                              ; preds = %129
  %135 = trunc i64 %132 to i32
  %136 = udiv i32 %135, %44
  %137 = zext i32 %136 to i64
  br label %141

138:                                              ; preds = %129
  %139 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %132) #10, !srcloc !44
  %140 = extractvalue { i64, i64 } %139, 1
  br label %141

141:                                              ; preds = %138, %134
  %142 = phi i64 [ %137, %134 ], [ %140, %138 ]
  %143 = sub i64 %142, %130
  br label %125

144:                                              ; preds = %113
  %145 = trunc i64 %81 to i32
  %146 = trunc i64 %93 to i32
  br label %147

147:                                              ; preds = %144, %125, %61
  %148 = phi i32 [ 0, %61 ], [ %108, %144 ], [ %118, %125 ]
  %149 = phi i32 [ 0, %61 ], [ %146, %144 ], [ %119, %125 ]
  %150 = phi i32 [ 0, %61 ], [ %145, %144 ], [ %120, %125 ]
  store i32 %148, ptr %9, align 4
  %151 = shl i32 %149, 16
  %152 = or i32 %150, %151
  br label %156

153:                                              ; preds = %56
  %154 = getelementptr inbounds %struct.cpdma_ctlr, ptr %14, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.6) #9
  br label %196

156:                                              ; preds = %147, %54
  %157 = phi i32 [ %152, %147 ], [ 0, %54 ]
  %158 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 19
  store i32 %157, ptr %158, align 4
  %159 = load i32, ptr %5, align 4
  %160 = shl i32 %159, 2
  %161 = add i32 %160, 48
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %162 = load i32, ptr %158, align 4
  %163 = getelementptr inbounds %struct.cpdma_ctlr, ptr %14, i32 0, i32 1, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr i8, ptr %164, i32 %161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %165, i32 %162) #8, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #8
  %166 = getelementptr inbounds %struct.cpdma_ctlr, ptr %14, i32 0, i32 1, i32 17
  %167 = load i8, ptr %166, align 4, !range !10
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %197, label %169

169:                                              ; preds = %156
  %170 = load i32, ptr %14, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %197

172:                                              ; preds = %169
  %173 = load ptr, ptr %163, align 4
  %174 = getelementptr i8, ptr %173, i32 32
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %176 = and i32 %175, -16776961
  %177 = shl i32 %45, 8
  %178 = and i32 %177, 16776960
  %179 = or i32 %176, %178
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %180 = load ptr, ptr %163, align 4
  %181 = getelementptr i8, ptr %180, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %179) #8, !srcloc !12
  %182 = load i8, ptr %166, align 4
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %172
  %185 = load i32, ptr %14, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load ptr, ptr %163, align 4
  %189 = getelementptr i8, ptr %188, i32 32
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %191 = and i32 %190, -2
  %192 = and i32 %46, 1
  %193 = or i32 %191, %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %194 = load ptr, ptr %163, align 4
  %195 = getelementptr i8, ptr %194, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #8, !srcloc !12
  br label %197

196:                                              ; preds = %153, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #8
  br label %197

197:                                              ; preds = %196, %187, %184, %172, %169, %156
  %198 = phi i32 [ -22, %196 ], [ 0, %169 ], [ 0, %156 ], [ 0, %172 ], [ 0, %184 ], [ 0, %187 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #8
  br label %199

199:                                              ; preds = %197, %8, %4, %2
  %200 = phi i32 [ -22, %4 ], [ -22, %2 ], [ %1, %8 ], [ %198, %197 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_get_rate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpdma_chan_create(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 2
  %6 = icmp eq i32 %3, 0
  %7 = add i32 %1, 32
  %8 = select i1 %6, i32 %1, i32 %7
  %9 = and i32 %8, 31
  %10 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %70

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 132, i32 noundef 3520) #8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %70, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 4
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #8
  %21 = getelementptr %struct.cpdma_ctlr, ptr %0, i32 0, i32 5, i32 %8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #8
  %25 = load ptr, ptr %14, align 4
  tail call void @devm_kfree(ptr noundef %25, ptr noundef nonnull %16) #8
  br label %70

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 6
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 5
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 7
  store i32 %8, ptr %29, align 4
  %30 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 12
  store ptr %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 20
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 18
  store i32 0, ptr %32, align 4
  %33 = icmp sgt i32 %8, 31
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %5
  %42 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 4
  store ptr %41, ptr %42, align 4
  br label %48

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 4
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = phi ptr [ %36, %34 ], [ %45, %43 ]
  %50 = phi ptr [ %38, %34 ], [ %47, %43 ]
  %51 = phi i32 [ 168, %34 ], [ 136, %43 ]
  %52 = phi i32 [ 172, %34 ], [ 140, %43 ]
  %53 = phi i32 [ 24, %34 ], [ 8, %43 ]
  %54 = phi i32 [ 2, %34 ], [ 1, %43 ]
  %55 = getelementptr i8, ptr %50, i32 %5
  %56 = getelementptr i8, ptr %49, i32 %5
  %57 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 3
  store ptr %55, ptr %58, align 4
  %59 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 15
  store i32 %51, ptr %59, align 4
  %60 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 16
  store i32 %52, ptr %60, align 4
  %61 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 17
  store i32 %53, ptr %61, align 4
  %62 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 13
  store i32 %54, ptr %62, align 4
  %63 = shl nuw i32 1, %9
  %64 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 11
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.cpdma_chan, ptr %16, i32 0, i32 8
  store i32 0, ptr %65, align 4
  store ptr %16, ptr %21, align 4
  %66 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  %69 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #8
  br label %70

70:                                               ; preds = %48, %24, %13, %4
  %71 = phi ptr [ inttoptr (i32 -16 to ptr), %24 ], [ %16, %48 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %13 ]
  ret ptr %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_get_rx_buf_num(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_get_stats(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %1, ptr noundef align 4 dereferenceable(52) %7, i32 52, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_idle_submit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.submit_info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 3
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 5
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 1
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #8
  %14 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %6)
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ %18, %17 ], [ -22, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cpdma_chan_submit_si(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.submit_info, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 14, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %172

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.cpdma_ctlr, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %18, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %18, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gen_pool, ptr %20, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.gen_pool, ptr %20, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %20, i32 noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef null) #8
  %28 = inttoptr i32 %27 to ptr
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 14, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %172

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.cpdma_ctlr, ptr %4, i32 0, i32 1, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %6, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 14, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %36, %38 ], [ %6, %34 ]
  %44 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp sgt i32 %45, 31
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.submit_info, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = shl nuw nsw i32 %49, 16
  %54 = or i32 %53, -535822336
  br label %55

55:                                               ; preds = %52, %47, %42
  %56 = phi i32 [ -536870912, %42 ], [ %54, %52 ], [ -536870912, %47 ]
  %57 = getelementptr inbounds %struct.submit_info, ptr %0, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.cpdma_ctlr, ptr %4, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  br i1 %59, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 13
  %64 = load i32, ptr %63, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %61, i32 noundef %58, i32 noundef %43, i32 noundef %64) #8
  br label %99

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.submit_info, ptr %0, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 13
  %69 = load i32, ptr %68, align 4
  %70 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %67) #8
  %71 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %72 = xor i1 %71, true
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %83, !prof !9

74:                                               ; preds = %65
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %75 = tail call ptr @dev_driver_string(ptr noundef %61) #8
  %76 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %61, align 4
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi ptr [ %80, %79 ], [ %77, %74 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %75, ptr noundef %82) #8
  br label %83

83:                                               ; preds = %81, %65
  br i1 %70, label %93, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr @mem_map, align 4
  %86 = ptrtoint ptr %67 to i32
  %87 = add i32 %86, 1073741824
  %88 = lshr i32 %87, 12
  %89 = getelementptr %struct.page, ptr %85, i32 %88
  %90 = and i32 %86, 4095
  %91 = tail call i32 @dma_map_page_attrs(ptr noundef %61, ptr noundef %89, i32 noundef %90, i32 noundef %43, i32 noundef %69, i32 noundef 0) #8
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %99

93:                                               ; preds = %84, %83
  %94 = load ptr, ptr %17, align 4
  %95 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %94, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %94, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  tail call void @gen_pool_free_owner(ptr noundef %96, i32 noundef %27, i32 noundef %98, ptr noundef null) #8
  br label %172

99:                                               ; preds = %84, %62
  %100 = phi i32 [ %58, %62 ], [ %91, %84 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 0) #8, !srcloc !12
  %101 = getelementptr inbounds %struct.cpdma_desc, ptr %28, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #8, !srcloc !12
  %102 = getelementptr inbounds %struct.cpdma_desc, ptr %28, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %43) #8, !srcloc !12
  %103 = or i32 %56, %43
  %104 = getelementptr inbounds %struct.cpdma_desc, ptr %28, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %103) #8, !srcloc !12
  %105 = getelementptr inbounds %struct.submit_info, ptr %0, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = getelementptr inbounds %struct.cpdma_desc, ptr %28, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %107) #8, !srcloc !12
  %109 = getelementptr inbounds %struct.cpdma_desc, ptr %28, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %100) #8, !srcloc !12
  %110 = load i32, ptr %57, align 4
  %111 = icmp eq i32 %110, 0
  %112 = or i32 %43, 65536
  %113 = select i1 %111, i32 %43, i32 %112
  %114 = getelementptr inbounds %struct.cpdma_desc, ptr %28, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %113) #8, !srcloc !12
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !46
  %116 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 1
  %117 = load ptr, ptr %3, align 4
  %118 = getelementptr inbounds %struct.cpdma_ctlr, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %119, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, %27
  %123 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %119, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = ptrtoint ptr %124 to i32
  %126 = sub i32 %122, %125
  %127 = load ptr, ptr %2, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %139

129:                                              ; preds = %99
  %130 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 14
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %130, align 4
  store ptr %28, ptr %2, align 4
  store ptr %28, ptr %116, align 4
  %133 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %159

136:                                              ; preds = %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %137 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %126) #8, !srcloc !12
  br label %159

139:                                              ; preds = %99
  %140 = load ptr, ptr %116, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %126) #8, !srcloc !12
  store ptr %28, ptr %116, align 4
  %141 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 14, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 4
  %144 = getelementptr inbounds %struct.cpdma_desc, ptr %140, i32 0, i32 3
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !49
  %146 = and i32 %145, 805306368
  %147 = icmp eq i32 %146, 268435456
  br i1 %147, label %148, label %159

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 5
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %153 = and i32 %145, -268435457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %153) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %154 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %126) #8, !srcloc !12
  %156 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 14, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 4
  br label %159

159:                                              ; preds = %152, %148, %139, %136, %129
  %160 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.cpdma_chan, ptr %2, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %168 = load ptr, ptr %164, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 1) #8, !srcloc !12
  br label %169

169:                                              ; preds = %167, %163, %159
  %170 = load i32, ptr %7, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr %7, align 4
  br label %172

172:                                              ; preds = %169, %93, %30, %12
  %173 = phi i32 [ -12, %12 ], [ 0, %169 ], [ -22, %93 ], [ -12, %30 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_idle_submit_mapped(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.submit_info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 4
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 5
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 1
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #8
  %14 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %6)
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ %18, %17 ], [ -22, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_submit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.submit_info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 3
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 4
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 5
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 1
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #8
  %14 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %6)
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ %18, %17 ], [ -22, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_submit_mapped(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.submit_info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 4
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 5
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.submit_info, ptr %6, i32 0, i32 1
  store i32 %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #8
  %14 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call fastcc i32 @cpdma_chan_submit_si(ptr noundef nonnull %6)
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ %18, %17 ], [ -22, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %5, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @gen_pool_avail(ptr noundef %15) #8
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_avail(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_process(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %12, %6
  %9 = phi i32 [ %13, %12 ], [ 0, %6 ]
  %10 = tail call fastcc i32 @__cpdma_chan_process(ptr noundef %0)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %9, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %8

15:                                               ; preds = %12, %8, %6, %2
  %16 = phi i32 [ -22, %2 ], [ 0, %6 ], [ %9, %8 ], [ %1, %12 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__cpdma_chan_process(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 14, i32 8
  br label %78

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = ptrtoint ptr %8 to i32
  %16 = add i32 %14, %15
  %17 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %5, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = sub i32 %16, %19
  %21 = getelementptr inbounds %struct.cpdma_desc, ptr %8, i32 0, i32 3
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !53
  %23 = and i32 %22, 536870912
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 14, i32 9
  br label %78

27:                                               ; preds = %12
  %28 = and i32 %22, 2047
  %29 = and i32 %22, 67108864
  %30 = icmp eq i32 %29, 0
  %31 = add nsw i32 %28, -4
  %32 = select i1 %30, i32 %28, i32 %31
  %33 = and i32 %22, 403636224
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !54
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr i8, ptr %37, i32 %34
  %39 = load i32, ptr %13, align 4
  %40 = sub i32 0, %39
  %41 = getelementptr i8, ptr %38, i32 %40
  br label %42

42:                                               ; preds = %36, %27
  %43 = phi ptr [ %41, %36 ], [ null, %27 ]
  store ptr %43, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !55
  tail call void @arm_heavy_mb() #8
  %44 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %20) #8, !srcloc !12
  %46 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 14, i32 10
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = and i32 %22, 268435456
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %42
  %55 = load ptr, ptr %0, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 14, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  %61 = load ptr, ptr %0, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load i32, ptr %13, align 4
  %65 = ptrtoint ptr %61 to i32
  %66 = add i32 %64, %65
  %67 = load ptr, ptr %17, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = sub i32 %66, %68
  br label %70

70:                                               ; preds = %63, %57
  %71 = phi i32 [ %69, %63 ], [ 0, %57 ]
  %72 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #8, !srcloc !12
  br label %74

74:                                               ; preds = %70, %54, %42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  %75 = and i32 %22, 134217728
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %76, i32 %33, i32 -38, !prof !39
  tail call fastcc void @__cpdma_chan_free(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %32, i32 noundef %77)
  br label %83

78:                                               ; preds = %25, %10
  %79 = phi ptr [ %26, %25 ], [ %11, %10 ]
  %80 = phi i32 [ -16, %25 ], [ -2, %10 ]
  %81 = load i32, ptr %79, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %79, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i32 [ %80, %78 ], [ %33, %74 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_chan_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpdma_ctlr, ptr %3, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = tail call fastcc i32 @cpdma_chan_set_chan_shaper(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @cpdma_chan_on(ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %6, %1 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__cpdma_chan_free(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpdma_ctlr, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cpdma_desc, ptr %1, i32 0, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !57
  %11 = getelementptr inbounds %struct.cpdma_desc, ptr %1, i32 0, i32 6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !58
  %13 = getelementptr inbounds %struct.cpdma_desc, ptr %1, i32 0, i32 5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !59
  %15 = and i32 %12, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = and i32 %12, -65537
  %19 = getelementptr inbounds %struct.cpdma_ctlr, ptr %6, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %20, i32 noundef %14, i32 noundef %18, i32 noundef %22) #8
  br label %28

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.cpdma_ctlr, ptr %6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %14, i32 noundef %12, i32 noundef %27, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %23, %17
  %29 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %8, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %1 to i32
  %32 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %8, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  tail call void @gen_pool_free_owner(ptr noundef %30, i32 noundef %31, i32 noundef %33, ptr noundef null) #8
  %34 = getelementptr inbounds %struct.cpdma_chan, ptr %0, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = inttoptr i32 %10 to ptr
  tail call void %35(ptr noundef %36, i32 noundef %2, i32 noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_control_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %1
  %6 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 17
  %7 = load i8, ptr %6, align 4, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = icmp ugt i32 %1, 11
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %1, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %5, align 4
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %22 = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %21, %23
  %25 = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %1, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %24, %26
  br label %28

28:                                               ; preds = %16, %14, %12, %9, %2
  %29 = phi i32 [ %27, %16 ], [ -524, %2 ], [ -22, %9 ], [ -2, %12 ], [ -1, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_control_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %1
  %7 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 17
  %8 = load i8, ptr %7, align 4, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = icmp ugt i32 %1, 11
  br i1 %14, label %35, label %15

15:                                               ; preds = %13
  %16 = icmp eq i32 %1, 6
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %6, align 4
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %23 = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %1, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [12 x %struct.cpdma_control_info], ptr @controls, i32 0, i32 %1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %24, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %22, %28
  %30 = and i32 %24, %2
  %31 = shl i32 %30, %26
  %32 = or i32 %29, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %33 = load ptr, ptr %18, align 4
  %34 = getelementptr i8, ptr %33, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !12
  br label %35

35:                                               ; preds = %17, %15, %13, %10, %3
  %36 = phi i32 [ 0, %17 ], [ -524, %3 ], [ -22, %10 ], [ -2, %13 ], [ -1, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpdma_get_num_rx_descs(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cpdma_get_num_tx_descs(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpdma_set_num_rx_descs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  store i32 %1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %10, %1
  %12 = getelementptr inbounds %struct.cpdma_ctlr, ptr %0, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  %13 = tail call fastcc i32 @cpdma_chan_split_pool(ptr noundef %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  store i32 %6, ptr %5, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.cpdma_desc_pool, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %18, %6
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %15, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gen_pool_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 2152660608}
!12 = !{i64 5031798}
!13 = !{i64 5032216}
!14 = !{i64 2152661204}
!15 = !{i64 2152662465}
!16 = !{i64 2152662791}
!17 = !{i64 2152663116}
!18 = !{i64 2152663440}
!19 = !{i64 2152663860}
!20 = !{i64 2152664309}
!21 = !{i64 2152664740}
!22 = !{i64 2152665153}
!23 = !{i64 2152637606}
!24 = !{i64 2152637884}
!25 = !{i64 2152639338}
!26 = !{i64 2152639029}
!27 = !{i64 2152640178}
!28 = !{i64 2152640615}
!29 = !{i64 2152641029}
!30 = !{i64 2152667191}
!31 = !{i64 2152667640}
!32 = !{i64 2152668071}
!33 = !{i64 2152668484}
!34 = !{i64 2152688149}
!35 = !{i64 2152688777}
!36 = !{i64 2152689344}
!37 = !{i64 2152690661}
!38 = !{i64 2152691611}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2152692691}
!41 = !{i64 2152670073}
!42 = !{i64 2152670677}
!43 = !{i64 2152671129}
!44 = !{i64 2148359270, i64 2148359550, i64 2148359884, i64 2148360218}
!45 = !{i64 2152658604}
!46 = !{i64 2152680788}
!47 = !{i64 2152676432}
!48 = !{i64 2152676822}
!49 = !{i64 2152677354}
!50 = !{i64 2152678002}
!51 = !{i64 2152678447}
!52 = !{i64 2152681008}
!53 = !{i64 2152685038}
!54 = !{i64 2152686094}
!55 = !{i64 2152686320}
!56 = !{i64 2152686805}
!57 = !{i64 2152683316}
!58 = !{i64 2152683685}
!59 = !{i64 2152684066}
