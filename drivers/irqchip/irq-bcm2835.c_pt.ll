; ModuleID = '/llk/IR/drivers/irqchip/irq-bcm2835.c_pt.bc'
source_filename = "../drivers/irqchip/irq-bcm2835.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.armctrl_ic = type { ptr, [3 x ptr], [3 x ptr], [3 x ptr], ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_bcm2835_armctrl_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-armctrl-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_armctrl_of_init }, section "__irqchip_of_table", align 4
@__of_table_bcm2836_armctrl_ic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2836-armctrl-ic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2836_armctrl_of_init }, section "__irqchip_of_table", align 4
@.str = private unnamed_addr constant [34 x i8] c"%pOF: unable to map IC registers\0A\00", align 1
@armctrl_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @armctrl_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@intc = internal unnamed_addr global %struct.armctrl_ic zeroinitializer, section ".data..read_mostly", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%pOF: unable to create IRQ domain\0A\00", align 1
@reg_pending = internal unnamed_addr constant [3 x i32] [i32 0, i32 4, i32 8], section ".init.rodata", align 4
@reg_enable = internal unnamed_addr constant [3 x i32] [i32 24, i32 16, i32 20], section ".init.rodata", align 4
@reg_disable = internal unnamed_addr constant [3 x i32] [i32 36, i32 28, i32 32], section ".init.rodata", align 4
@bank_irqs = internal unnamed_addr constant [3 x i32] [i32 8, i32 32, i32 32], section ".init.rodata", align 4
@armctrl_chip = internal global %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armctrl_mask_irq, ptr null, ptr @armctrl_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"\013[Firmware Bug]: Bootloader left irq enabled: bank %d irq %*pbl\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013[Firmware Bug]: Bootloader left fiq enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%pOF: unable to get parent interrupt.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"drivers/irqchip/irq-bcm2835.c\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ARMCTRL-level\00", align 1
@shortcuts = internal unnamed_addr constant [11 x i32] [i32 7, i32 9, i32 10, i32 18, i32 19, i32 21, i32 22, i32 23, i32 24, i32 25, i32 30], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_bcm2835_armctrl_ic, ptr @__of_table_bcm2836_armctrl_ic], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_armctrl_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  tail call fastcc void @armctrl_of_init(ptr noundef %0, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2836_armctrl_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  tail call fastcc void @armctrl_of_init(ptr noundef %0, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @armctrl_of_init(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %0) #9
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq ptr %0, null
  %9 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %10 = select i1 %8, ptr null, ptr %9
  %11 = tail call ptr @__irq_domain_add(ptr noundef %10, i32 noundef 96, i32 noundef 96, i32 noundef 0, ptr noundef nonnull @armctrl_ops, ptr noundef null) #8
  store ptr %11, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %0) #9
  unreachable

14:                                               ; preds = %49, %7
  %15 = phi i32 [ %50, %49 ], [ 0, %7 ]
  %16 = getelementptr [3 x i32], ptr @reg_pending, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %4, i32 %17
  %19 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 %15
  store ptr %18, ptr %19, align 4
  %20 = getelementptr [3 x i32], ptr @reg_enable, i32 0, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %4, i32 %21
  %23 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 2, i32 %15
  store ptr %22, ptr %23, align 4
  %24 = getelementptr [3 x i32], ptr @reg_disable, i32 0, i32 %15
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %4, i32 %25
  %27 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 3, i32 %15
  store ptr %26, ptr %27, align 4
  %28 = getelementptr [3 x i32], ptr @bank_irqs, i32 0, i32 %15
  %29 = load i32, ptr %28, align 4
  %30 = shl i32 %15, 5
  %31 = call i32 @llvm.smax.i32(i32 %29, i32 1)
  br label %32

32:                                               ; preds = %39, %14
  %33 = phi i32 [ 0, %14 ], [ %40, %39 ]
  %34 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %35 = or i32 %33, %30
  %36 = call i32 @irq_create_mapping_affinity(ptr noundef %34, i32 noundef %35, ptr noundef null) #8
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39, !prof !9

38:                                               ; preds = %32
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #8, !srcloc !10
  unreachable

39:                                               ; preds = %32
  call void @irq_set_chip_and_handler_name(i32 noundef %36, ptr noundef nonnull @armctrl_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #8
  call void @irq_modify_status(i32 noundef %36, i32 noundef 1024, i32 noundef 0) #8
  %40 = add nuw nsw i32 %33, 1
  %41 = icmp eq i32 %40, %31
  br i1 %41, label %42, label %32

42:                                               ; preds = %39
  %43 = load ptr, ptr %23, align 4
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !11
  store i32 %44, ptr %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %27, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #8, !srcloc !12
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef 32, ptr noundef nonnull %3) #10
  br label %49

49:                                               ; preds = %46, %42
  %50 = add nuw nsw i32 %15, 1
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %14

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %4, i32 12
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !11
  store i32 %54, ptr %3, align 4
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #8, !srcloc !12
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %59

59:                                               ; preds = %57, %52
  br i1 %1, label %60, label %65

60:                                               ; preds = %59
  %61 = call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, ptr noundef %0) #9
  unreachable

64:                                               ; preds = %60
  call void @__irq_set_handler(i32 noundef %61, ptr noundef nonnull @bcm2836_chained_handle_irq, i32 noundef 1, ptr noundef null) #8
  br label %67

65:                                               ; preds = %59
  %66 = call i32 @set_handle_irq(ptr noundef nonnull @bcm2835_handle_irq) #10
  br label %67

