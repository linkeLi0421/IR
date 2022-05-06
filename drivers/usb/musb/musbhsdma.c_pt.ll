; ModuleID = '/llk/IR/drivers/usb/musb/musbhsdma.c_pt.bc'
source_filename = "../drivers/usb/musb/musbhsdma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_controller_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_controller_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dma_controller_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musbhs_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22musbhs_dma_controller_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_musbhs_dma_controller_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musbhs_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22musbhs_dma_controller_create\22\09\09\09\09\09"
module asm "__kstrtabns_musbhs_dma_controller_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_musbhs_dma_controller_create_noirq:\09\09\09\09\09"
module asm "\09.asciz \09\22musbhs_dma_controller_create_noirq\22\09\09\09\09\09"
module asm "__kstrtabns_musbhs_dma_controller_create_noirq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.musb_dma_controller = type { %struct.dma_controller, [8 x %struct.musb_dma_channel], ptr, ptr, i8, i8, i32 }
%struct.dma_controller = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_dma_channel = type { %struct.dma_channel, ptr, i32, i32, i16, i8, i8, i8 }
%struct.dma_channel = type { ptr, i32, i32, i32, i8, i8 }
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

@musb_clearb = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [17 x i8] c"spurious DMA irq\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"int_hsdma = 0x%x\00", align 1
@musb_readw = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ch %p, 0x%x -> 0x%x (%zu / %d) %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"=> reconfig 0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"=> complete\00", align 1
@musb_writew = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_dma_controller_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_controller_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_controller_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_controller_irq to i32), ptr @__kstrtab_dma_controller_irq, ptr @__kstrtabns_dma_controller_irq }, section "___ksymtab_gpl+dma_controller_irq", align 4
@__kstrtab_musbhs_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_musbhs_dma_controller_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_musbhs_dma_controller_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musbhs_dma_controller_destroy to i32), ptr @__kstrtab_musbhs_dma_controller_destroy, ptr @__kstrtabns_musbhs_dma_controller_destroy }, section "___ksymtab_gpl+musbhs_dma_controller_destroy", align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"No DMA interrupt line!\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"request_irq %d failed!\0A\00", align 1
@musb_dma_controller_destroy = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_musbhs_dma_controller_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_musbhs_dma_controller_create = external dso_local constant [0 x i8], align 1
@__ksymtab_musbhs_dma_controller_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musbhs_dma_controller_create to i32), ptr @__kstrtab_musbhs_dma_controller_create, ptr @__kstrtabns_musbhs_dma_controller_create }, section "___ksymtab_gpl+musbhs_dma_controller_create", align 4
@__kstrtab_musbhs_dma_controller_create_noirq = external dso_local constant [0 x i8], align 1
@__kstrtabns_musbhs_dma_controller_create_noirq = external dso_local constant [0 x i8], align 1
@__ksymtab_musbhs_dma_controller_create_noirq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @musbhs_dma_controller_create_noirq to i32), ptr @__kstrtab_musbhs_dma_controller_create_noirq, ptr @__kstrtabns_musbhs_dma_controller_create_noirq }, section "___ksymtab_gpl+musbhs_dma_controller_create_noirq", align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Stopping DMA controller while channel active\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"ep%d-%s pkt_sz %d, dma_addr %pad length %d, mode %d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%p, pkt_sz %d, addr %pad, len %d, mode %d\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_dma_controller_irq, ptr @__ksymtab_musbhs_dma_controller_create, ptr @__ksymtab_musbhs_dma_controller_create_noirq, ptr @__ksymtab_musbhs_dma_controller_destroy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_controller_irq(i32 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.musb_dma_controller, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb_dma_controller, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %8 = load ptr, ptr @musb_clearb, align 4
  %9 = tail call zeroext i8 %8(ptr noundef %6, i32 noundef 512) #7
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = zext i8 %9 to i32
  br label %95

13:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %4, ptr noundef nonnull @.str) #7
  %14 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 524) #7
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i8 [ 0, %13 ], [ %20, %17 ]
  %23 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 540) #7
  %28 = icmp eq i32 %27, 0
  %29 = or i8 %22, 2
  %30 = select i1 %28, i8 %29, i8 %22
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i8 [ %22, %21 ], [ %30, %26 ]
  %33 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 2, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 556) #7
  %38 = icmp eq i32 %37, 0
  %39 = or i8 %32, 4
  %40 = select i1 %38, i8 %39, i8 %32
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i8 [ %32, %31 ], [ %40, %36 ]
  %43 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 3, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 572) #7
  %48 = icmp eq i32 %47, 0
  %49 = or i8 %42, 8
  %50 = select i1 %48, i8 %49, i8 %42
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i8 [ %42, %41 ], [ %50, %46 ]
  %53 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 4, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 588) #7
  %58 = icmp eq i32 %57, 0
  %59 = or i8 %52, 16
  %60 = select i1 %58, i8 %59, i8 %52
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i8 [ %52, %51 ], [ %60, %56 ]
  %63 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 5, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 604) #7
  %68 = icmp eq i32 %67, 0
  %69 = or i8 %62, 32
  %70 = select i1 %68, i8 %69, i8 %62
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i8 [ %62, %61 ], [ %70, %66 ]
  %73 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 6, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 620) #7
  %78 = icmp eq i32 %77, 0
  %79 = or i8 %72, 64
  %80 = select i1 %78, i8 %79, i8 %72
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i8 [ %72, %71 ], [ %80, %76 ]
  %83 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 7, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef 636) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = or i8 %82, -128
  %91 = zext i8 %90 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %91) #7
  br label %95

92:                                               ; preds = %86, %81
  %93 = zext i8 %82 to i32
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %93) #7
  %94 = icmp eq i8 %82, 0
  br i1 %94, label %167, label %95

95:                                               ; preds = %92, %89, %11
  %96 = phi i32 [ %12, %11 ], [ %93, %92 ], [ %91, %89 ]
  %97 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 2
  %98 = getelementptr inbounds %struct.musb, ptr %4, i32 0, i32 2, i32 1
  br label %99

99:                                               ; preds = %164, %95
  %100 = phi i32 [ 0, %95 ], [ %165, %164 ]
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %96
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %164, label %104

104:                                              ; preds = %99
  %105 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 %100
  %106 = load ptr, ptr @musb_readw, align 4
  %107 = shl nuw nsw i32 %100, 4
  %108 = add nuw nsw i32 %107, 516
  %109 = tail call zeroext i16 %106(ptr noundef %6, i32 noundef %108) #7
  %110 = and i16 %109, 256
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.dma_channel, ptr %105, i32 0, i32 3
  store i32 3, ptr %113, align 4
  br label %164

114:                                              ; preds = %104
  %115 = add nuw nsw i32 %107, 520
  %116 = tail call i32 @musb_readl(ptr noundef %6, i32 noundef %115) #7
  %117 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 %100, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = sub i32 %116, %118
  %120 = getelementptr inbounds %struct.dma_channel, ptr %105, i32 0, i32 2
  store i32 %119, ptr %120, align 4
  %121 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 %100, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = icmp ult i32 %119, %122
  %124 = select i1 %123, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ptr, ...) @musb_dbg(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %105, i32 noundef %118, i32 noundef %116, i32 noundef %119, i32 noundef %122, ptr noundef nonnull %124) #7
  %125 = getelementptr inbounds %struct.dma_channel, ptr %105, i32 0, i32 3
  store i32 1, ptr %125, align 4
  %126 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 %100, i32 7
  %127 = load i8, ptr %126, align 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %160, label %129

