; ModuleID = '/llk/IR/drivers/irqchip/irq-armada-370-xp.c_pt.bc'
source_filename = "../drivers/irqchip/irq-armada-370-xp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.5, %union.anon.6, %union.anon.7 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }

@__of_table_armada_370_xp_mpic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mpic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_xp_mpic_of_init }, section "__irqchip_of_table", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@main_int_base = internal unnamed_addr global ptr null, align 4
@per_cpu_int_base = internal unnamed_addr global ptr null, align 4
@armada_370_xp_mpic_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @armada_370_xp_mpic_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@armada_370_xp_mpic_domain = internal unnamed_addr global ptr null, align 4
@parent_irq = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"irqchip/armada/ipi:starting\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"irqchip/armada/cascade:starting\00", align 1
@armada_370_xp_mpic_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @armada_370_xp_mpic_suspend, ptr @armada_370_xp_mpic_resume, ptr null }, align 4
@armada_370_xp_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_irq_mask, ptr @armada_370_xp_irq_mask, ptr @armada_370_xp_irq_unmask, ptr null, ptr @armada_xp_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"MPIC\00", align 1
@__cpu_online_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@irq_controller_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@msi_doorbell_addr = internal unnamed_addr global i32 0, align 4
@armada_370_xp_msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_msi_alloc, ptr @armada_370_xp_msi_free, ptr null, ptr null, ptr null }, align 4
@armada_370_xp_msi_inner_domain = internal unnamed_addr global ptr null, align 4
@armada_370_xp_msi_domain_info = internal global %struct.msi_domain_info { i32 15, ptr null, ptr @armada_370_xp_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@armada_370_xp_msi_domain = internal unnamed_addr global ptr null, align 4
@msi_used_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @msi_used_lock, i64 12), ptr getelementptr (i8, ptr @msi_used_lock, i64 12) } }, align 4
@msi_used = internal global [1 x i32] zeroinitializer, align 4
@armada_370_xp_msi_bottom_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"MPIC MSI\00", align 1
@armada_370_xp_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@ipi_domain = internal unnamed_addr global ptr null, align 4
@ipi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_ipi_alloc, ptr @armada_370_xp_ipi_free, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"drivers/irqchip/irq-armada-370-xp.c\00", align 1
@ipi_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_ipi_ack, ptr @armada_370_xp_ipi_mask, ptr null, ptr @armada_370_xp_ipi_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_370_xp_ipi_send_mask, ptr null, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"IPI\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@doorbell_mask_reg = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_armada_370_xp_mpic], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_370_xp_mpic_of_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 section ".init.text" {
  %3 = alloca %struct.resource, align 4
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %2
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 735, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

8:                                                ; preds = %2
  %9 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %4) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %8
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 736, 0\0A.popsection", ""() #11, !srcloc !11
  unreachable

12:                                               ; preds = %8
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 1, %13
  %17 = add i32 %16, %15
  %18 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %17, ptr noundef %19, i32 noundef 0) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !12

22:                                               ; preds = %12
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 740, 0\0A.popsection", ""() #11, !srcloc !13
  unreachable

23:                                               ; preds = %12
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 1, %24
  %28 = add i32 %27, %26
  %29 = load ptr, ptr %18, align 4
  %30 = call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %24, i32 noundef %28, ptr noundef %29, i32 noundef 0) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !12

32:                                               ; preds = %23
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 743, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

33:                                               ; preds = %23
  %34 = load i32, ptr %3, align 4
  %35 = load i32, ptr %14, align 4
  %36 = sub i32 1, %34
  %37 = add i32 %36, %35
  %38 = call ptr @ioremap(i32 noundef %34, i32 noundef %37) #11
  store ptr %38, ptr @main_int_base, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !12

40:                                               ; preds = %33
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 747, 0\0A.popsection", ""() #11, !srcloc !15
  unreachable

