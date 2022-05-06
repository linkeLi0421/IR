; ModuleID = '/llk/IR/drivers/usb/musb/ux500_dma.c_pt.bc'
source_filename = "../drivers/usb/musb/ux500_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ux500_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ux500_dma_controller_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ux500_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ux500_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22ux500_dma_controller_create\22\09\09\09\09\09"
module asm "__kstrtabns_ux500_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ux500_dma_controller = type { %struct.dma_controller, [8 x %struct.ux500_dma_channel], [8 x %struct.ux500_dma_channel], ptr, i32 }
%struct.dma_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ux500_dma_channel = type { %struct.dma_channel, ptr, ptr, ptr, i32, i32, i8, i8, i8 }
%struct.dma_channel = type { ptr, i32, i32, i32, i8, i8 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.ux500_musb_board_data = type { ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__kstrtab_ux500_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ux500_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ux500_dma_controller_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ux500_dma_controller_destroy to i32), ptr @__kstrtab_ux500_dma_controller_destroy, ptr @__kstrtabns_ux500_dma_controller_destroy }, section "___ksymtab_gpl+ux500_dma_controller_destroy", align 4
@.str = private unnamed_addr constant [28 x i8] c"no memory resource defined\0A\00", align 1
@__kstrtab_ux500_dma_controller_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_ux500_dma_controller_create = external dso_local constant [0 x i8], align 1
@__ksymtab_ux500_dma_controller_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ux500_dma_controller_create to i32), ptr @__kstrtab_ux500_dma_controller_create, ptr @__kstrtabns_ux500_dma_controller_create }, section "___ksymtab_gpl+ux500_dma_controller_create", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@iep_chan_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"\013%s %d: Dma pipe allocation error dir=%d ch=%d\0A\00", align 1
@__func__.ux500_dma_controller_start = private unnamed_addr constant [27 x i8] c"ux500_dma_controller_start\00", align 1
@oep_chan_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"iep_1_9\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"iep_2_10\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"iep_3_11\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"iep_4_12\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"iep_5_13\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"iep_6_14\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"iep_7_15\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"iep_8\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"oep_1_9\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"oep_2_10\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"oep_3_11\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"oep_4_12\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"oep_5_13\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"oep_6_14\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"oep_7_15\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"oep_8\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ux500_dma_controller_create, ptr @__ksymtab_ux500_dma_controller_destroy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ux500_dma_controller_destroy(ptr noundef %0) #0 {
  tail call fastcc void @ux500_dma_controller_stop(ptr noundef %0)
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ux500_dma_controller_stop(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ux500_dma_channel, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  store i8 0, ptr %4, align 2
  %8 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 2
  store i32 0, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.ux500_dma_channel, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @dma_release_channel(ptr noundef nonnull %12) #8
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ux500_dma_channel, ptr %17, i32 0, i32 8
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  store i8 0, ptr %18, align 2
  %22 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 3
  store i32 1, ptr %22, align 4
  %23 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 2
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = getelementptr inbounds %struct.ux500_dma_channel, ptr %17, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @dma_release_channel(ptr noundef nonnull %26) #8
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ux500_dma_channel, ptr %31, i32 0, i32 8
  %33 = load i8, ptr %32, align 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  store i8 0, ptr %32, align 2
  %36 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 3
  store i32 1, ptr %36, align 4
  %37 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 2
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = getelementptr inbounds %struct.ux500_dma_channel, ptr %31, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @dma_release_channel(ptr noundef nonnull %40) #8
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ux500_dma_channel, ptr %45, i32 0, i32 8
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  store i8 0, ptr %46, align 2
  %50 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 3
  store i32 1, ptr %50, align 4
  %51 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 2
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = getelementptr inbounds %struct.ux500_dma_channel, ptr %45, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @dma_release_channel(ptr noundef nonnull %54) #8
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ux500_dma_channel, ptr %59, i32 0, i32 8
  %61 = load i8, ptr %60, align 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  store i8 0, ptr %60, align 2
  %64 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 4, i32 0, i32 3
  store i32 1, ptr %64, align 4
  %65 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 4, i32 0, i32 2
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = getelementptr inbounds %struct.ux500_dma_channel, ptr %59, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @dma_release_channel(ptr noundef nonnull %68) #8
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ux500_dma_channel, ptr %73, i32 0, i32 8
  %75 = load i8, ptr %74, align 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  store i8 0, ptr %74, align 2
  %78 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 5, i32 0, i32 3
  store i32 1, ptr %78, align 4
  %79 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 5, i32 0, i32 2
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = getelementptr inbounds %struct.ux500_dma_channel, ptr %73, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @dma_release_channel(ptr noundef nonnull %82) #8
  br label %85

85:                                               ; preds = %84, %80
  %86 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 6
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ux500_dma_channel, ptr %87, i32 0, i32 8
  %89 = load i8, ptr %88, align 2
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  store i8 0, ptr %88, align 2
  %92 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 6, i32 0, i32 3
  store i32 1, ptr %92, align 4
  %93 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 6, i32 0, i32 2
  store i32 0, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = getelementptr inbounds %struct.ux500_dma_channel, ptr %87, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void @dma_release_channel(ptr noundef nonnull %96) #8
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 7
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.ux500_dma_channel, ptr %101, i32 0, i32 8
  %103 = load i8, ptr %102, align 2
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  store i8 0, ptr %102, align 2
  %106 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 7, i32 0, i32 3
  store i32 1, ptr %106, align 4
  %107 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 7, i32 0, i32 2
  store i32 0, ptr %107, align 4
  br label %108

108:                                              ; preds = %105, %99
  %109 = getelementptr inbounds %struct.ux500_dma_channel, ptr %101, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void @dma_release_channel(ptr noundef nonnull %110) #8
  br label %113

113:                                              ; preds = %112, %108
  %114 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 0
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ux500_dma_channel, ptr %115, i32 0, i32 8
  %117 = load i8, ptr %116, align 2
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  store i8 0, ptr %116, align 2
  %120 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 3
  store i32 1, ptr %120, align 4
  %121 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 2
  store i32 0, ptr %121, align 4
  br label %122

122:                                              ; preds = %119, %113
  %123 = getelementptr inbounds %struct.ux500_dma_channel, ptr %115, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @dma_release_channel(ptr noundef nonnull %124) #8
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.ux500_dma_channel, ptr %129, i32 0, i32 8
  %131 = load i8, ptr %130, align 2
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  store i8 0, ptr %130, align 2
  %134 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 1, i32 0, i32 3
  store i32 1, ptr %134, align 4
  %135 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 1, i32 0, i32 2
  store i32 0, ptr %135, align 4
  br label %136

136:                                              ; preds = %133, %127
  %137 = getelementptr inbounds %struct.ux500_dma_channel, ptr %129, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  tail call void @dma_release_channel(ptr noundef nonnull %138) #8
  br label %141

141:                                              ; preds = %140, %136
  %142 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ux500_dma_channel, ptr %143, i32 0, i32 8
  %145 = load i8, ptr %144, align 2
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  store i8 0, ptr %144, align 2
  %148 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 2, i32 0, i32 3
  store i32 1, ptr %148, align 4
  %149 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 2, i32 0, i32 2
  store i32 0, ptr %149, align 4
  br label %150

150:                                              ; preds = %147, %141
  %151 = getelementptr inbounds %struct.ux500_dma_channel, ptr %143, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  tail call void @dma_release_channel(ptr noundef nonnull %152) #8
  br label %155

155:                                              ; preds = %154, %150
  %156 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ux500_dma_channel, ptr %157, i32 0, i32 8
  %159 = load i8, ptr %158, align 2
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  store i8 0, ptr %158, align 2
  %162 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 3
  store i32 1, ptr %162, align 4
  %163 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 2
  store i32 0, ptr %163, align 4
  br label %164

164:                                              ; preds = %161, %155
  %165 = getelementptr inbounds %struct.ux500_dma_channel, ptr %157, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  tail call void @dma_release_channel(ptr noundef nonnull %166) #8
  br label %169

169:                                              ; preds = %168, %164
  %170 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 4
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.ux500_dma_channel, ptr %171, i32 0, i32 8
  %173 = load i8, ptr %172, align 2
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %169
  store i8 0, ptr %172, align 2
  %176 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 4, i32 0, i32 3
  store i32 1, ptr %176, align 4
  %177 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 4, i32 0, i32 2
  store i32 0, ptr %177, align 4
  br label %178

178:                                              ; preds = %175, %169
  %179 = getelementptr inbounds %struct.ux500_dma_channel, ptr %171, i32 0, i32 3
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  tail call void @dma_release_channel(ptr noundef nonnull %180) #8
  br label %183

183:                                              ; preds = %182, %178
  %184 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 5
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.ux500_dma_channel, ptr %185, i32 0, i32 8
  %187 = load i8, ptr %186, align 2
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %183
  store i8 0, ptr %186, align 2
  %190 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 5, i32 0, i32 3
  store i32 1, ptr %190, align 4
  %191 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 5, i32 0, i32 2
  store i32 0, ptr %191, align 4
  br label %192

192:                                              ; preds = %189, %183
  %193 = getelementptr inbounds %struct.ux500_dma_channel, ptr %185, i32 0, i32 3
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  tail call void @dma_release_channel(ptr noundef nonnull %194) #8
  br label %197

197:                                              ; preds = %196, %192
  %198 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 6
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.ux500_dma_channel, ptr %199, i32 0, i32 8
  %201 = load i8, ptr %200, align 2
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %197
  store i8 0, ptr %200, align 2
  %204 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 6, i32 0, i32 3
  store i32 1, ptr %204, align 4
  %205 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 6, i32 0, i32 2
  store i32 0, ptr %205, align 4
  br label %206

206:                                              ; preds = %203, %197
  %207 = getelementptr inbounds %struct.ux500_dma_channel, ptr %199, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  tail call void @dma_release_channel(ptr noundef nonnull %208) #8
  br label %211

211:                                              ; preds = %210, %206
  %212 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 7
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.ux500_dma_channel, ptr %213, i32 0, i32 8
  %215 = load i8, ptr %214, align 2
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %211
  store i8 0, ptr %214, align 2
  %218 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 7, i32 0, i32 3
  store i32 1, ptr %218, align 4
  %219 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 7, i32 0, i32 2
  store i32 0, ptr %219, align 4
  br label %220

220:                                              ; preds = %217, %211
  %221 = getelementptr inbounds %struct.ux500_dma_channel, ptr %213, i32 0, i32 3
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  tail call void @dma_release_channel(ptr noundef nonnull %222) #8
  br label %225

225:                                              ; preds = %224, %220
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ux500_dma_controller_create(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  %4 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 740) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %117, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %5, i32 -16
  %11 = getelementptr inbounds %struct.ux500_dma_controller, ptr %7, i32 0, i32 3
  store ptr %0, ptr %11, align 4
  %12 = tail call ptr @platform_get_resource(ptr noundef %10, i32 noundef 512, i32 noundef 0) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #10
  br label %116

16:                                               ; preds = %9
  %17 = load i32, ptr %12, align 4
  %18 = getelementptr inbounds %struct.ux500_dma_controller, ptr %7, i32 0, i32 4
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 1
  store ptr @ux500_dma_channel_allocate, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 2
  store ptr @ux500_dma_channel_release, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 3
  store ptr @ux500_dma_channel_program, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 4
  store ptr @ux500_dma_channel_abort, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dma_controller, ptr %7, i32 0, i32 5
  store ptr @ux500_dma_is_compatible, ptr %23, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.1) #10
  br label %114

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.musb_hdrc_platform_data, ptr %26, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  store i32 0, ptr %3, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %3) #8
  %32 = getelementptr inbounds %struct.ux500_dma_controller, ptr %7, i32 0, i32 1
  %33 = icmp eq ptr %31, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %31, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi ptr [ %35, %34 ], [ null, %29 ]
  %38 = getelementptr inbounds %struct.ux500_musb_board_data, ptr %31, i32 0, i32 2
  %39 = getelementptr inbounds %struct.ux500_dma_controller, ptr %7, i32 0, i32 2
  %40 = getelementptr inbounds %struct.ux500_musb_board_data, ptr %31, i32 0, i32 1
  %41 = icmp eq ptr %37, null
  br label %42