129:                                              ; preds = %114
  %130 = getelementptr inbounds %struct.dma_channel, ptr %105, i32 0, i32 4
  %131 = load i8, ptr %130, align 4, !range !8
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = load i32, ptr %120, align 4
  %135 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 %100, i32 4
  %136 = load i16, ptr %135, align 4
  %137 = zext i16 %136 to i32
  %138 = urem i32 %134, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %133, %129
  %141 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 %100, i32 6
  %142 = load i8, ptr %141, align 1
  %143 = load ptr, ptr %97, align 8
  %144 = tail call i32 %143(i8 noundef zeroext %142, i16 noundef zeroext 2) #7
  %145 = load ptr, ptr %98, align 4
  tail call void %145(ptr noundef %6, i8 noundef zeroext %142) #7
  %146 = load ptr, ptr @musb_readw, align 4
  %147 = tail call zeroext i16 %146(ptr noundef %6, i32 noundef %144) #7
  %148 = load i8, ptr %130, align 4, !range !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %140
  %151 = and i16 %147, 28671
  %152 = load ptr, ptr @musb_writew, align 4
  tail call void %152(ptr noundef %6, i32 noundef %144, i16 noundef zeroext %151) #7
  %153 = and i16 %147, 27647
  %154 = or i16 %153, 4096
  br label %155

155:                                              ; preds = %150, %140
  %156 = phi i16 [ %154, %150 ], [ %147, %140 ]
  %157 = or i16 %156, 1
  %158 = load ptr, ptr @musb_writew, align 4
  tail call void %158(ptr noundef %6, i32 noundef %144, i16 noundef zeroext %157) #7
  %159 = load i8, ptr %126, align 4
  br label %160

160:                                              ; preds = %155, %133, %114
  %161 = phi i8 [ %159, %155 ], [ %127, %133 ], [ 0, %114 ]
  %162 = getelementptr %struct.musb_dma_controller, ptr %1, i32 0, i32 1, i32 %100, i32 6
  %163 = load i8, ptr %162, align 1
  tail call void @musb_dma_completion(ptr noundef %4, i8 noundef zeroext %163, i8 noundef zeroext %161) #7
  br label %164

164:                                              ; preds = %160, %112, %99
  %165 = add nuw nsw i32 %100, 1
  %166 = icmp eq i32 %165, 8
  br i1 %166, label %167, label %99

167:                                              ; preds = %164, %92
  %168 = phi i32 [ 0, %92 ], [ 1, %164 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %7) #7
  ret i32 %168
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @musb_readl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_dma_completion(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musbhs_dma_controller_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.musb_dma_controller, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %214, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.musb_dma_controller, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8) #8
  %10 = load i8, ptr %2, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %5
  %15 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 0
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.musb_dma_channel, ptr %16, i32 0, i32 2
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.musb_dma_channel, ptr %16, i32 0, i32 3
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.musb_dma_channel, ptr %16, i32 0, i32 5
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = getelementptr inbounds %struct.musb_dma_channel, ptr %16, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.musb_dma_controller, ptr %25, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = trunc i32 %23 to i8
  %29 = xor i8 %28, -1
  %30 = and i8 %27, %29
  store i8 %30, ptr %26, align 1
  %31 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 3
  store i32 0, ptr %31, align 4
  %32 = load i8, ptr %2, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %214, label %34

34:                                               ; preds = %14
  %35 = zext i8 %32 to i32
  br label %36

36:                                               ; preds = %34, %5
  %37 = phi i32 [ %35, %34 ], [ %11, %5 ]
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 2
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.musb_dma_channel, ptr %42, i32 0, i32 2
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.musb_dma_channel, ptr %42, i32 0, i32 3
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.musb_dma_channel, ptr %42, i32 0, i32 5
  %47 = load i8, ptr %46, align 2
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 1, %48
  %50 = getelementptr inbounds %struct.musb_dma_channel, ptr %42, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.musb_dma_controller, ptr %51, i32 0, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = trunc i32 %49 to i8
  %55 = xor i8 %54, -1
  %56 = and i8 %53, %55
  store i8 %56, ptr %52, align 1
  %57 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 1, i32 0, i32 3
  store i32 0, ptr %57, align 4
  %58 = load i8, ptr %2, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %214, label %60