41:                                               ; preds = %33
  %42 = load i32, ptr %4, align 4
  %43 = load i32, ptr %25, align 4
  %44 = sub i32 1, %42
  %45 = add i32 %44, %43
  %46 = call ptr @ioremap(i32 noundef %42, i32 noundef %45) #11
  store ptr %46, ptr @per_cpu_int_base, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !12

48:                                               ; preds = %41
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

49:                                               ; preds = %41
  %50 = load ptr, ptr @main_int_base, align 4
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #11, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %52 = lshr i32 %51, 2
  %53 = and i32 %52, 1023
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %55, %49
  %56 = phi i32 [ %59, %55 ], [ 0, %49 ]
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  call void @arm_heavy_mb() #11
  %57 = load ptr, ptr @main_int_base, align 4
  %58 = getelementptr i8, ptr %57, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #11, !srcloc !20
  %59 = add nuw nsw i32 %56, 1
  %60 = icmp eq i32 %59, %53
  br i1 %60, label %61, label %55

61:                                               ; preds = %55, %49
  %62 = icmp eq ptr %0, null
  %63 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %64 = select i1 %62, ptr null, ptr %63
  %65 = call ptr @__irq_domain_add(ptr noundef %64, i32 noundef %53, i32 noundef %53, i32 noundef 0, ptr noundef nonnull @armada_370_xp_mpic_irq_ops, ptr noundef null) #11
  store ptr %65, ptr @armada_370_xp_mpic_domain, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68, !prof !12

67:                                               ; preds = %61
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-armada-370-xp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 762, 0\0A.popsection", ""() #11, !srcloc !21
  unreachable

68:                                               ; preds = %61
  call void @irq_domain_update_bus_token(ptr noundef nonnull %65, i32 noundef 1) #11
  %69 = tail call ptr @llvm.thread.pointer() #11
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  call void @arm_heavy_mb() #11
  %74 = shl nuw i32 1, %73
  %75 = load ptr, ptr @per_cpu_int_base, align 4
  %76 = getelementptr i8, ptr %75, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #11, !srcloc !20
  call fastcc void @armada_xp_mpic_smp_cpu_init()
  %77 = load i32, ptr %3, align 4
  %78 = add i32 %77, 4
  store i32 %78, ptr @msi_doorbell_addr, align 4
  %79 = call ptr @__irq_domain_add(ptr noundef null, i32 noundef 16, i32 noundef 16, i32 noundef 0, ptr noundef nonnull @armada_370_xp_msi_domain_ops, ptr noundef null) #11
  store ptr %79, ptr @armada_370_xp_msi_inner_domain, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %95, label %81

81:                                               ; preds = %68
  %82 = call ptr @pci_msi_create_irq_domain(ptr noundef %64, ptr noundef nonnull @armada_370_xp_msi_domain_info, ptr noundef nonnull %79) #11
  store ptr %82, ptr @armada_370_xp_msi_domain, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load ptr, ptr @armada_370_xp_msi_inner_domain, align 4
  call void @irq_domain_remove(ptr noundef %85) #11
  br label %95

86:                                               ; preds = %81
  %87 = load ptr, ptr @per_cpu_int_base, align 4
  %88 = getelementptr i8, ptr %87, i32 12
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !23
  %90 = or i32 %89, -65536
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !24
  call void @arm_heavy_mb() #11
  %91 = load ptr, ptr @per_cpu_int_base, align 4
  %92 = getelementptr i8, ptr %91, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #11, !srcloc !20
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  call void @arm_heavy_mb() #11
  %93 = load ptr, ptr @per_cpu_int_base, align 4
  %94 = getelementptr i8, ptr %93, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 1) #11, !srcloc !20
  br label %95