42:                                               ; preds = %74, %36
  %43 = phi i32 [ 0, %36 ], [ %75, %74 ]
  %44 = getelementptr %struct.ux500_dma_channel, ptr %32, i32 %43
  %45 = getelementptr %struct.ux500_dma_channel, ptr %32, i32 %43, i32 1
  store ptr %7, ptr %45, align 4
  %46 = trunc i32 %43 to i8
  %47 = getelementptr %struct.ux500_dma_channel, ptr %32, i32 %43, i32 6
  store i8 %46, ptr %47, align 4
  %48 = getelementptr %struct.ux500_dma_channel, ptr %32, i32 %43, i32 7
  store i8 0, ptr %48, align 1
  store ptr %44, ptr %44, align 4
  %49 = getelementptr inbounds %struct.dma_channel, ptr %44, i32 0, i32 3
  store i32 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_channel, ptr %44, i32 0, i32 1
  store i32 16777216, ptr %50, align 4
  %51 = getelementptr ptr, ptr @iep_chan_names, i32 %43
  %52 = load ptr, ptr %51, align 4
  %53 = call ptr @dma_request_chan(ptr noundef %24, ptr noundef %52) #8
  %54 = getelementptr %struct.ux500_dma_channel, ptr %32, i32 %43, i32 3
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %67