60:                                               ; preds = %40
  %61 = zext i8 %58 to i32
  br label %62

62:                                               ; preds = %60, %36
  %63 = phi i32 [ %61, %60 ], [ %37, %36 ]
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 2
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.musb_dma_channel, ptr %68, i32 0, i32 2
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.musb_dma_channel, ptr %68, i32 0, i32 3
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.musb_dma_channel, ptr %68, i32 0, i32 5
  %73 = load i8, ptr %72, align 2
  %74 = zext i8 %73 to i32
  %75 = shl nuw i32 1, %74
  %76 = getelementptr inbounds %struct.musb_dma_channel, ptr %68, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.musb_dma_controller, ptr %77, i32 0, i32 5
  %79 = load i8, ptr %78, align 1
  %80 = trunc i32 %75 to i8
  %81 = xor i8 %80, -1
  %82 = and i8 %79, %81
  store i8 %82, ptr %78, align 1
  %83 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 2, i32 0, i32 3
  store i32 0, ptr %83, align 4
  %84 = load i8, ptr %2, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %214, label %86

86:                                               ; preds = %66
  %87 = zext i8 %84 to i32
  br label %88

88:                                               ; preds = %86, %62
  %89 = phi i32 [ %87, %86 ], [ %63, %62 ]
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %88
  %93 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 2
  store i32 0, ptr %95, align 4
  %96 = getelementptr inbounds %struct.musb_dma_channel, ptr %94, i32 0, i32 2
  store i32 0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.musb_dma_channel, ptr %94, i32 0, i32 3
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.musb_dma_channel, ptr %94, i32 0, i32 5
  %99 = load i8, ptr %98, align 2
  %100 = zext i8 %99 to i32
  %101 = shl nuw i32 1, %100
  %102 = getelementptr inbounds %struct.musb_dma_channel, ptr %94, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.musb_dma_controller, ptr %103, i32 0, i32 5
  %105 = load i8, ptr %104, align 1
  %106 = trunc i32 %101 to i8
  %107 = xor i8 %106, -1
  %108 = and i8 %105, %107
  store i8 %108, ptr %104, align 1
  %109 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 3, i32 0, i32 3
  store i32 0, ptr %109, align 4
  %110 = load i8, ptr %2, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %214, label %112

112:                                              ; preds = %92
  %113 = zext i8 %110 to i32
  br label %114

114:                                              ; preds = %112, %88
  %115 = phi i32 [ %113, %112 ], [ %89, %88 ]
  %116 = and i32 %115, 16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %114
  %119 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 4
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 4, i32 0, i32 2
  store i32 0, ptr %121, align 4
  %122 = getelementptr inbounds %struct.musb_dma_channel, ptr %120, i32 0, i32 2
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.musb_dma_channel, ptr %120, i32 0, i32 3
  store i32 0, ptr %123, align 4
  %124 = getelementptr inbounds %struct.musb_dma_channel, ptr %120, i32 0, i32 5
  %125 = load i8, ptr %124, align 2
  %126 = zext i8 %125 to i32
  %127 = shl nuw i32 1, %126
  %128 = getelementptr inbounds %struct.musb_dma_channel, ptr %120, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.musb_dma_controller, ptr %129, i32 0, i32 5
  %131 = load i8, ptr %130, align 1
  %132 = trunc i32 %127 to i8
  %133 = xor i8 %132, -1
  %134 = and i8 %131, %133
  store i8 %134, ptr %130, align 1
  %135 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 4, i32 0, i32 3
  store i32 0, ptr %135, align 4
  %136 = load i8, ptr %2, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %214, label %138

138:                                              ; preds = %118
  %139 = zext i8 %136 to i32
  br label %140

140:                                              ; preds = %138, %114
  %141 = phi i32 [ %139, %138 ], [ %115, %114 ]
  %142 = and i32 %141, 32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %166, label %144