95:                                               ; preds = %86, %84, %68
  %96 = call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #11
  store i32 %96, ptr @parent_irq, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  call void @irq_set_default_host(ptr noundef %99) #11
  %100 = call i32 @set_handle_irq(ptr noundef nonnull @armada_370_xp_handle_irq) #12
  call fastcc void @armada_xp_ipi_init(ptr noundef %0) #13
  %101 = call i32 @__cpuhp_setup_state(i32 noundef 100, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef nonnull @armada_xp_mpic_starting_cpu, ptr noundef null, i1 noundef zeroext false) #11
  br label %105

102:                                              ; preds = %95
  %103 = call i32 @__cpuhp_setup_state(i32 noundef 100, ptr noundef nonnull @.str.1, i1 noundef zeroext false, ptr noundef nonnull @mpic_cascaded_starting_cpu, ptr noundef null, i1 noundef zeroext false) #11
  %104 = load i32, ptr @parent_irq, align 4
  call void @__irq_set_handler(i32 noundef %104, ptr noundef nonnull @armada_370_xp_mpic_handle_cascade_irq, i32 noundef 1, ptr noundef null) #11
  br label %105

105:                                              ; preds = %102, %98
  call void @register_syscore_ops(ptr noundef nonnull @armada_370_xp_mpic_syscore_ops) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @armada_xp_mpic_smp_cpu_init() unnamed_addr #4 {
  %1 = load ptr, ptr @main_int_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  %3 = lshr i32 %2, 2
  %4 = and i32 %3, 1023
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %0
  %7 = phi i32 [ %10, %6 ], [ 0, %0 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !27
  tail call void @arm_heavy_mb() #11
  %8 = load ptr, ptr @per_cpu_int_base, align 4
  %9 = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !20
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr @per_cpu_int_base, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #11, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !29
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr @per_cpu_int_base, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #11, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !30
  tail call void @arm_heavy_mb() #11
  %17 = load ptr, ptr @per_cpu_int_base, align 4
  %18 = getelementptr i8, ptr %17, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #11, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_default_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_handle_irq(ptr nocapture noundef readnone %0) #4 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @per_cpu_int_base, align 4
  %4 = getelementptr i8, ptr %3, i32 68
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !17
  %6 = and i32 %5, 1023
  %7 = icmp eq i32 %6, 1023
  br i1 %7, label %56, label %8

8:                                                ; preds = %50, %1
  %9 = phi i32 [ %54, %50 ], [ %6, %1 ]
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  %13 = call i32 @generic_handle_domain_irq(ptr noundef %12, i32 noundef %9) #11
  br label %50

14:                                               ; preds = %8
  switch i32 %9, label %50 [
    i32 1, label %15
    i32 0, label %35
  ]

15:                                               ; preds = %14
  %16 = load ptr, ptr @per_cpu_int_base, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !17
  %19 = and i32 %18, -65536
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !31
  call void @arm_heavy_mb() #11
  %20 = xor i32 %19, -1
  %21 = load ptr, ptr @per_cpu_int_base, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #11, !srcloc !20
  br label %23

23:                                               ; preds = %32, %15
  %24 = phi i32 [ 16, %15 ], [ %33, %32 ]
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = add nsw i32 %24, -16
  %30 = load ptr, ptr @armada_370_xp_msi_inner_domain, align 4
  %31 = call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %29) #11
  br label %32

32:                                               ; preds = %28, %23
  %33 = add nuw nsw i32 %24, 1
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %50, label %23

35:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %36 = load ptr, ptr @per_cpu_int_base, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !17
  %39 = and i32 %38, 255
  store i32 %39, ptr %2, align 4
  %40 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 8, i32 noundef 0) #11
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %49

42:                                               ; preds = %42, %35
  %43 = phi i32 [ %47, %42 ], [ %40, %35 ]
  %44 = load ptr, ptr @ipi_domain, align 4
  %45 = call i32 @generic_handle_domain_irq(ptr noundef %44, i32 noundef %43) #11
  %46 = add nsw i32 %43, 1
  %47 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 8, i32 noundef %46) #11
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %42, label %49

49:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %50

50:                                               ; preds = %49, %32, %14, %11
  %51 = load ptr, ptr @per_cpu_int_base, align 4
  %52 = getelementptr i8, ptr %51, i32 68
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !17
  %54 = and i32 %53, 1023
  %55 = icmp eq i32 %54, 1023
  br i1 %55, label %56, label %8

56:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @armada_xp_ipi_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %4 = select i1 %2, ptr null, ptr %3
  %5 = tail call ptr @__irq_domain_add(ptr noundef %4, i32 noundef 8, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @ipi_domain_ops, ptr noundef null) #11
  store ptr %5, ptr @ipi_domain, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 425, i32 noundef 9, ptr noundef null) #11
  br label %14

8:                                                ; preds = %1
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %5, i32 noundef 6) #11
  %9 = load ptr, ptr @ipi_domain, align 4
  %10 = tail call i32 @__irq_domain_alloc_irqs(ptr noundef %9, i32 noundef -1, i32 noundef 8, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 431, i32 noundef 9, ptr noundef null) #11
  br label %14

13:                                               ; preds = %8
  tail call void @set_smp_ipi_range(i32 noundef %10, i32 noundef 8) #11
  br label %14

14:                                               ; preds = %13, %12, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_mpic_starting_cpu(i32 noundef %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr @per_cpu_int_base, align 4
  %9 = getelementptr i8, ptr %8, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !20
  tail call fastcc void @armada_xp_mpic_smp_cpu_init()
  tail call fastcc void @armada_xp_mpic_reenable_percpu()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mpic_cascaded_starting_cpu(i32 noundef %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #11
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr @per_cpu_int_base, align 4
  %9 = getelementptr i8, ptr %8, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !20
  tail call fastcc void @armada_xp_mpic_reenable_percpu()
  %10 = load i32, ptr @parent_irq, align 4
  tail call void @enable_percpu_irq(i32 noundef %10, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_mpic_handle_cascade_irq(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %10(ptr noundef %13) #11
  br label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %16(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void %19(ptr noundef %17) #11
  br label %22

22:                                               ; preds = %21, %14, %12, %1
  %23 = load ptr, ptr @per_cpu_int_base, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !17
  store i32 %25, ptr %2, align 4
  %26 = tail call ptr @llvm.thread.pointer() #11
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #11
  %32 = icmp ult i32 %31, 32
  br i1 %32, label %33, label %73

33:                                               ; preds = %22
  %34 = shl i32 257, %30
  br label %35

35:                                               ; preds = %69, %33
  %36 = phi i32 [ %31, %33 ], [ %71, %69 ]
  %37 = load ptr, ptr @main_int_base, align 4
  %38 = shl nuw nsw i32 %36, 2
  %39 = add nuw nsw i32 %38, 256
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !17
  %42 = and i32 %41, %34
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %35
  %45 = icmp eq i32 %36, 1
  br i1 %45, label %46, label %66

46:                                               ; preds = %44
  %47 = load ptr, ptr @per_cpu_int_base, align 4
  %48 = getelementptr i8, ptr %47, i32 8
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #11, !srcloc !17
  %50 = and i32 %49, -65536
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !31
  call void @arm_heavy_mb() #11
  %51 = xor i32 %50, -1
  %52 = load ptr, ptr @per_cpu_int_base, align 4
  %53 = getelementptr i8, ptr %52, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !20
  br label %54

54:                                               ; preds = %63, %46
  %55 = phi i32 [ 16, %46 ], [ %64, %63 ]
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %50
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = add nsw i32 %55, -16
  %61 = load ptr, ptr @armada_370_xp_msi_inner_domain, align 4
  %62 = call i32 @generic_handle_domain_irq(ptr noundef %61, i32 noundef %60) #11
  br label %63

63:                                               ; preds = %59, %54
  %64 = add nuw nsw i32 %55, 1
  %65 = icmp eq i32 %64, 32
  br i1 %65, label %69, label %54

66:                                               ; preds = %44
  %67 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  %68 = call i32 @generic_handle_domain_irq(ptr noundef %67, i32 noundef %36) #11
  br label %69

69:                                               ; preds = %66, %63, %35
  %70 = add i32 %36, 1
  %71 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %70) #11
  %72 = icmp ult i32 %71, 32
  br i1 %72, label %35, label %73

73:                                               ; preds = %69, %22
  %74 = load ptr, ptr %5, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi ptr [ %78, %76 ], [ %74, %73 ]
  %81 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %80(ptr noundef %81) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_mpic_irq_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @irq_get_irq_data(i32 noundef %1) #11
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @main_int_base, align 4
  %10 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #11, !srcloc !20
  br label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr @per_cpu_int_base, align 4
  %13 = getelementptr i8, ptr %12, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %6) #11, !srcloc !20
  br label %14

14:                                               ; preds = %11, %8
  %15 = icmp ult i32 %2, 29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = load ptr, ptr @main_int_base, align 4
  %18 = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %2) #11, !srcloc !20
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 256) #11
  %19 = tail call i32 @irq_set_percpu_devid(i32 noundef %1) #11
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @armada_370_xp_irq_chip, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null) #11
  br label %28