56:                                               ; preds = %42
  br i1 %33, label %59, label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %38, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi ptr [ %58, %57 ], [ null, %56 ]
  br i1 %41, label %64, label %61

61:                                               ; preds = %59
  %62 = getelementptr ptr, ptr %37, i32 %43
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi ptr [ %63, %61 ], [ null, %59 ]
  %66 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef %60, ptr noundef %65, ptr noundef null) #8
  store ptr %66, ptr %54, align 4
  br label %67

67:                                               ; preds = %64, %42
  %68 = phi ptr [ %66, %64 ], [ %53, %42 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %108, %67
  %71 = phi i32 [ 1, %108 ], [ 0, %67 ]
  %72 = phi i32 [ %84, %108 ], [ %43, %67 ]
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ux500_dma_controller_start, i32 noundef 327, i32 noundef %71, i32 noundef %72) #10
  call fastcc void @ux500_dma_controller_stop(ptr noundef nonnull %7) #8
  br label %114

74:                                               ; preds = %67
  %75 = add nuw nsw i32 %43, 1
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %77, label %42

77:                                               ; preds = %74
  br i1 %33, label %80, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %40, align 4
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi ptr [ %79, %78 ], [ null, %77 ]
  %82 = icmp eq ptr %81, null
  br label %83