67:                                               ; preds = %65, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2836_chained_handle_irq(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !11
  %4 = and i32 %3, 2097151
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %46, %1
  %7 = phi i32 [ %51, %46 ], [ %3, %1 ]
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true) #8, !range !13
  br label %46

12:                                               ; preds = %6
  %13 = and i32 %7, 31744
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = and i32 %7, 2064384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = and i32 %7, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 1), align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !11
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #8, !range !13
  %25 = icmp eq i32 %23, 0
  %26 = or i32 %24, 32
  br i1 %25, label %54, label %46

27:                                               ; preds = %18
  %28 = and i32 %7, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 2), align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !11
  %33 = tail call i32 @llvm.cttz.i32(i32 %32, i1 true) #8, !range !13
  %34 = icmp eq i32 %32, 0
  %35 = or i32 %33, 64
  br i1 %34, label %54, label %46

36:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

37:                                               ; preds = %15, %12
  %38 = phi i32 [ %13, %12 ], [ %16, %15 ]
  %39 = phi i32 [ 32, %12 ], [ 64, %15 ]
  %40 = lshr exact i32 %38, 10
  %41 = tail call i32 @llvm.cttz.i32(i32 %40, i1 true) #8, !range !13
  %42 = getelementptr [11 x i32], ptr @shortcuts, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %39
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %54, label %46

46:                                               ; preds = %37, %30, %21, %10
  %47 = phi i32 [ %44, %37 ], [ %35, %30 ], [ %26, %21 ], [ %11, %10 ]
  %48 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %49 = tail call i32 @generic_handle_domain_irq(ptr noundef %48, i32 noundef %47) #8
  %50 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !11
  %52 = and i32 %51, 2097151
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %6

54:                                               ; preds = %46, %37, %30, %21, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_handle_irq(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !11
  %4 = and i32 %3, 2097151
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %46, %1
  %7 = phi i32 [ %51, %46 ], [ %3, %1 ]
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @llvm.cttz.i32(i32 %8, i1 true) #8, !range !13
  br label %46

12:                                               ; preds = %6
  %13 = and i32 %7, 31744
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  %16 = and i32 %7, 2064384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = and i32 %7, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 1), align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !11
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #8, !range !13
  %25 = icmp eq i32 %23, 0
  %26 = or i32 %24, 32
  br i1 %25, label %54, label %46

27:                                               ; preds = %18
  %28 = and i32 %7, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1, i32 2), align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !11
  %33 = tail call i32 @llvm.cttz.i32(i32 %32, i1 true) #8, !range !13
  %34 = icmp eq i32 %32, 0
  %35 = or i32 %33, 64
  br i1 %34, label %54, label %46

36:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 240, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

37:                                               ; preds = %15, %12
  %38 = phi i32 [ %13, %12 ], [ %16, %15 ]
  %39 = phi i32 [ 32, %12 ], [ 64, %15 ]
  %40 = lshr exact i32 %38, 10
  %41 = tail call i32 @llvm.cttz.i32(i32 %40, i1 true) #8, !range !13
  %42 = getelementptr [11 x i32], ptr @shortcuts, i32 0, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %39
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %54, label %46

46:                                               ; preds = %37, %30, %21, %10
  %47 = phi i32 [ %44, %37 ], [ %35, %30 ], [ %26, %21 ], [ %11, %10 ]
  %48 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 4), align 4
  %49 = tail call i32 @generic_handle_domain_irq(ptr noundef %48, i32 noundef %47) #8
  %50 = load ptr, ptr getelementptr inbounds (%struct.armctrl_ic, ptr @intc, i32 0, i32 1), align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !11
  %52 = and i32 %51, 2097151
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %6

54:                                               ; preds = %46, %37, %30, %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armctrl_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #5 {
  %7 = icmp eq i32 %3, 2
  br i1 %7, label %9, label %8, !prof !15

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef 9, ptr noundef null) #8
  br label %26

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  %11 = icmp ugt i32 %10, 2
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 115, i32 noundef 9, ptr noundef null) #8
  br label %26

13:                                               ; preds = %9
  %14 = getelementptr i32, ptr %2, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 31
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 118, i32 noundef 9, ptr noundef null) #8
  br label %26

18:                                               ; preds = %13
  %19 = icmp eq i32 %10, 0
  %20 = icmp ugt i32 %15, 7
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !16

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 121, i32 noundef 9, ptr noundef null) #8
  br label %26

23:                                               ; preds = %18
  %24 = shl nuw nsw i32 %10, 5
  %25 = or i32 %15, %24
  store i32 %25, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %26

26:                                               ; preds = %23, %22, %17, %12, %8
  %27 = phi i32 [ -22, %8 ], [ -22, %12 ], [ -22, %17 ], [ -22, %22 ], [ 0, %23 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armctrl_mask_irq(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  %6 = lshr i32 %3, 5
  %7 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 3, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armctrl_unmask_irq(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = shl nuw i32 1, %4
  %6 = lshr i32 %3, 5
  %7 = getelementptr %struct.armctrl_ic, ptr @intc, i32 0, i32 2, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #8, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152144919, i64 2152145413, i64 2152144956, i64 2152145012, i64 2152145046, i64 2152145070, i64 2152145111, i64 2152145132, i64 2152145160, i64 2152145194}
!11 = !{i64 366938}
!12 = !{i64 366520}
!13 = !{i32 0, i32 33}
!14 = !{i64 2152149418, i64 2152149912, i64 2152149455, i64 2152149511, i64 2152149545, i64 2152149569, i64 2152149610, i64 2152149631, i64 2152149659, i64 2152149693}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 4001}