20:                                               ; preds = %14
  %21 = load ptr, ptr @per_cpu_int_base, align 4
  %22 = getelementptr i8, ptr %21, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %2) #11, !srcloc !20
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 256) #11
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @armada_370_xp_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #11
  %23 = tail call ptr @irq_to_desc(i32 noundef %1) #11
  %24 = getelementptr inbounds %struct.irq_desc, ptr %23, i32 0, i32 1, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 16777216
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %20, %16
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 1024, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_irq_mask(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @main_int_base, align 4
  %7 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %3) #11, !srcloc !20
  br label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @per_cpu_int_base, align 4
  %10 = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %3) #11, !srcloc !20
  br label %11

11:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_percpu_devid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_percpu_devid_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_irq_unmask(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 29
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @main_int_base, align 4
  %7 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %3) #11, !srcloc !20
  br label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @per_cpu_int_base, align 4
  %10 = getelementptr i8, ptr %9, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %3) #11, !srcloc !20
  br label %11

11:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_xp_set_affinity(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #4 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = load i32, ptr @__cpu_online_mask, align 4
  %8 = and i32 %6, 65535
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.cttz.i32(i32 %9, i1 true) #11, !range !32
  %12 = select i1 %10, i32 16, i32 %11
  %13 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  tail call void @_raw_spin_lock(ptr noundef nonnull @irq_controller_lock) #11
  %16 = load ptr, ptr @main_int_base, align 4
  %17 = shl i32 %5, 2
  %18 = add i32 %17, 256
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !33
  %21 = and i32 %20, -16
  %22 = or i32 %21, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !34
  tail call void @arm_heavy_mb() #11
  %23 = load ptr, ptr @main_int_base, align 4
  %24 = getelementptr i8, ptr %23, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #11, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !35
  %25 = load i16, ptr @irq_controller_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @irq_controller_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  %27 = add nuw nsw i32 %12, 1
  %28 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %27
  %29 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.irq_common_data, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %28, align 4
  store i32 %32, ptr %31, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_msi_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #4 {
  tail call void @mutex_lock(ptr noundef nonnull @msi_used_lock) #11
  %5 = icmp ugt i32 %2, 1
  %6 = add i32 %2, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #11, !range !32
  %8 = sub nuw nsw i32 32, %7
  %9 = select i1 %5, i32 %8, i32 0
  %10 = tail call i32 @bitmap_find_free_region(ptr noundef nonnull @msi_used, i32 noundef 16, i32 noundef %9) #11
  tail call void @mutex_unlock(ptr noundef nonnull @msi_used_lock) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %21, %16 ]
  %18 = add i32 %17, %1
  %19 = add i32 %17, %10
  %20 = load ptr, ptr %15, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %18, i32 noundef %19, ptr noundef nonnull @armada_370_xp_msi_bottom_irq_chip, ptr noundef %20, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #11
  %21 = add nuw i32 %17, 1
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %12, %4
  %24 = phi i32 [ -28, %4 ], [ 0, %12 ], [ 0, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_msi_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #11
  tail call void @mutex_lock(ptr noundef nonnull @msi_used_lock) #11
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %2, 1
  %8 = add i32 %2, -1
  %9 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 false) #11, !range !32
  %10 = sub nuw nsw i32 32, %9
  %11 = select i1 %7, i32 %10, i32 0
  tail call void @bitmap_release_region(ptr noundef nonnull @msi_used, i32 noundef %6, i32 noundef %11) #11
  tail call void @mutex_unlock(ptr noundef nonnull @msi_used_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @armada_370_xp_msi_set_affinity(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i1 noundef zeroext %2) #8 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @armada_370_xp_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = load i32, ptr @msi_doorbell_addr, align 4
  store i32 %3, ptr %1, align 4
  %4 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 16
  %8 = or i32 %7, 3840
  %9 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_smp_ipi_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_ipi_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #4 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %10 = add i32 %9, %1
  %11 = tail call i32 @irq_set_percpu_devid(i32 noundef %10) #11
  %12 = load ptr, ptr %7, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %10, i32 noundef %9, ptr noundef nonnull @ipi_irqchip, ptr noundef %12, ptr noundef nonnull @handle_percpu_devid_irq, ptr noundef null, ptr noundef null) #11
  %13 = add nuw i32 %9, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @armada_370_xp_ipi_free(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_ack(ptr nocapture noundef readonly %0) #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = shl nuw i32 1, %3
  %5 = xor i32 %4, -1
  %6 = load ptr, ptr @per_cpu_int_base, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #11, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_mask(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr @per_cpu_int_base, align 4
  %3 = getelementptr i8, ptr %2, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !40
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = xor i32 %7, -1
  %9 = and i32 %4, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !41
  tail call void @arm_heavy_mb() #11
  %10 = load ptr, ptr @per_cpu_int_base, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_unmask(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr @per_cpu_int_base, align 4
  %3 = getelementptr i8, ptr %2, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = or i32 %7, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  tail call void @arm_heavy_mb() #11
  %9 = load ptr, ptr @per_cpu_int_base, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #11, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_ipi_send_mask(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #4 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #14
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %6, label %17

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %13, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %12, %6 ], [ 0, %2 ]
  %9 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %7
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %10
  %12 = or i32 %11, %8
  %13 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef %1) #14
  %14 = icmp ult i32 %13, %3
  br i1 %14, label %6, label %15