83:                                               ; preds = %111, %80
  %84 = phi i32 [ 0, %80 ], [ %112, %111 ]
  %85 = getelementptr %struct.ux500_dma_channel, ptr %39, i32 %84
  %86 = getelementptr %struct.ux500_dma_channel, ptr %39, i32 %84, i32 1
  store ptr %7, ptr %86, align 4
  %87 = trunc i32 %84 to i8
  %88 = getelementptr %struct.ux500_dma_channel, ptr %39, i32 %84, i32 6
  store i8 %87, ptr %88, align 4
  %89 = getelementptr %struct.ux500_dma_channel, ptr %39, i32 %84, i32 7
  store i8 1, ptr %89, align 1
  store ptr %85, ptr %85, align 4
  %90 = getelementptr inbounds %struct.dma_channel, ptr %85, i32 0, i32 3
  store i32 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.dma_channel, ptr %85, i32 0, i32 1
  store i32 16777216, ptr %91, align 4
  %92 = getelementptr ptr, ptr @oep_chan_names, i32 %84
  %93 = load ptr, ptr %92, align 4
  %94 = call ptr @dma_request_chan(ptr noundef %24, ptr noundef %93) #8
  %95 = getelementptr %struct.ux500_dma_channel, ptr %39, i32 %84, i32 3
  store ptr %94, ptr %95, align 4
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %97, label %108