144:                                              ; preds = %140
  %145 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 5
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 5, i32 0, i32 2
  store i32 0, ptr %147, align 4
  %148 = getelementptr inbounds %struct.musb_dma_channel, ptr %146, i32 0, i32 2
  store i32 0, ptr %148, align 4
  %149 = getelementptr inbounds %struct.musb_dma_channel, ptr %146, i32 0, i32 3
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.musb_dma_channel, ptr %146, i32 0, i32 5
  %151 = load i8, ptr %150, align 2
  %152 = zext i8 %151 to i32
  %153 = shl nuw i32 1, %152
  %154 = getelementptr inbounds %struct.musb_dma_channel, ptr %146, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.musb_dma_controller, ptr %155, i32 0, i32 5
  %157 = load i8, ptr %156, align 1
  %158 = trunc i32 %153 to i8
  %159 = xor i8 %158, -1
  %160 = and i8 %157, %159
  store i8 %160, ptr %156, align 1
  %161 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 5, i32 0, i32 3
  store i32 0, ptr %161, align 4
  %162 = load i8, ptr %2, align 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %214, label %164

164:                                              ; preds = %144
  %165 = zext i8 %162 to i32
  br label %166

166:                                              ; preds = %164, %140
  %167 = phi i32 [ %165, %164 ], [ %141, %140 ]
  %168 = and i32 %167, 64
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %192, label %170

170:                                              ; preds = %166
  %171 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 6
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 6, i32 0, i32 2
  store i32 0, ptr %173, align 4
  %174 = getelementptr inbounds %struct.musb_dma_channel, ptr %172, i32 0, i32 2
  store i32 0, ptr %174, align 4
  %175 = getelementptr inbounds %struct.musb_dma_channel, ptr %172, i32 0, i32 3
  store i32 0, ptr %175, align 4
  %176 = getelementptr inbounds %struct.musb_dma_channel, ptr %172, i32 0, i32 5
  %177 = load i8, ptr %176, align 2
  %178 = zext i8 %177 to i32
  %179 = shl nuw i32 1, %178
  %180 = getelementptr inbounds %struct.musb_dma_channel, ptr %172, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.musb_dma_controller, ptr %181, i32 0, i32 5
  %183 = load i8, ptr %182, align 1
  %184 = trunc i32 %179 to i8
  %185 = xor i8 %184, -1
  %186 = and i8 %183, %185
  store i8 %186, ptr %182, align 1
  %187 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 6, i32 0, i32 3
  store i32 0, ptr %187, align 4
  %188 = load i8, ptr %2, align 1
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %214, label %190

190:                                              ; preds = %170
  %191 = zext i8 %188 to i32
  br label %192

192:                                              ; preds = %190, %166
  %193 = phi i32 [ %191, %190 ], [ %167, %166 ]
  %194 = and i32 %193, 128
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %214, label %196

196:                                              ; preds = %192
  %197 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 7
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 7, i32 0, i32 2
  store i32 0, ptr %199, align 4
  %200 = getelementptr inbounds %struct.musb_dma_channel, ptr %198, i32 0, i32 2
  store i32 0, ptr %200, align 4
  %201 = getelementptr inbounds %struct.musb_dma_channel, ptr %198, i32 0, i32 3
  store i32 0, ptr %201, align 4
  %202 = getelementptr inbounds %struct.musb_dma_channel, ptr %198, i32 0, i32 5
  %203 = load i8, ptr %202, align 2
  %204 = zext i8 %203 to i32
  %205 = shl nuw i32 1, %204
  %206 = getelementptr inbounds %struct.musb_dma_channel, ptr %198, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.musb_dma_controller, ptr %207, i32 0, i32 5
  %209 = load i8, ptr %208, align 1
  %210 = trunc i32 %205 to i8
  %211 = xor i8 %210, -1
  %212 = and i8 %209, %211
  store i8 %212, ptr %208, align 1
  %213 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 7, i32 0, i32 3
  store i32 0, ptr %213, align 4
  br label %214