15:                                               ; preds = %6
  %16 = shl i32 %12, 8
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %15 ]
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !44
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !45
  tail call void @arm_heavy_mb() #11
  %19 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  %22 = load ptr, ptr @main_int_base, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @armada_xp_mpic_reenable_percpu() unnamed_addr #4 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %23, %0
  %3 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %4 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  store i32 0, ptr %1, align 4, !annotation !8
  %5 = call ptr @__irq_resolve_mapping(ptr noundef %4, i32 noundef %3, ptr noundef nonnull %1) #11
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = call ptr @irq_get_irq_data(i32 noundef %7) #11
  %12 = call zeroext i1 @irq_percpu_is_enabled(i32 noundef %7) #11
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.irq_data, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 29
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @main_int_base, align 4
  %19 = getelementptr i8, ptr %18, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #11, !srcloc !20
  br label %23

20:                                               ; preds = %13
  %21 = load ptr, ptr @per_cpu_int_base, align 4
  %22 = getelementptr i8, ptr %21, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %15) #11, !srcloc !20
  br label %23

23:                                               ; preds = %20, %17, %10, %2
  %24 = add nuw nsw i32 %3, 1
  %25 = icmp eq i32 %24, 28
  br i1 %25, label %26, label %2

26:                                               ; preds = %23
  call fastcc void @ipi_resume()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_percpu_is_enabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipi_resume() unnamed_addr #4 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %24, %0
  %3 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %4 = load ptr, ptr @ipi_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  store i32 0, ptr %1, align 4, !annotation !8
  %5 = call ptr @__irq_resolve_mapping(ptr noundef %4, i32 noundef %3, ptr noundef nonnull %1) #11
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr %1, align 4
  %8 = select i1 %6, i32 0, i32 %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = call zeroext i1 @irq_percpu_is_enabled(i32 noundef %8) #11
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = load ptr, ptr @ipi_domain, align 4
  %14 = call ptr @irq_domain_get_irq_data(ptr noundef %13, i32 noundef %8) #11
  %15 = load ptr, ptr @per_cpu_int_base, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !17
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !42
  %18 = getelementptr inbounds %struct.irq_data, ptr %14, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  %21 = or i32 %20, %17
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !43
  call void @arm_heavy_mb() #11
  %22 = load ptr, ptr @per_cpu_int_base, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !20
  br label %24