97:                                               ; preds = %83
  br i1 %33, label %100, label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %38, align 4
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi ptr [ %99, %98 ], [ null, %97 ]
  br i1 %82, label %105, label %102

102:                                              ; preds = %100
  %103 = getelementptr ptr, ptr %81, i32 %84
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi ptr [ %104, %102 ], [ null, %100 ]
  %107 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef %101, ptr noundef %106, ptr noundef null) #8
  store ptr %107, ptr %95, align 4
  br label %108

108:                                              ; preds = %105, %83
  %109 = phi ptr [ %107, %105 ], [ %94, %83 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %70, label %111

111:                                              ; preds = %108
  %112 = add nuw nsw i32 %84, 1
  %113 = icmp eq i32 %112, 8
  br i1 %113, label %115, label %83

114:                                              ; preds = %70, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %116

115:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %117

116:                                              ; preds = %114, %14
  call void @kfree(ptr noundef nonnull %7) #8
  br label %117

117:                                              ; preds = %116, %115, %2
  %118 = phi ptr [ %7, %115 ], [ null, %2 ], [ null, %116 ]
  ret ptr %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @ux500_dma_channel_allocate(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #4 {
  %4 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = add i8 %5, -1
  %7 = icmp ugt i8 %6, 7
  %8 = add i8 %5, -9
  %9 = select i1 %7, i8 %8, i8 %6
  %10 = icmp ugt i8 %9, 7
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = zext i8 %9 to i32
  %13 = icmp eq i8 %2, 0
  %14 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 2, i32 %12
  %15 = getelementptr %struct.ux500_dma_controller, ptr %0, i32 0, i32 1, i32 %12
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = getelementptr inbounds %struct.ux500_dma_channel, ptr %16, i32 0, i32 8
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ux500_dma_channel, ptr %16, i32 0, i32 2
  store ptr %1, ptr %21, align 4
  store i8 1, ptr %17, align 2
  br label %22

22:                                               ; preds = %20, %11, %3
  %23 = phi ptr [ %16, %20 ], [ null, %3 ], [ null, %11 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @ux500_dma_channel_release(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ux500_dma_channel, ptr %2, i32 0, i32 8
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  store i8 0, ptr %3, align 2
  %7 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_dma_channel_program(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca %struct.dma_slave_config, align 4
  %8 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %11 [
    i32 2, label %10
    i32 0, label %10
  ]

10:                                               ; preds = %5, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/musb/ux500_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #8, !srcloc !8
  unreachable

11:                                               ; preds = %5
  store i32 2, ptr %8, align 4
  %12 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.ux500_dma_channel, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ux500_dma_channel, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #8
  %18 = getelementptr inbounds i8, ptr %7, i32 28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %18, i8 0, i32 20, i1 false) #8, !annotation !9
  %19 = getelementptr inbounds %struct.ux500_dma_channel, ptr %13, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ux500_dma_controller, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.musb, ptr %22, i32 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.musb_hw_ep, ptr %15, i32 0, i32 3
  %26 = load i8, ptr %25, align 4
  %27 = tail call i32 %24(i8 noundef zeroext %26) #8
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.ux500_dma_controller, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ux500_dma_channel, ptr %13, i32 0, i32 4
  store i32 %4, ptr %31, align 4
  call void @sg_init_table(ptr noundef nonnull %6, i32 noundef 1) #8
  %32 = load ptr, ptr @mem_map, align 4
  %33 = lshr i32 %3, 12
  %34 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %35 = sub i32 %33, %34
  %36 = getelementptr %struct.page, ptr %32, i32 %35
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !10

40:                                               ; preds = %11
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

41:                                               ; preds = %11
  %42 = and i32 %3, 4095
  %43 = add i32 %30, %27
  %44 = load i32, ptr %6, align 4
  %45 = and i32 %44, 3
  %46 = or i32 %45, %37
  store i32 %46, ptr %6, align 4
  %47 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  store i32 %42, ptr %47, align 4
  %48 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 2
  store i32 %4, ptr %48, align 4
  %49 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3
  store i32 %3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 4
  store i32 %4, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ux500_dma_channel, ptr %13, i32 0, i32 7
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 2, i32 1
  %55 = and i32 %4, 3
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 4, i32 1
  store i32 %54, ptr %7, align 4
  %58 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 1
  store i32 %43, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 3
  store i32 %57, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 5
  store i32 16, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 2
  store i32 %43, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 4
  store i32 %57, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 6
  store i32 16, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dma_slave_config, ptr %7, i32 0, i32 9
  store i8 0, ptr %64, align 4
  %65 = load ptr, ptr %17, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %65, i32 0, i32 44
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %41
  %70 = call i32 %67(ptr noundef %17, ptr noundef nonnull %7) #8
  br label %71

71:                                               ; preds = %69, %41
  %72 = icmp eq ptr %17, null
  br i1 %72, label %93, label %73

73:                                               ; preds = %71
  %74 = load ptr, ptr %17, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %93, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.dma_device, ptr %74, i32 0, i32 39
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = call ptr %78(ptr noundef nonnull %17, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %54, i32 noundef 3, ptr noundef null) #8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %81, i32 0, i32 6
  store ptr @ux500_dma_callback, ptr %84, align 4
  %85 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %81, i32 0, i32 8
  store ptr %0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %81, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 %87(ptr noundef nonnull %81) #8
  %89 = getelementptr inbounds %struct.ux500_dma_channel, ptr %13, i32 0, i32 5
  store i32 %88, ptr %89, align 4
  %90 = load ptr, ptr %17, align 4
  %91 = getelementptr inbounds %struct.dma_device, ptr %90, i32 0, i32 50
  %92 = load ptr, ptr %91, align 4
  call void %92(ptr noundef nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  br label %94

93:                                               ; preds = %80, %76, %73, %71
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  store i32 1, ptr %8, align 4
  br label %94

94:                                               ; preds = %93, %83
  %95 = phi i32 [ 0, %93 ], [ 1, %83 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_dma_channel_abort(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.ux500_dma_channel, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ux500_dma_controller, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ux500_dma_channel, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.musb_hw_ep, ptr %12, i32 0, i32 3
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.musb, ptr %10, i32 0, i32 35, i32 %15, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ux500_dma_channel, ptr %6, i32 0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr @musb_readw, align 4
  %22 = select i1 %20, i32 6, i32 2
  %23 = select i1 %20, i16 22527, i16 27647
  %24 = tail call zeroext i16 %21(ptr noundef %17, i32 noundef %22) #8
  %25 = and i16 %24, %23
  %26 = load ptr, ptr @musb_writew, align 4
  tail call void %26(ptr noundef %17, i32 noundef %22, i16 noundef zeroext %25) #8
  %27 = getelementptr inbounds %struct.ux500_dma_channel, ptr %6, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 47
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  %34 = tail call i32 %31(ptr noundef %28) #8
  br label %35

35:                                               ; preds = %33, %5
  store i32 1, ptr %2, align 4
  br label %36

36:                                               ; preds = %35, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ux500_dma_is_compatible(ptr nocapture noundef readnone %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #5 {
  %5 = and i16 %1, 3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = ptrtoint ptr %2 to i32
  %9 = icmp ugt i32 %3, 511
  %10 = or i32 %8, %3
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %9, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi i32 [ 0, %4 ], [ %14, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ux500_dma_callback(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ux500_dma_channel, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.ux500_dma_channel, ptr %2, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_channel, ptr %2, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dma_channel, ptr %2, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.musb_hw_ep, ptr %4, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ux500_dma_channel, ptr %2, i32 0, i32 7
  %14 = load i8, ptr %13, align 1
  tail call void @musb_dma_completion(ptr noundef %5, i8 noundef zeroext %12, i8 noundef zeroext %14) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dma_completion(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2154025105, i64 2154025598, i64 2154025142, i64 2154025198, i64 2154025232, i64 2154025256, i64 2154025297, i64 2154025318, i64 2154025346, i64 2154025380}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152803729, i64 2152804221, i64 2152803766, i64 2152803822, i64 2152803856, i64 2152803880, i64 2152803921, i64 2152803942, i64 2152803970, i64 2152804004}