214:                                              ; preds = %196, %192, %170, %144, %118, %92, %66, %40, %14, %1
  %215 = getelementptr inbounds %struct.musb_dma_controller, ptr %0, i32 0, i32 6
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = tail call ptr @free_irq(i32 noundef %216, ptr noundef %0) #7
  br label %220

220:                                              ; preds = %218, %214
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @musbhs_dma_controller_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.musb, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -16
  %6 = tail call i32 @platform_get_irq_byname(ptr noundef %5, ptr noundef nonnull @.str.5) #7
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #8
  br label %35

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 364) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.musb_dma_controller, ptr %11, i32 0, i32 4
  store i8 8, ptr %14, align 4
  %15 = getelementptr inbounds %struct.musb_dma_controller, ptr %11, i32 0, i32 2
  store ptr %0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.musb_dma_controller, ptr %11, i32 0, i32 3
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.dma_controller, ptr %11, i32 0, i32 1
  store ptr @dma_channel_allocate, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dma_controller, ptr %11, i32 0, i32 2
  store ptr @dma_channel_release, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dma_controller, ptr %11, i32 0, i32 3
  store ptr @dma_channel_program, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dma_controller, ptr %11, i32 0, i32 4
  store ptr @dma_channel_abort, ptr %20, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load ptr, ptr %21, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = phi ptr [ %26, %25 ], [ %23, %13 ]
  %29 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @dma_controller_irq, ptr noundef null, i32 noundef 0, ptr noundef %28, ptr noundef nonnull %11) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %6) #8
  %32 = load ptr, ptr @musb_dma_controller_destroy, align 4
  tail call void %32(ptr noundef nonnull %11) #7
  br label %35

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.musb_dma_controller, ptr %11, i32 0, i32 6
  store i32 %6, ptr %34, align 8
  br label %35

35:                                               ; preds = %33, %31, %9, %8
  %36 = phi ptr [ null, %8 ], [ null, %31 ], [ %11, %33 ], [ null, %9 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @musbhs_dma_controller_create_noirq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 364) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.musb_dma_controller, ptr %4, i32 0, i32 4
  store i8 8, ptr %7, align 4
  %8 = getelementptr inbounds %struct.musb_dma_controller, ptr %4, i32 0, i32 2
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.musb_dma_controller, ptr %4, i32 0, i32 3
  store ptr %1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dma_controller, ptr %4, i32 0, i32 1
  store ptr @dma_channel_allocate, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_controller, ptr %4, i32 0, i32 2
  store ptr @dma_channel_release, ptr %11, align 8
  %12 = getelementptr inbounds %struct.dma_controller, ptr %4, i32 0, i32 3
  store ptr @dma_channel_program, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_controller, ptr %4, i32 0, i32 4
  store ptr @dma_channel_abort, ptr %13, align 8
  br label %14

14:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dma_channel_release(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 5
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.musb_dma_controller, ptr %11, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = trunc i32 %9 to i8
  %15 = xor i8 %14, -1
  %16 = and i8 %13, %15
  store i8 %16, ptr %12, align 1
  %17 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  store i32 0, ptr %17, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dma_channel_allocate(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #5 {
  %4 = getelementptr inbounds %struct.musb_dma_controller, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %45, %42, %39, %36, %33, %30, %27, %3
  %10 = phi i32 [ 0, %3 ], [ 1, %27 ], [ 2, %30 ], [ 3, %33 ], [ 4, %36 ], [ 5, %39 ], [ 6, %42 ], [ 7, %45 ]
  %11 = phi i8 [ 1, %3 ], [ 2, %27 ], [ 4, %30 ], [ 8, %33 ], [ 16, %36 ], [ 32, %39 ], [ 64, %42 ], [ -128, %45 ]
  %12 = trunc i32 %10 to i8
  %13 = or i8 %5, %11
  store i8 %13, ptr %4, align 1
  %14 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 %10
  %15 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 %10, i32 1
  store ptr %0, ptr %15, align 4
  %16 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 %10, i32 5
  store i8 %12, ptr %16, align 2
  %17 = getelementptr inbounds %struct.musb_hw_ep, ptr %1, i32 0, i32 3
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 %10, i32 6
  store i8 %18, ptr %19, align 1
  %20 = getelementptr %struct.musb_dma_controller, ptr %0, i32 0, i32 1, i32 %10, i32 7
  store i8 %2, ptr %20, align 4
  store ptr %14, ptr %14, align 4
  %21 = getelementptr inbounds %struct.dma_channel, ptr %14, i32 0, i32 3
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dma_channel, ptr %14, i32 0, i32 1
  store i32 1048576, ptr %22, align 4
  %23 = icmp ne i8 %2, 0
  %24 = getelementptr inbounds %struct.dma_channel, ptr %14, i32 0, i32 4
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_channel, ptr %14, i32 0, i32 2
  store i32 0, ptr %26, align 4
  br label %48

27:                                               ; preds = %3
  %28 = and i32 %6, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %9, label %30

30:                                               ; preds = %27
  %31 = and i32 %6, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %9, label %33

33:                                               ; preds = %30
  %34 = and i32 %6, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %9, label %36

36:                                               ; preds = %33
  %37 = and i32 %6, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %9, label %39

39:                                               ; preds = %36
  %40 = and i32 %6, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %9, label %42

42:                                               ; preds = %39
  %43 = and i32 %6, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %9, label %45

45:                                               ; preds = %42
  %46 = and i32 %6, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %9, label %48

48:                                               ; preds = %45, %9
  %49 = phi ptr [ %14, %9 ], [ null, %45 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_channel_program(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %3, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.musb_dma_channel, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.musb_dma_controller, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.musb_dma_channel, ptr %8, i32 0, i32 6
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.musb_dma_channel, ptr %8, i32 0, i32 7
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.11, ptr @.str.10
  %20 = zext i16 %1 to i32
  %21 = zext i8 %2 to i32
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %12, ptr noundef nonnull @.str.9, i32 noundef %15, ptr noundef nonnull %19, i32 noundef %20, ptr noundef nonnull %7, i32 noundef %4, i32 noundef %21) #7
  %22 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %25 [
    i32 2, label %24
    i32 0, label %24
  ]

24:                                               ; preds = %5, %5
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/musb/musbhsdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 195, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.musb, ptr %12, i32 0, i32 10
  %27 = load i16, ptr %26, align 8
  %28 = icmp ult i16 %27, 1824
  %29 = load i32, ptr %7, align 4
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %28, i1 true, i1 %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.musb_dma_channel, ptr %8, i32 0, i32 2
  store i32 %29, ptr %35, align 4
  %36 = getelementptr inbounds %struct.musb_dma_channel, ptr %8, i32 0, i32 3
  store i32 %4, ptr %36, align 4
  %37 = getelementptr inbounds %struct.musb_dma_channel, ptr %8, i32 0, i32 4
  store i16 %1, ptr %37, align 4
  store i32 2, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %29, ptr %6, align 4
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.musb_dma_channel, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.musb_dma_controller, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.musb_dma_controller, ptr %40, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.musb_dma_channel, ptr %38, i32 0, i32 5
  %46 = load i8, ptr %45, align 2
  call void (ptr, ptr, ...) @musb_dbg(ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef %0, i32 noundef %20, ptr noundef nonnull %6, i32 noundef %4, i32 noundef %21) #7
  %47 = icmp eq i8 %2, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = icmp ugt i32 %20, %4
  br i1 %49, label %50, label %51, !prof !10

50:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/musb/musbhsdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 159, 0\0A.popsection", ""() #7, !srcloc !11
  unreachable

51:                                               ; preds = %48, %33
  %52 = phi i16 [ 1549, %48 ], [ 1545, %33 ]
  %53 = getelementptr inbounds %struct.musb_dma_channel, ptr %38, i32 0, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i16
  %56 = shl nuw nsw i16 %55, 4
  %57 = getelementptr inbounds %struct.musb_dma_channel, ptr %38, i32 0, i32 7
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i16 0, i16 2
  %61 = or i16 %60, %56
  %62 = or i16 %52, %61
  %63 = zext i8 %46 to i32
  %64 = shl nuw nsw i32 %63, 4
  %65 = add nuw nsw i32 %64, 520
  %66 = load i32, ptr %6, align 4
  call void @musb_writel(ptr noundef %44, i32 noundef %65, i32 noundef %66) #7
  %67 = add nuw nsw i32 %64, 524
  call void @musb_writel(ptr noundef %44, i32 noundef %67, i32 noundef %4) #7
  %68 = load ptr, ptr @musb_writew, align 4
  %69 = add nuw nsw i32 %64, 516
  call void %68(ptr noundef %44, i32 noundef %69, i16 noundef zeroext %62) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %70

70:                                               ; preds = %51, %25
  %71 = phi i32 [ 1, %51 ], [ 0, %25 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_channel_abort(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.musb_dma_controller, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 5
  %8 = load i8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.dma_channel, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.musb_dma_controller, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 7
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.musb, ptr %14, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.musb_dma_channel, ptr %2, i32 0, i32 6
  %21 = load i8, ptr %20, align 1
  br i1 %17, label %30, label %22

22:                                               ; preds = %12
  %23 = tail call i32 %19(i8 noundef zeroext %21, i16 noundef zeroext 2) #7
  %24 = load ptr, ptr @musb_readw, align 4
  %25 = tail call zeroext i16 %24(ptr noundef %6, i32 noundef %23) #7
  %26 = and i16 %25, 28671
  %27 = load ptr, ptr @musb_writew, align 4
  tail call void %27(ptr noundef %6, i32 noundef %23, i16 noundef zeroext %26) #7
  %28 = and i16 %25, 27647
  %29 = load ptr, ptr @musb_writew, align 4
  tail call void %29(ptr noundef %6, i32 noundef %23, i16 noundef zeroext %28) #7
  br label %36

30:                                               ; preds = %12
  %31 = tail call i32 %19(i8 noundef zeroext %21, i16 noundef zeroext 6) #7
  %32 = load ptr, ptr @musb_readw, align 4
  %33 = tail call zeroext i16 %32(ptr noundef %6, i32 noundef %31) #7
  %34 = and i16 %33, 22527
  %35 = load ptr, ptr @musb_writew, align 4
  tail call void %35(ptr noundef %6, i32 noundef %31, i16 noundef zeroext %34) #7
  br label %36

36:                                               ; preds = %30, %22
  %37 = load ptr, ptr @musb_writew, align 4
  %38 = zext i8 %8 to i32
  %39 = shl nuw nsw i32 %38, 4
  %40 = add nuw nsw i32 %39, 516
  tail call void %37(ptr noundef %6, i32 noundef %40, i16 noundef zeroext 0) #7
  %41 = add nuw nsw i32 %39, 520
  tail call void @musb_writel(ptr noundef %6, i32 noundef %41, i32 noundef 0) #7
  %42 = add nuw nsw i32 %39, 524
  tail call void @musb_writel(ptr noundef %6, i32 noundef %42, i32 noundef 0) #7
  store i32 1, ptr %9, align 4
  br label %43

43:                                               ; preds = %36, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @musb_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2153907332, i64 2153907825, i64 2153907369, i64 2153907425, i64 2153907459, i64 2153907483, i64 2153907524, i64 2153907545, i64 2153907573, i64 2153907607}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153905681, i64 2153906174, i64 2153905718, i64 2153905774, i64 2153905808, i64 2153905832, i64 2153905873, i64 2153905894, i64 2153905922, i64 2153905956}