24:                                               ; preds = %12, %10, %2
  %25 = add nuw nsw i32 %3, 1
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %2

27:                                               ; preds = %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_mpic_suspend() #4 {
  %1 = load ptr, ptr @per_cpu_int_base, align 4
  %2 = getelementptr i8, ptr %1, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !46
  store i32 %3, ptr @doorbell_mask_reg, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_mpic_resume() #4 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @main_int_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !47
  %4 = lshr i32 %3, 2
  %5 = and i32 %4, 1023
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %50, %0
  %8 = phi i32 [ %51, %50 ], [ 0, %0 ]
  %9 = load ptr, ptr @armada_370_xp_mpic_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  store i32 0, ptr %1, align 4, !annotation !8
  %10 = call ptr @__irq_resolve_mapping(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %1) #11
  %11 = icmp eq ptr %10, null
  %12 = load i32, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %50, label %15

15:                                               ; preds = %7
  %16 = call ptr @irq_get_irq_data(i32 noundef %12) #11
  %17 = icmp ult i32 %8, 29
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @per_cpu_int_base, align 4
  %20 = getelementptr i8, ptr %19, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %8) #11, !srcloc !20
  %21 = getelementptr inbounds %struct.irq_data, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.irq_data, ptr %16, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 29
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @main_int_base, align 4
  %32 = getelementptr i8, ptr %31, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %28) #11, !srcloc !20
  br label %50

33:                                               ; preds = %26
  %34 = load ptr, ptr @per_cpu_int_base, align 4
  %35 = getelementptr i8, ptr %34, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %28) #11, !srcloc !20
  br label %50

36:                                               ; preds = %15
  %37 = load ptr, ptr @main_int_base, align 4
  %38 = getelementptr i8, ptr %37, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %8) #11, !srcloc !20
  %39 = call zeroext i1 @irq_percpu_is_enabled(i32 noundef %12) #11
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.irq_data, ptr %16, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 29
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @main_int_base, align 4
  %46 = getelementptr i8, ptr %45, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %42) #11, !srcloc !20
  br label %50

47:                                               ; preds = %40
  %48 = load ptr, ptr @per_cpu_int_base, align 4
  %49 = getelementptr i8, ptr %48, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %42) #11, !srcloc !20
  br label %50

50:                                               ; preds = %47, %44, %36, %33, %30, %18, %7
  %51 = add nuw nsw i32 %8, 1
  %52 = icmp eq i32 %51, %5
  br i1 %52, label %53, label %7

53:                                               ; preds = %50, %0
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !48
  call void @arm_heavy_mb() #11
  %54 = load i32, ptr @doorbell_mask_reg, align 4
  %55 = load ptr, ptr @per_cpu_int_base, align 4
  %56 = getelementptr i8, ptr %55, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #11, !srcloc !20
  %57 = load i32, ptr @doorbell_mask_reg, align 4
  %58 = and i32 %57, 255
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !49
  call void @arm_heavy_mb() #11
  %61 = load ptr, ptr @per_cpu_int_base, align 4
  %62 = getelementptr i8, ptr %61, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #11, !srcloc !20
  %63 = load i32, ptr @doorbell_mask_reg, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = phi i32 [ %63, %60 ], [ %57, %53 ]
  %66 = icmp ult i32 %65, 65536
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !50
  call void @arm_heavy_mb() #11
  %68 = load ptr, ptr @per_cpu_int_base, align 4
  %69 = getelementptr i8, ptr %68, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 1) #11, !srcloc !20
  br label %70

70:                                               ; preds = %67, %64
  call fastcc void @ipi_resume()
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152256627, i64 2152257127, i64 2152256664, i64 2152256720, i64 2152256754, i64 2152256778, i64 2152256819, i64 2152256840, i64 2152256868, i64 2152256902}
!11 = !{i64 2152257765, i64 2152258265, i64 2152257802, i64 2152257858, i64 2152257892, i64 2152257916, i64 2152257957, i64 2152257978, i64 2152258006, i64 2152258040}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2152259162, i64 2152259662, i64 2152259199, i64 2152259255, i64 2152259289, i64 2152259313, i64 2152259354, i64 2152259375, i64 2152259403, i64 2152259437}
!14 = !{i64 2152260577, i64 2152261077, i64 2152260614, i64 2152260670, i64 2152260704, i64 2152260728, i64 2152260769, i64 2152260790, i64 2152260818, i64 2152260852}
!15 = !{i64 2152261653, i64 2152262153, i64 2152261690, i64 2152261746, i64 2152261780, i64 2152261804, i64 2152261845, i64 2152261866, i64 2152261894, i64 2152261928}
!16 = !{i64 2152262735, i64 2152263235, i64 2152262772, i64 2152262828, i64 2152262862, i64 2152262886, i64 2152262927, i64 2152262948, i64 2152262976, i64 2152263010}
!17 = !{i64 2940441}
!18 = !{i64 2152263816}
!19 = !{i64 2152264011}
!20 = !{i64 2940023}
!21 = !{i64 2152264520, i64 2152265020, i64 2152264557, i64 2152264613, i64 2152264647, i64 2152264671, i64 2152264712, i64 2152264733, i64 2152264761, i64 2152264795}
!22 = !{i64 2152243125}
!23 = !{i64 2152242027}
!24 = !{i64 2152242238}
!25 = !{i64 2152242573}
!26 = !{i64 2152249018}
!27 = !{i64 2152249216}
!28 = !{i64 2152249547}
!29 = !{i64 2152249878}
!30 = !{i64 2152250209}
!31 = !{i64 2152251446}
!32 = !{i32 0, i32 33}
!33 = !{i64 2152248175}
!34 = !{i64 2152248403}
!35 = !{i64 2148946361}
!36 = !{i64 2148942185}
!37 = !{i64 2148942260, i64 2148942287, i64 2148942334, i64 2148942356, i64 2148942384, i64 2148942404}
!38 = !{i64 2148969364}
!39 = !{i64 2152245740}
!40 = !{i64 2152243647}
!41 = !{i64 2152243929}
!42 = !{i64 2152244431}
!43 = !{i64 2152244713}
!44 = !{i64 2152245040}
!45 = !{i64 2152245255}
!46 = !{i64 2152253947}
!47 = !{i64 2152254303}
!48 = !{i64 2152255185}
!49 = !{i64 2152255553}
!50 = !{i64 2152255895}
