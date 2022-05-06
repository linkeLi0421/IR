; ModuleID = '/llk/IR/drivers/base/regmap/regmap-irq.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_add_irq_chip_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_add_irq_chip_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_add_irq_chip_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_add_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_add_irq_chip\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_add_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_del_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_del_irq_chip\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_del_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_add_irq_chip_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_add_irq_chip_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_add_irq_chip_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_add_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_add_irq_chip\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_add_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_del_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_del_irq_chip\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_del_irq_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_irq_chip_get_base:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_irq_chip_get_base\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_irq_chip_get_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_irq_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_irq_get_virq\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_irq_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_irq_get_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_irq_get_domain\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_irq_get_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_irq_chip = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i16, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.regmap = type { %union.anon.62, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon.62 = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_irq_sub_irq_map = type { i32, ptr }
%struct.regmap_irq_chip_data = type { %struct.mutex, %struct.irq_chip, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate IRQs: %d\0A\00", align 1
@regmap_irq_chip = internal unnamed_addr constant %struct.irq_chip { ptr null, ptr null, ptr null, ptr null, ptr @regmap_irq_enable, ptr @regmap_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regmap_irq_set_type, ptr @regmap_irq_set_wake, ptr @regmap_irq_lock, ptr @regmap_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@regmap_add_irq_chip_fwnode.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&d->lock\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to set masks in 0x%x: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to read IRQ status: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Failed to ack 0x%x: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to get type defaults at 0x%x: %d\0A\00", align 1
@regmap_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @regmap_irq_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Failed to request IRQ %d for %s: %d\0A\00", align 1
@__kstrtab_regmap_add_irq_chip_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_add_irq_chip_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_add_irq_chip_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_add_irq_chip_fwnode to i32), ptr @__kstrtab_regmap_add_irq_chip_fwnode, ptr @__kstrtabns_regmap_add_irq_chip_fwnode }, section "___ksymtab_gpl+regmap_add_irq_chip_fwnode", align 4
@__kstrtab_regmap_add_irq_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_add_irq_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_add_irq_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_add_irq_chip to i32), ptr @__kstrtab_regmap_add_irq_chip, ptr @__kstrtabns_regmap_add_irq_chip }, section "___ksymtab_gpl+regmap_add_irq_chip", align 4
@__kstrtab_regmap_del_irq_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_del_irq_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_del_irq_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_del_irq_chip to i32), ptr @__kstrtab_regmap_del_irq_chip, ptr @__kstrtabns_regmap_del_irq_chip }, section "___ksymtab_gpl+regmap_del_irq_chip", align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"devm_regmap_irq_chip_release\00", align 1
@__kstrtab_devm_regmap_add_irq_chip_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_add_irq_chip_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_add_irq_chip_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_add_irq_chip_fwnode to i32), ptr @__kstrtab_devm_regmap_add_irq_chip_fwnode, ptr @__kstrtabns_devm_regmap_add_irq_chip_fwnode }, section "___ksymtab_gpl+devm_regmap_add_irq_chip_fwnode", align 4
@__kstrtab_devm_regmap_add_irq_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_add_irq_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_add_irq_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_add_irq_chip to i32), ptr @__kstrtab_devm_regmap_add_irq_chip, ptr @__kstrtabns_devm_regmap_add_irq_chip }, section "___ksymtab_gpl+devm_regmap_add_irq_chip", align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"drivers/base/regmap/regmap-irq.c\00", align 1
@__kstrtab_devm_regmap_del_irq_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_del_irq_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_del_irq_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_del_irq_chip to i32), ptr @__kstrtab_devm_regmap_del_irq_chip, ptr @__kstrtabns_devm_regmap_del_irq_chip }, section "___ksymtab_gpl+devm_regmap_del_irq_chip", align 4
@__kstrtab_regmap_irq_chip_get_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_irq_chip_get_base = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_irq_chip_get_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_irq_chip_get_base to i32), ptr @__kstrtab_regmap_irq_chip_get_base, ptr @__kstrtabns_regmap_irq_chip_get_base }, section "___ksymtab_gpl+regmap_irq_chip_get_base", align 4
@__kstrtab_regmap_irq_get_virq = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_irq_get_virq = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_irq_get_virq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_irq_get_virq to i32), ptr @__kstrtab_regmap_irq_get_virq, ptr @__kstrtabns_regmap_irq_get_virq }, section "___ksymtab_gpl+regmap_irq_get_virq", align 4
@__kstrtab_regmap_irq_get_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_irq_get_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_irq_get_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_irq_get_domain to i32), ptr @__kstrtab_regmap_irq_get_domain, ptr @__kstrtabns_regmap_irq_get_domain }, section "___ksymtab_gpl+regmap_irq_get_domain", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"IRQ sync failed to resume: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Failed to clear the interrupt status bits\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Failed to sync unmasks in %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Failed to sync masks in %x\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Failed to sync wakes in %x: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Failed to sync type in %x\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to write virt 0x%x: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"IRQ thread failed to resume: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Failed to read IRQ status %d\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_devm_regmap_add_irq_chip, ptr @__ksymtab_devm_regmap_add_irq_chip_fwnode, ptr @__ksymtab_devm_regmap_del_irq_chip, ptr @__ksymtab_regmap_add_irq_chip, ptr @__ksymtab_regmap_add_irq_chip_fwnode, ptr @__ksymtab_regmap_del_irq_chip, ptr @__ksymtab_regmap_irq_chip_get_base, ptr @__ksymtab_regmap_irq_get_domain, ptr @__ksymtab_regmap_irq_get_virq], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_add_irq_chip_fwnode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) #0 {
  %8 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %645, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 13
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1024
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = and i16 %13, 8
  %21 = icmp eq i16 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %645

23:                                               ; preds = %16, %11
  %24 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 45
  %31 = load i32, ptr %30, align 4
  br label %35

32:                                               ; preds = %35
  %33 = add nuw nsw i32 %36, 1
  %34 = icmp eq i32 %33, %25
  br i1 %34, label %47, label %35

35:                                               ; preds = %32, %27
  %36 = phi i32 [ 0, %27 ], [ %33, %32 ]
  %37 = getelementptr %struct.regmap_irq, ptr %29, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = freeze i32 %38
  %40 = freeze i32 %31
  %41 = udiv i32 %39, %40
  %42 = mul i32 %41, %40
  %43 = sub i32 %39, %42
  %44 = icmp eq i32 %43, 0
  %45 = icmp ult i32 %41, %9
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %32, label %645

47:                                               ; preds = %32, %23
  %48 = and i16 %13, 2048
  %49 = icmp ne i16 %48, 0
  %50 = icmp sgt i32 %9, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  br label %58

55:                                               ; preds = %58
  %56 = add nuw nsw i32 %59, 1
  %57 = icmp eq i32 %56, %9
  br i1 %57, label %63, label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ 0, %52 ], [ %56, %55 ]
  %60 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %54, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %55, label %645

63:                                               ; preds = %55, %47
  %64 = icmp eq i32 %4, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %63
  %66 = tail call i32 @__irq_alloc_descs(i32 noundef %4, i32 noundef 0, i32 noundef %25, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str, i32 noundef %66) #12
  br label %645

71:                                               ; preds = %65, %63
  %72 = phi i32 [ %66, %65 ], [ 0, %63 ]
  %73 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %74 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 228) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %645, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #11
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %83, label %85, !prof !8

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 9
  store ptr null, ptr %84, align 8
  br label %610

85:                                               ; preds = %80
  %86 = extractvalue { i32, i1 } %81, 0
  %87 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %86, i32 noundef 3520) #14
  %88 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 9
  store ptr %87, ptr %88, align 8
  %89 = icmp eq ptr %87, null
  br i1 %89, label %610, label %90

90:                                               ; preds = %85, %76
  %91 = load i32, ptr %8, align 4
  %92 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 4) #11
  %93 = extractvalue { i32, i1 } %92, 1
  br i1 %93, label %94, label %96, !prof !8

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 10
  store ptr null, ptr %95, align 4
  br label %610

96:                                               ; preds = %90
  %97 = extractvalue { i32, i1 } %92, 0
  %98 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %97, i32 noundef 3520) #14
  %99 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 10
  store ptr %98, ptr %99, align 4
  %100 = icmp eq ptr %98, null
  br i1 %100, label %610, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %8, align 4
  %103 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %102, i32 4) #11
  %104 = extractvalue { i32, i1 } %103, 1
  br i1 %104, label %105, label %107, !prof !8

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 11
  store ptr null, ptr %106, align 8
  br label %610

107:                                              ; preds = %101
  %108 = extractvalue { i32, i1 } %103, 0
  %109 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %108, i32 noundef 3520) #14
  %110 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 11
  store ptr %109, ptr %110, align 8
  %111 = icmp eq ptr %109, null
  br i1 %111, label %610, label %112

112:                                              ; preds = %107
  %113 = load i32, ptr %8, align 4
  %114 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %113, i32 4) #11
  %115 = extractvalue { i32, i1 } %114, 1
  br i1 %115, label %116, label %118, !prof !8

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 12
  store ptr null, ptr %117, align 4
  br label %610

118:                                              ; preds = %112
  %119 = extractvalue { i32, i1 } %114, 0
  %120 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %119, i32 noundef 3520) #14
  %121 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 12
  store ptr %120, ptr %121, align 4
  %122 = icmp eq ptr %120, null
  br i1 %122, label %610, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 9
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %8, align 4
  %129 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %128, i32 4) #11
  %130 = extractvalue { i32, i1 } %129, 1
  br i1 %130, label %131, label %133, !prof !8

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 13
  store ptr null, ptr %132, align 8
  br label %610

133:                                              ; preds = %127
  %134 = extractvalue { i32, i1 } %129, 0
  %135 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %134, i32 noundef 3520) #14
  %136 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 13
  store ptr %135, ptr %136, align 8
  %137 = icmp eq ptr %135, null
  br i1 %137, label %610, label %138

138:                                              ; preds = %133, %123
  %139 = load i16, ptr %12, align 4
  %140 = and i16 %139, 512
  %141 = icmp eq i16 %140, 0
  %142 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 17
  %143 = select i1 %141, ptr %142, ptr %8
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %138
  %147 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %144, i32 4) #11
  %148 = extractvalue { i32, i1 } %147, 1
  %149 = extractvalue { i32, i1 } %147, 0
  br i1 %148, label %150, label %152, !prof !8

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 15
  store ptr null, ptr %151, align 8
  br label %610

152:                                              ; preds = %146
  %153 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %149, i32 noundef 3520) #14
  %154 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 15
  store ptr %153, ptr %154, align 8
  %155 = icmp eq ptr %153, null
  br i1 %155, label %610, label %156

156:                                              ; preds = %152
  %157 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %149, i32 noundef 3520) #14
  %158 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 14
  store ptr %157, ptr %158, align 4
  %159 = icmp eq ptr %157, null
  br i1 %159, label %610, label %160

160:                                              ; preds = %156, %138
  %161 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 18
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %197, label %164

164:                                              ; preds = %160
  %165 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %162, i32 4) #11
  %166 = extractvalue { i32, i1 } %165, 1
  br i1 %166, label %167, label %169, !prof !8

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 16
  store ptr null, ptr %168, align 4
  br label %610

169:                                              ; preds = %164
  %170 = extractvalue { i32, i1 } %165, 0
  %171 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %170, i32 noundef 3520) #14
  %172 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 16
  store ptr %171, ptr %172, align 4
  %173 = icmp eq ptr %171, null
  br i1 %173, label %610, label %174

174:                                              ; preds = %169
  %175 = load i32, ptr %161, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %181, label %197

177:                                              ; preds = %189
  %178 = add nuw nsw i32 %182, 1
  %179 = load i32, ptr %161, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %177, %174
  %182 = phi i32 [ %178, %177 ], [ 0, %174 ]
  %183 = load i32, ptr %8, align 4
  %184 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %183, i32 4) #11
  %185 = extractvalue { i32, i1 } %184, 1
  br i1 %185, label %189, label %186, !prof !8

186:                                              ; preds = %181
  %187 = extractvalue { i32, i1 } %184, 0
  %188 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %187, i32 noundef 3520) #14
  br label %189

189:                                              ; preds = %186, %181
  %190 = phi ptr [ %188, %186 ], [ null, %181 ]
  %191 = load ptr, ptr %172, align 4
  %192 = getelementptr ptr, ptr %191, i32 %182
  store ptr %190, ptr %192, align 4
  %193 = load ptr, ptr %172, align 4
  %194 = getelementptr ptr, ptr %193, i32 %182
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %610, label %177

197:                                              ; preds = %177, %174, %160
  %198 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(136) %198, ptr noundef nonnull align 4 dereferenceable(136) @regmap_irq_chip, i32 136, i1 false)
  %199 = load ptr, ptr %5, align 4
  %200 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 1, i32 1
  store ptr %199, ptr %200, align 8
  %201 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 6
  store i32 %2, ptr %201, align 4
  %202 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 2
  store ptr %1, ptr %202, align 4
  %203 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 3
  store ptr %5, ptr %203, align 8
  %204 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 4
  store i32 %72, ptr %204, align 4
  %205 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 12
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 1, i32 %206
  %209 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 17
  store i32 %208, ptr %209, align 8
  %210 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 19
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %212, i32 1, i32 %211
  %214 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 18
  store i32 %213, ptr %214, align 4
  %215 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 63
  %216 = load i8, ptr %215, align 4, !range !9
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %197
  %219 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 45
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 1
  %222 = icmp eq i32 %208, 1
  %223 = select i1 %221, i1 %222, i1 false
  br i1 %223, label %224, label %237

224:                                              ; preds = %218
  %225 = load i32, ptr %8, align 4
  %226 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 7, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %225, i32 %227) #11
  %229 = extractvalue { i32, i1 } %228, 1
  br i1 %229, label %230, label %232, !prof !8

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 8
  store ptr null, ptr %231, align 4
  br label %610

232:                                              ; preds = %224
  %233 = extractvalue { i32, i1 } %228, 0
  %234 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %233, i32 noundef 3264) #14
  %235 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 8
  store ptr %234, ptr %235, align 4
  %236 = icmp eq ptr %234, null
  br i1 %236, label %610, label %237

237:                                              ; preds = %232, %218, %197
  tail call void @__mutex_init(ptr noundef nonnull %74, ptr noundef nonnull @.str.1, ptr noundef nonnull @regmap_add_irq_chip_fwnode.__key) #11
  %238 = load i32, ptr %24, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 15
  %242 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 45
  br label %249

243:                                              ; preds = %249, %237
  %244 = load i32, ptr %8, align 4
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %460

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 6
  %248 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 8
  br label %265

249:                                              ; preds = %249, %240
  %250 = phi i32 [ 0, %240 ], [ %262, %249 ]
  %251 = load ptr, ptr %241, align 4
  %252 = getelementptr %struct.regmap_irq, ptr %251, i32 %250
  %253 = getelementptr %struct.regmap_irq, ptr %251, i32 %250, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = load ptr, ptr %121, align 4
  %256 = load i32, ptr %252, align 4
  %257 = load i32, ptr %242, align 4
  %258 = udiv i32 %256, %257
  %259 = getelementptr i32, ptr %255, i32 %258
  %260 = load i32, ptr %259, align 4
  %261 = or i32 %260, %254
  store i32 %261, ptr %259, align 4
  %262 = add nuw nsw i32 %250, 1
  %263 = load i32, ptr %24, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %249, label %243

265:                                              ; preds = %456, %246
  %266 = phi i32 [ 0, %246 ], [ %457, %456 ]
  %267 = load ptr, ptr %121, align 4
  %268 = getelementptr i32, ptr %267, i32 %266
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr %110, align 8
  %271 = getelementptr i32, ptr %270, i32 %266
  store i32 %269, ptr %271, align 4
  %272 = load i32, ptr %247, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %456, label %274

274:                                              ; preds = %265
  %275 = load ptr, ptr %203, align 8
  %276 = getelementptr inbounds %struct.regmap_irq_chip, ptr %275, i32 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = load ptr, ptr %202, align 4
  %279 = getelementptr inbounds %struct.regmap_irq_chip, ptr %275, i32 0, i32 3
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %287, label %282

282:                                              ; preds = %274
  %283 = getelementptr inbounds %struct.regmap_irq_chip, ptr %275, i32 0, i32 13
  %284 = load i16, ptr %283, align 4
  %285 = and i16 %284, 2048
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %282, %274
  %288 = getelementptr inbounds %struct.regmap, ptr %278, i32 0, i32 45
  %289 = load i32, ptr %288, align 4
  %290 = mul i32 %289, %266
  %291 = load i32, ptr %209, align 8
  %292 = mul i32 %290, %291
  br label %297

293:                                              ; preds = %282
  %294 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %280, i32 %266, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = load i32, ptr %295, align 4
  br label %297

297:                                              ; preds = %293, %287
  %298 = phi i32 [ %296, %293 ], [ %292, %287 ]
  %299 = add i32 %298, %277
  %300 = load i16, ptr %12, align 4
  %301 = and i16 %300, 4
  %302 = icmp eq i16 %301, 0
  br i1 %302, label %313, label %303

303:                                              ; preds = %297
  %304 = load ptr, ptr %110, align 8
  %305 = getelementptr i32, ptr %304, i32 %266
  %306 = load i32, ptr %305, align 4
  %307 = xor i32 %306, -1
  %308 = getelementptr inbounds %struct.regmap_irq_chip, ptr %275, i32 0, i32 13
  %309 = load i16, ptr %308, align 4
  %310 = and i16 %309, 1
  %311 = icmp ne i16 %310, 0
  %312 = tail call i32 @regmap_update_bits_base(ptr noundef %278, i32 noundef %299, i32 noundef %306, i32 noundef %307, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %311) #11
  br label %336

313:                                              ; preds = %297
  %314 = getelementptr inbounds %struct.regmap_irq_chip, ptr %275, i32 0, i32 7
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %327, label %317

317:                                              ; preds = %313
  %318 = add i32 %315, %298
  %319 = load ptr, ptr %110, align 8
  %320 = getelementptr i32, ptr %319, i32 %266
  %321 = load i32, ptr %320, align 4
  %322 = getelementptr inbounds %struct.regmap_irq_chip, ptr %275, i32 0, i32 13
  %323 = load i16, ptr %322, align 4
  %324 = and i16 %323, 1
  %325 = icmp ne i16 %324, 0
  %326 = tail call i32 @regmap_update_bits_base(ptr noundef %278, i32 noundef %318, i32 noundef %321, i32 noundef %321, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %325) #11
  br label %336

327:                                              ; preds = %313
  %328 = load ptr, ptr %110, align 8
  %329 = getelementptr i32, ptr %328, i32 %266
  %330 = load i32, ptr %329, align 4
  %331 = getelementptr inbounds %struct.regmap_irq_chip, ptr %275, i32 0, i32 13
  %332 = load i16, ptr %331, align 4
  %333 = and i16 %332, 1
  %334 = icmp ne i16 %333, 0
  %335 = tail call i32 @regmap_update_bits_base(ptr noundef %278, i32 noundef %299, i32 noundef %330, i32 noundef %330, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %334) #11
  br label %336

336:                                              ; preds = %327, %317, %303
  %337 = phi i32 [ %312, %303 ], [ %326, %317 ], [ %335, %327 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %341 = load ptr, ptr %340, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %341, ptr noundef nonnull @.str.2, i32 noundef %299, i32 noundef %337) #12
  br label %610

342:                                              ; preds = %336
  %343 = load i16, ptr %12, align 4
  %344 = and i16 %343, 2
  %345 = icmp eq i16 %344, 0
  br i1 %345, label %456, label %346

346:                                              ; preds = %342
  %347 = load ptr, ptr %203, align 8
  %348 = getelementptr inbounds %struct.regmap_irq_chip, ptr %347, i32 0, i32 5
  %349 = load i32, ptr %348, align 4
  %350 = load ptr, ptr %202, align 4
  %351 = getelementptr inbounds %struct.regmap_irq_chip, ptr %347, i32 0, i32 3
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %359, label %354

354:                                              ; preds = %346
  %355 = getelementptr inbounds %struct.regmap_irq_chip, ptr %347, i32 0, i32 13
  %356 = load i16, ptr %355, align 4
  %357 = and i16 %356, 2048
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %354, %346
  %360 = getelementptr inbounds %struct.regmap, ptr %350, i32 0, i32 45
  %361 = load i32, ptr %360, align 4
  %362 = mul i32 %361, %266
  %363 = load i32, ptr %209, align 8
  %364 = mul i32 %362, %363
  br label %369

365:                                              ; preds = %354
  %366 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %352, i32 %266, i32 1
  %367 = load ptr, ptr %366, align 4
  %368 = load i32, ptr %367, align 4
  br label %369

369:                                              ; preds = %365, %359
  %370 = phi i32 [ %368, %365 ], [ %364, %359 ]
  %371 = add i32 %370, %349
  %372 = load ptr, ptr %99, align 4
  %373 = getelementptr i32, ptr %372, i32 %266
  %374 = tail call i32 @regmap_read(ptr noundef %1, i32 noundef %371, ptr noundef %373) #11
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %379, label %376

376:                                              ; preds = %369
  %377 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %378 = load ptr, ptr %377, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %378, ptr noundef nonnull @.str.3, i32 noundef %374) #12
  br label %610

379:                                              ; preds = %369
  %380 = load i16, ptr %12, align 4
  %381 = and i16 %380, 4096
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %379
  %384 = load ptr, ptr %99, align 4
  %385 = getelementptr i32, ptr %384, i32 %266
  %386 = load i32, ptr %385, align 4
  %387 = xor i32 %386, -1
  store i32 %387, ptr %385, align 4
  br label %388

388:                                              ; preds = %383, %379
  %389 = load ptr, ptr %99, align 4
  %390 = getelementptr i32, ptr %389, i32 %266
  %391 = load i32, ptr %390, align 4
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %456, label %393

393:                                              ; preds = %388
  %394 = load i32, ptr %248, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = load i16, ptr %12, align 4
  %398 = and i16 %397, 8
  %399 = icmp eq i16 %398, 0
  br i1 %399, label %456, label %400

400:                                              ; preds = %396, %393
  %401 = load ptr, ptr %203, align 8
  %402 = getelementptr inbounds %struct.regmap_irq_chip, ptr %401, i32 0, i32 8
  %403 = load i32, ptr %402, align 4
  %404 = load ptr, ptr %202, align 4
  %405 = getelementptr inbounds %struct.regmap_irq_chip, ptr %401, i32 0, i32 3
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %413, label %408

408:                                              ; preds = %400
  %409 = getelementptr inbounds %struct.regmap_irq_chip, ptr %401, i32 0, i32 13
  %410 = load i16, ptr %409, align 4
  %411 = and i16 %410, 2048
  %412 = icmp eq i16 %411, 0
  br i1 %412, label %413, label %419

413:                                              ; preds = %408, %400
  %414 = getelementptr inbounds %struct.regmap, ptr %404, i32 0, i32 45
  %415 = load i32, ptr %414, align 4
  %416 = mul i32 %415, %266
  %417 = load i32, ptr %209, align 8
  %418 = mul i32 %416, %417
  br label %423

419:                                              ; preds = %408
  %420 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %406, i32 %266, i32 1
  %421 = load ptr, ptr %420, align 4
  %422 = load i32, ptr %421, align 4
  br label %423

423:                                              ; preds = %419, %413
  %424 = phi i32 [ %422, %419 ], [ %418, %413 ]
  %425 = add i32 %424, %403
  %426 = load i16, ptr %12, align 4
  %427 = load ptr, ptr %110, align 8
  %428 = getelementptr i32, ptr %427, i32 %266
  %429 = load i32, ptr %428, align 4
  %430 = and i32 %429, %391
  %431 = shl i16 %426, 11
  %432 = ashr i16 %431, 15
  %433 = sext i16 %432 to i32
  %434 = xor i32 %430, %433
  %435 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %425, i32 noundef %434) #11
  %436 = load i16, ptr %12, align 4
  %437 = and i16 %436, 32
  %438 = icmp eq i16 %437, 0
  br i1 %438, label %449, label %439

439:                                              ; preds = %423
  %440 = and i16 %436, 16
  %441 = icmp eq i16 %440, 0
  %442 = icmp ne i32 %435, 0
  %443 = select i1 %441, i1 true, i1 %442
  %444 = select i1 %443, i1 %442, i1 false
  br i1 %444, label %452, label %445

445:                                              ; preds = %439
  %446 = xor i1 %443, true
  %447 = sext i1 %446 to i32
  %448 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %425, i32 noundef %447) #11
  br label %449

449:                                              ; preds = %445, %423
  %450 = phi i32 [ %435, %423 ], [ %448, %445 ]
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %456, label %452

452:                                              ; preds = %449, %439
  %453 = phi i32 [ %450, %449 ], [ %435, %439 ]
  %454 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %455 = load ptr, ptr %454, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %455, ptr noundef nonnull @.str.4, i32 noundef %425, i32 noundef %453) #12
  br label %610

456:                                              ; preds = %449, %396, %388, %342, %265
  %457 = add nuw nsw i32 %266, 1
  %458 = load i32, ptr %8, align 4
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %265, label %460

460:                                              ; preds = %456, %243
  %461 = phi i32 [ %244, %243 ], [ %458, %456 ]
  %462 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 13
  %463 = load ptr, ptr %462, align 8
  %464 = icmp ne ptr %463, null
  %465 = icmp sgt i32 %461, 0
  %466 = select i1 %464, i1 %465, i1 false
  br i1 %466, label %473, label %526

467:                                              ; preds = %515
  %468 = add nuw nsw i32 %475, 1
  %469 = load i32, ptr %8, align 4
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %526

471:                                              ; preds = %467
  %472 = load ptr, ptr %462, align 8
  br label %473

473:                                              ; preds = %471, %460
  %474 = phi ptr [ %472, %471 ], [ %463, %460 ]
  %475 = phi i32 [ %468, %471 ], [ 0, %460 ]
  %476 = load ptr, ptr %121, align 4
  %477 = getelementptr i32, ptr %476, i32 %475
  %478 = load i32, ptr %477, align 4
  %479 = getelementptr i32, ptr %474, i32 %475
  store i32 %478, ptr %479, align 4
  %480 = load ptr, ptr %203, align 8
  %481 = getelementptr inbounds %struct.regmap_irq_chip, ptr %480, i32 0, i32 9
  %482 = load i32, ptr %481, align 4
  %483 = load ptr, ptr %202, align 4
  %484 = getelementptr inbounds %struct.regmap_irq_chip, ptr %480, i32 0, i32 3
  %485 = load ptr, ptr %484, align 4
  %486 = icmp eq ptr %485, null
  br i1 %486, label %492, label %487

487:                                              ; preds = %473
  %488 = getelementptr inbounds %struct.regmap_irq_chip, ptr %480, i32 0, i32 13
  %489 = load i16, ptr %488, align 4
  %490 = and i16 %489, 2048
  %491 = icmp eq i16 %490, 0
  br i1 %491, label %492, label %498

492:                                              ; preds = %487, %473
  %493 = getelementptr inbounds %struct.regmap, ptr %483, i32 0, i32 45
  %494 = load i32, ptr %493, align 4
  %495 = mul i32 %494, %475
  %496 = load i32, ptr %209, align 8
  %497 = mul i32 %495, %496
  br label %502

498:                                              ; preds = %487
  %499 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %485, i32 %475, i32 1
  %500 = load ptr, ptr %499, align 4
  %501 = load i32, ptr %500, align 4
  br label %502

502:                                              ; preds = %498, %492
  %503 = phi i32 [ %501, %498 ], [ %497, %492 ]
  %504 = add i32 %503, %482
  %505 = load i16, ptr %12, align 4
  %506 = and i16 %505, 64
  %507 = icmp eq i16 %506, 0
  %508 = load ptr, ptr %121, align 4
  %509 = getelementptr i32, ptr %508, i32 %475
  %510 = load i32, ptr %509, align 4
  br i1 %507, label %511, label %515

511:                                              ; preds = %502
  %512 = load ptr, ptr %462, align 8
  %513 = getelementptr i32, ptr %512, i32 %475
  %514 = load i32, ptr %513, align 4
  br label %515

515:                                              ; preds = %511, %502
  %516 = phi i32 [ %514, %511 ], [ 0, %502 ]
  %517 = getelementptr inbounds %struct.regmap_irq_chip, ptr %480, i32 0, i32 13
  %518 = load i16, ptr %517, align 4
  %519 = and i16 %518, 1
  %520 = icmp ne i16 %519, 0
  %521 = tail call i32 @regmap_update_bits_base(ptr noundef %483, i32 noundef %504, i32 noundef %510, i32 noundef %516, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %520) #11
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %467, label %523

523:                                              ; preds = %515
  %524 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %525 = load ptr, ptr %524, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %525, ptr noundef nonnull @.str.2, i32 noundef %504, i32 noundef %521) #12
  br label %610

526:                                              ; preds = %467, %460
  %527 = load i32, ptr %142, align 4
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %586, label %529

529:                                              ; preds = %526
  %530 = load i16, ptr %12, align 4
  %531 = and i16 %530, 512
  %532 = icmp eq i16 %531, 0
  %533 = icmp sgt i32 %527, 0
  %534 = select i1 %532, i1 %533, i1 false
  br i1 %534, label %535, label %586

535:                                              ; preds = %529
  %536 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 15
  br label %541

537:                                              ; preds = %581
  %538 = add nuw nsw i32 %542, 1
  %539 = load i32, ptr %142, align 4
  %540 = icmp slt i32 %538, %539
  br i1 %540, label %541, label %586

541:                                              ; preds = %537, %535
  %542 = phi i32 [ 0, %535 ], [ %538, %537 ]
  %543 = load ptr, ptr %203, align 8
  %544 = getelementptr inbounds %struct.regmap_irq_chip, ptr %543, i32 0, i32 10
  %545 = load i32, ptr %544, align 4
  %546 = load ptr, ptr %202, align 4
  %547 = getelementptr inbounds %struct.regmap_irq_chip, ptr %543, i32 0, i32 3
  %548 = load ptr, ptr %547, align 4
  %549 = icmp eq ptr %548, null
  br i1 %549, label %555, label %550

550:                                              ; preds = %541
  %551 = getelementptr inbounds %struct.regmap_irq_chip, ptr %543, i32 0, i32 13
  %552 = load i16, ptr %551, align 4
  %553 = and i16 %552, 2048
  %554 = icmp eq i16 %553, 0
  br i1 %554, label %555, label %561

555:                                              ; preds = %550, %541
  %556 = getelementptr inbounds %struct.regmap, ptr %546, i32 0, i32 45
  %557 = load i32, ptr %556, align 4
  %558 = mul i32 %557, %542
  %559 = load i32, ptr %209, align 8
  %560 = mul i32 %558, %559
  br label %565

561:                                              ; preds = %550
  %562 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %548, i32 %542, i32 1
  %563 = load ptr, ptr %562, align 4
  %564 = load i32, ptr %563, align 4
  br label %565

565:                                              ; preds = %561, %555
  %566 = phi i32 [ %564, %561 ], [ %560, %555 ]
  %567 = add i32 %566, %545
  %568 = load ptr, ptr %536, align 8
  %569 = getelementptr i32, ptr %568, i32 %542
  %570 = tail call i32 @regmap_read(ptr noundef %1, i32 noundef %567, ptr noundef %569) #11
  %571 = load ptr, ptr %203, align 8
  %572 = getelementptr inbounds %struct.regmap_irq_chip, ptr %571, i32 0, i32 13
  %573 = load i16, ptr %572, align 4
  %574 = and i16 %573, 256
  %575 = icmp eq i16 %574, 0
  br i1 %575, label %581, label %576

576:                                              ; preds = %565
  %577 = load ptr, ptr %536, align 8
  %578 = getelementptr i32, ptr %577, i32 %542
  %579 = load i32, ptr %578, align 4
  %580 = xor i32 %579, -1
  store i32 %580, ptr %578, align 4
  br label %581

581:                                              ; preds = %576, %565
  %582 = icmp eq i32 %570, 0
  br i1 %582, label %537, label %583

583:                                              ; preds = %581
  %584 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %585 = load ptr, ptr %584, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %585, ptr noundef nonnull @.str.5, i32 noundef %567, i32 noundef %570) #12
  br label %610

586:                                              ; preds = %537, %529, %526
  %587 = icmp eq i32 %72, 0
  %588 = load i32, ptr %24, align 4
  br i1 %587, label %591, label %589

589:                                              ; preds = %586
  %590 = tail call ptr @irq_domain_create_legacy(ptr noundef %0, i32 noundef %588, i32 noundef %72, i32 noundef 0, ptr noundef nonnull @regmap_domain_ops, ptr noundef nonnull %74) #11
  br label %593

591:                                              ; preds = %586
  %592 = tail call ptr @__irq_domain_add(ptr noundef %0, i32 noundef %588, i32 noundef %588, i32 noundef 0, ptr noundef nonnull @regmap_domain_ops, ptr noundef %74) #11
  br label %593

593:                                              ; preds = %591, %589
  %594 = phi ptr [ %592, %591 ], [ %590, %589 ]
  %595 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 5
  store ptr %594, ptr %595, align 8
  %596 = icmp eq ptr %594, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %599 = load ptr, ptr %598, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %599, ptr noundef nonnull @.str.6) #12
  br label %610

600:                                              ; preds = %593
  %601 = or i32 %3, 8192
  %602 = load ptr, ptr %5, align 4
  %603 = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef null, ptr noundef nonnull @regmap_irq_thread, i32 noundef %601, ptr noundef %602, ptr noundef nonnull %74) #11
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %609, label %605

605:                                              ; preds = %600
  %606 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %607 = load ptr, ptr %606, align 4
  %608 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %607, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef %608, i32 noundef %603) #12
  br label %610

609:                                              ; preds = %600
  store ptr %74, ptr %6, align 4
  br label %645

610:                                              ; preds = %605, %597, %583, %523, %452, %376, %339, %232, %230, %189, %169, %167, %156, %152, %150, %133, %131, %118, %116, %107, %105, %96, %94, %85, %83
  %611 = phi i32 [ %337, %339 ], [ %374, %376 ], [ %453, %452 ], [ %521, %523 ], [ %603, %605 ], [ -12, %597 ], [ %570, %583 ], [ -12, %232 ], [ -12, %169 ], [ -12, %156 ], [ -12, %133 ], [ -12, %118 ], [ -12, %107 ], [ -12, %96 ], [ -12, %85 ], [ -12, %83 ], [ -12, %94 ], [ -12, %105 ], [ -12, %116 ], [ -12, %131 ], [ -12, %150 ], [ -12, %167 ], [ -12, %230 ], [ -12, %152 ], [ -12, %189 ]
  %612 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 14
  %613 = load ptr, ptr %612, align 4
  tail call void @kfree(ptr noundef %613) #11
  %614 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 15
  %615 = load ptr, ptr %614, align 8
  tail call void @kfree(ptr noundef %615) #11
  %616 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 13
  %617 = load ptr, ptr %616, align 8
  tail call void @kfree(ptr noundef %617) #11
  %618 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 12
  %619 = load ptr, ptr %618, align 4
  tail call void @kfree(ptr noundef %619) #11
  %620 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 11
  %621 = load ptr, ptr %620, align 8
  tail call void @kfree(ptr noundef %621) #11
  %622 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 10
  %623 = load ptr, ptr %622, align 4
  tail call void @kfree(ptr noundef %623) #11
  %624 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 8
  %625 = load ptr, ptr %624, align 4
  tail call void @kfree(ptr noundef %625) #11
  %626 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %74, i32 0, i32 16
  %627 = load ptr, ptr %626, align 4
  %628 = icmp eq ptr %627, null
  br i1 %628, label %644, label %629

629:                                              ; preds = %610
  %630 = getelementptr inbounds %struct.regmap_irq_chip, ptr %5, i32 0, i32 18
  %631 = load i32, ptr %630, align 4
  %632 = icmp sgt i32 %631, 0
  br i1 %632, label %633, label %642

633:                                              ; preds = %633, %629
  %634 = phi ptr [ %641, %633 ], [ %627, %629 ]
  %635 = phi i32 [ %638, %633 ], [ 0, %629 ]
  %636 = getelementptr ptr, ptr %634, i32 %635
  %637 = load ptr, ptr %636, align 4
  tail call void @kfree(ptr noundef %637) #11
  %638 = add nuw nsw i32 %635, 1
  %639 = load i32, ptr %630, align 4
  %640 = icmp slt i32 %638, %639
  %641 = load ptr, ptr %626, align 4
  br i1 %640, label %633, label %642

642:                                              ; preds = %633, %629
  %643 = phi ptr [ %627, %629 ], [ %641, %633 ]
  tail call void @kfree(ptr noundef %643) #11
  br label %644

644:                                              ; preds = %642, %610
  tail call void @kfree(ptr noundef nonnull %74) #11
  br label %645

645:                                              ; preds = %644, %609, %71, %68, %58, %35, %16, %7
  %646 = phi i32 [ %66, %68 ], [ %611, %644 ], [ 0, %609 ], [ -22, %7 ], [ -22, %16 ], [ -12, %71 ], [ -22, %58 ], [ -22, %35 ]
  ret i32 %646
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_irq_thread(i32 noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %10(ptr noundef %14) #11
  br label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 13
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 128
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.17, i32 noundef %24) #12
  br label %410

28:                                               ; preds = %21, %16
  %29 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %157, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 14
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 2
  %36 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 %34, i32 %37
  %40 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  tail call void @llvm.memset.p0.i32(ptr align 4 %41, i8 0, i32 %35, i1 false)
  %42 = load i32, ptr %29, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %264

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 1
  %46 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 45
  %47 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 17
  %48 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 9
  br label %60

49:                                               ; preds = %60
  %50 = add nuw nsw i32 %61, 1
  %51 = load i32, ptr %29, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %55, label %264

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 9
  %57 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 7, i32 3
  %58 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 17
  %59 = load i32, ptr %57, align 4
  br label %75

60:                                               ; preds = %49, %44
  %61 = phi i32 [ 0, %44 ], [ %50, %49 ]
  %62 = load i32, ptr %45, align 4
  %63 = load i32, ptr %46, align 4
  %64 = mul i32 %63, %61
  %65 = load i32, ptr %47, align 4
  %66 = mul i32 %64, %65
  %67 = add i32 %66, %62
  %68 = load ptr, ptr %48, align 4
  %69 = getelementptr i32, ptr %68, i32 %61
  %70 = tail call i32 @regmap_read(ptr noundef %8, i32 noundef %67, ptr noundef %69) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %49, label %72

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 5
  %74 = load ptr, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.18, i32 noundef %70) #12
  br label %410

75:                                               ; preds = %152, %55
  %76 = phi i32 [ %59, %55 ], [ %153, %152 ]
  %77 = phi i32 [ 0, %55 ], [ %154, %152 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !10
  %78 = load ptr, ptr %56, align 4
  %79 = getelementptr i32, ptr %78, i32 %77
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %4, align 4
  %81 = shl i32 %76, 3
  %82 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %81, i32 noundef 0) #11
  %83 = load i32, ptr %57, align 4
  %84 = shl i32 %83, 3
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %86, label %152

86:                                               ; preds = %75
  %87 = shl i32 %77, 3
  br label %88

88:                                               ; preds = %140, %86
  %89 = phi i32 [ %83, %86 ], [ %145, %140 ]
  %90 = phi i32 [ %82, %86 ], [ %144, %140 ]
  %91 = mul i32 %87, %89
  %92 = add i32 %91, %90
  %93 = icmp ugt i32 %92, %39
  br i1 %93, label %152, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %5, align 4
  %96 = load ptr, ptr %7, align 4
  %97 = getelementptr inbounds %struct.regmap_irq_chip, ptr %95, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %127, label %100

100:                                              ; preds = %94
  %101 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %98, i32 %90
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %140, label %104

104:                                              ; preds = %100
  %105 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %98, i32 %90, i32 1
  %106 = getelementptr inbounds %struct.regmap_irq_chip, ptr %95, i32 0, i32 13
  %107 = getelementptr inbounds %struct.regmap_irq_chip, ptr %95, i32 0, i32 5
  br label %112

108:                                              ; preds = %112
  %109 = add nuw i32 %113, 1
  %110 = load i32, ptr %101, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %108, %104
  %113 = phi i32 [ 0, %104 ], [ %109, %108 ]
  %114 = load ptr, ptr %105, align 4
  %115 = getelementptr i32, ptr %114, i32 %113
  %116 = load i32, ptr %115, align 4
  %117 = load i16, ptr %106, align 4
  %118 = and i16 %117, 2048
  %119 = icmp eq i16 %118, 0
  %120 = load i32, ptr %107, align 4
  %121 = add i32 %120, %116
  %122 = load ptr, ptr %40, align 4
  %123 = select i1 %119, i32 %116, i32 %90
  %124 = getelementptr i32, ptr %122, i32 %123
  %125 = call i32 @regmap_read(ptr noundef %96, i32 noundef %121, ptr noundef %124) #11
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %108, label %148

127:                                              ; preds = %94
  %128 = getelementptr inbounds %struct.regmap_irq_chip, ptr %95, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.regmap, ptr %96, i32 0, i32 45
  %131 = load i32, ptr %130, align 4
  %132 = mul i32 %131, %90
  %133 = load i32, ptr %58, align 4
  %134 = mul i32 %132, %133
  %135 = add i32 %134, %129
  %136 = load ptr, ptr %40, align 4
  %137 = getelementptr i32, ptr %136, i32 %90
  %138 = call i32 @regmap_read(ptr noundef %96, i32 noundef %135, ptr noundef %137) #11
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %127, %108, %100
  %141 = load i32, ptr %57, align 4
  %142 = shl i32 %141, 3
  %143 = add i32 %90, 1
  %144 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef %142, i32 noundef %143) #11
  %145 = load i32, ptr %57, align 4
  %146 = shl i32 %145, 3
  %147 = icmp ult i32 %144, %146
  br i1 %147, label %88, label %152

148:                                              ; preds = %127, %112
  %149 = phi i32 [ %125, %112 ], [ %138, %127 ]
  %150 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 5
  %151 = load ptr, ptr %150, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.18, i32 noundef %149) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %410

152:                                              ; preds = %140, %88, %75
  %153 = phi i32 [ %83, %75 ], [ %145, %140 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %154 = add nuw nsw i32 %77, 1
  %155 = load i32, ptr %29, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %75, label %264

157:                                              ; preds = %28
  %158 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 63
  %159 = load i8, ptr %158, align 4, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %216

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 45
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %216

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 17
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %216

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 8
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %174, !prof !8

173:                                              ; preds = %169
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 489, 0\0A.popsection", ""() #11, !srcloc !11
  unreachable

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 5
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 14
  %178 = load i32, ptr %177, align 4
  %179 = tail call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %176, ptr noundef nonnull %171, i32 noundef %178) #11
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %213

181:                                              ; preds = %174
  %182 = load ptr, ptr %5, align 4
  %183 = getelementptr inbounds %struct.regmap_irq_chip, ptr %182, i32 0, i32 14
  %184 = load i32, ptr %183, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %264

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 7, i32 3
  %188 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 10
  br label %189

189:                                              ; preds = %204, %186
  %190 = phi i32 [ 0, %186 ], [ %208, %204 ]
  %191 = load i32, ptr %187, align 4
  switch i32 %191, label %203 [
    i32 1, label %192
    i32 2, label %196
    i32 4, label %200
  ]

192:                                              ; preds = %189
  %193 = getelementptr i8, ptr %171, i32 %190
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  br label %204

196:                                              ; preds = %189
  %197 = getelementptr i16, ptr %171, i32 %190
  %198 = load i16, ptr %197, align 2
  %199 = zext i16 %198 to i32
  br label %204

200:                                              ; preds = %189
  %201 = getelementptr i32, ptr %171, i32 %190
  %202 = load i32, ptr %201, align 4
  br label %204

203:                                              ; preds = %189
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/regmap/regmap-irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 512, 0\0A.popsection", ""() #11, !srcloc !12
  unreachable

204:                                              ; preds = %200, %196, %192
  %205 = phi i32 [ %195, %192 ], [ %199, %196 ], [ %202, %200 ]
  %206 = load ptr, ptr %188, align 4
  %207 = getelementptr i32, ptr %206, i32 %190
  store i32 %205, ptr %207, align 4
  %208 = add nuw nsw i32 %190, 1
  %209 = load ptr, ptr %5, align 4
  %210 = getelementptr inbounds %struct.regmap_irq_chip, ptr %209, i32 0, i32 14
  %211 = load i32, ptr %210, align 4
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %189, label %264

213:                                              ; preds = %174
  %214 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 5
  %215 = load ptr, ptr %214, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.3, i32 noundef %179) #12
  br label %410

216:                                              ; preds = %165, %161, %157
  %217 = load ptr, ptr %5, align 4
  %218 = getelementptr inbounds %struct.regmap_irq_chip, ptr %217, i32 0, i32 14
  %219 = load i32, ptr %218, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %264

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 17
  %223 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 10
  br label %230

224:                                              ; preds = %254
  %225 = add nuw nsw i32 %232, 1
  %226 = load ptr, ptr %5, align 4
  %227 = getelementptr inbounds %struct.regmap_irq_chip, ptr %226, i32 0, i32 14
  %228 = load i32, ptr %227, align 4
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %264

230:                                              ; preds = %224, %221
  %231 = phi ptr [ %217, %221 ], [ %226, %224 ]
  %232 = phi i32 [ 0, %221 ], [ %225, %224 ]
  %233 = getelementptr inbounds %struct.regmap_irq_chip, ptr %231, i32 0, i32 5
  %234 = load i32, ptr %233, align 4
  %235 = load ptr, ptr %7, align 4
  %236 = getelementptr inbounds %struct.regmap_irq_chip, ptr %231, i32 0, i32 3
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %244, label %239

239:                                              ; preds = %230
  %240 = getelementptr inbounds %struct.regmap_irq_chip, ptr %231, i32 0, i32 13
  %241 = load i16, ptr %240, align 4
  %242 = and i16 %241, 2048
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239, %230
  %245 = getelementptr inbounds %struct.regmap, ptr %235, i32 0, i32 45
  %246 = load i32, ptr %245, align 4
  %247 = mul i32 %246, %232
  %248 = load i32, ptr %222, align 4
  %249 = mul i32 %247, %248
  br label %254

250:                                              ; preds = %239
  %251 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %237, i32 %232, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = load i32, ptr %252, align 4
  br label %254

254:                                              ; preds = %250, %244
  %255 = phi i32 [ %253, %250 ], [ %249, %244 ]
  %256 = add i32 %255, %234
  %257 = load ptr, ptr %223, align 4
  %258 = getelementptr i32, ptr %257, i32 %232
  %259 = tail call i32 @regmap_read(ptr noundef %8, i32 noundef %256, ptr noundef %258) #11
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %224, label %261

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 5
  %263 = load ptr, ptr %262, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %263, ptr noundef nonnull @.str.3, i32 noundef %259) #12
  br label %410

264:                                              ; preds = %224, %216, %204, %181, %152, %53, %32
  %265 = load i16, ptr %17, align 4
  %266 = and i16 %265, 4096
  %267 = icmp eq i16 %266, 0
  %268 = load ptr, ptr %5, align 4
  %269 = getelementptr inbounds %struct.regmap_irq_chip, ptr %268, i32 0, i32 14
  %270 = load i32, ptr %269, align 4
  br i1 %267, label %286, label %271

271:                                              ; preds = %264
  %272 = icmp sgt i32 %270, 0
  br i1 %272, label %273, label %295

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 10
  br label %275

275:                                              ; preds = %275, %273
  %276 = phi i32 [ 0, %273 ], [ %281, %275 ]
  %277 = load ptr, ptr %274, align 4
  %278 = getelementptr i32, ptr %277, i32 %276
  %279 = load i32, ptr %278, align 4
  %280 = xor i32 %279, -1
  store i32 %280, ptr %278, align 4
  %281 = add nuw nsw i32 %276, 1
  %282 = load ptr, ptr %5, align 4
  %283 = getelementptr inbounds %struct.regmap_irq_chip, ptr %282, i32 0, i32 14
  %284 = load i32, ptr %283, align 4
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %275, label %286

286:                                              ; preds = %275, %264
  %287 = phi i32 [ %270, %264 ], [ %284, %275 ]
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 11
  %291 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 10
  %292 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 8
  %293 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 17
  %294 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 5
  br label %304

295:                                              ; preds = %376, %286, %271
  %296 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 16
  %297 = load i32, ptr %296, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %410

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 10
  %301 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 15
  %302 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 45
  %303 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 5
  br label %382

304:                                              ; preds = %376, %289
  %305 = phi i32 [ 0, %289 ], [ %377, %376 ]
  %306 = load ptr, ptr %290, align 4
  %307 = getelementptr i32, ptr %306, i32 %305
  %308 = load i32, ptr %307, align 4
  %309 = xor i32 %308, -1
  %310 = load ptr, ptr %291, align 4
  %311 = getelementptr i32, ptr %310, i32 %305
  %312 = load i32, ptr %311, align 4
  %313 = and i32 %312, %309
  store i32 %313, ptr %311, align 4
  %314 = load ptr, ptr %291, align 4
  %315 = getelementptr i32, ptr %314, i32 %305
  %316 = load i32, ptr %315, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %376, label %318

318:                                              ; preds = %304
  %319 = load i32, ptr %292, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load i16, ptr %17, align 4
  %323 = and i16 %322, 8
  %324 = icmp eq i16 %323, 0
  br i1 %324, label %376, label %325

325:                                              ; preds = %321, %318
  %326 = load ptr, ptr %5, align 4
  %327 = getelementptr inbounds %struct.regmap_irq_chip, ptr %326, i32 0, i32 8
  %328 = load i32, ptr %327, align 4
  %329 = load ptr, ptr %7, align 4
  %330 = getelementptr inbounds %struct.regmap_irq_chip, ptr %326, i32 0, i32 3
  %331 = load ptr, ptr %330, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %338, label %333

333:                                              ; preds = %325
  %334 = getelementptr inbounds %struct.regmap_irq_chip, ptr %326, i32 0, i32 13
  %335 = load i16, ptr %334, align 4
  %336 = and i16 %335, 2048
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %333, %325
  %339 = getelementptr inbounds %struct.regmap, ptr %329, i32 0, i32 45
  %340 = load i32, ptr %339, align 4
  %341 = mul i32 %340, %305
  %342 = load i32, ptr %293, align 4
  %343 = mul i32 %341, %342
  br label %348

344:                                              ; preds = %333
  %345 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %331, i32 %305, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = load i32, ptr %346, align 4
  br label %348

348:                                              ; preds = %344, %338
  %349 = phi i32 [ %347, %344 ], [ %343, %338 ]
  %350 = add i32 %349, %328
  %351 = load i16, ptr %17, align 4
  %352 = shl i16 %351, 11
  %353 = ashr i16 %352, 15
  %354 = sext i16 %353 to i32
  %355 = xor i32 %316, %354
  %356 = call i32 @regmap_write(ptr noundef %8, i32 noundef %350, i32 noundef %355) #11
  %357 = load i16, ptr %17, align 4
  %358 = and i16 %357, 32
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %370, label %360

360:                                              ; preds = %348
  %361 = and i16 %357, 16
  %362 = icmp eq i16 %361, 0
  %363 = icmp ne i32 %356, 0
  %364 = select i1 %362, i1 true, i1 %363
  %365 = select i1 %364, i1 %363, i1 false
  br i1 %365, label %373, label %366

366:                                              ; preds = %360
  %367 = xor i1 %364, true
  %368 = sext i1 %367 to i32
  %369 = call i32 @regmap_write(ptr noundef %8, i32 noundef %350, i32 noundef %368) #11
  br label %370

370:                                              ; preds = %366, %348
  %371 = phi i32 [ %356, %348 ], [ %369, %366 ]
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %370, %360
  %374 = phi i32 [ %371, %370 ], [ %356, %360 ]
  %375 = load ptr, ptr %294, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %375, ptr noundef nonnull @.str.4, i32 noundef %350, i32 noundef %374) #12
  br label %376

376:                                              ; preds = %373, %370, %321, %304
  %377 = add nuw nsw i32 %305, 1
  %378 = load ptr, ptr %5, align 4
  %379 = getelementptr inbounds %struct.regmap_irq_chip, ptr %378, i32 0, i32 14
  %380 = load i32, ptr %379, align 4
  %381 = icmp slt i32 %377, %380
  br i1 %381, label %304, label %295

382:                                              ; preds = %405, %299
  %383 = phi i32 [ %297, %299 ], [ %406, %405 ]
  %384 = phi i1 [ false, %299 ], [ %407, %405 ]
  %385 = phi i32 [ 0, %299 ], [ %408, %405 ]
  %386 = load ptr, ptr %300, align 4
  %387 = load ptr, ptr %301, align 4
  %388 = getelementptr %struct.regmap_irq, ptr %387, i32 %385
  %389 = load i32, ptr %388, align 4
  %390 = load i32, ptr %302, align 4
  %391 = udiv i32 %389, %390
  %392 = getelementptr i32, ptr %386, i32 %391
  %393 = load i32, ptr %392, align 4
  %394 = getelementptr %struct.regmap_irq, ptr %387, i32 %385, i32 1
  %395 = load i32, ptr %394, align 4
  %396 = and i32 %395, %393
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %405, label %398

398:                                              ; preds = %382
  %399 = load ptr, ptr %303, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !10
  %400 = call ptr @__irq_resolve_mapping(ptr noundef %399, i32 noundef %385, ptr noundef nonnull %3) #11
  %401 = icmp eq ptr %400, null
  %402 = load i32, ptr %3, align 4
  %403 = select i1 %401, i32 0, i32 %402
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @handle_nested_irq(i32 noundef %403) #11
  %404 = load i32, ptr %296, align 4
  br label %405

405:                                              ; preds = %398, %382
  %406 = phi i32 [ %404, %398 ], [ %383, %382 ]
  %407 = phi i1 [ true, %398 ], [ %384, %382 ]
  %408 = add nuw nsw i32 %385, 1
  %409 = icmp slt i32 %408, %406
  br i1 %409, label %382, label %410

410:                                              ; preds = %405, %295, %261, %213, %148, %72, %26
  %411 = phi i1 [ false, %26 ], [ false, %261 ], [ false, %213 ], [ false, %72 ], [ false, %148 ], [ false, %295 ], [ %407, %405 ]
  %412 = load i16, ptr %17, align 4
  %413 = and i16 %412, 128
  %414 = icmp eq i16 %413, 0
  br i1 %414, label %419, label %415

415:                                              ; preds = %410
  %416 = getelementptr inbounds %struct.regmap, ptr %8, i32 0, i32 5
  %417 = load ptr, ptr %416, align 4
  %418 = call i32 @__pm_runtime_idle(ptr noundef %417, i32 noundef 5) #11
  br label %419

419:                                              ; preds = %415, %410
  %420 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 21
  %421 = load ptr, ptr %420, align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %427, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.regmap_irq_chip, ptr %6, i32 0, i32 23
  %425 = load ptr, ptr %424, align 4
  %426 = call i32 %421(ptr noundef %425) #11
  br label %427

427:                                              ; preds = %423, %419
  %428 = zext i1 %411 to i32
  ret i32 %428
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_add_irq_chip(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @dev_fwnode(ptr noundef %8) #11
  %10 = tail call i32 @regmap_add_irq_chip_fwnode(ptr noundef %9, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_del_irq_chip(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @free_irq(i32 noundef %0, ptr noundef nonnull %1) #11
  %7 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap_irq_chip, ptr %8, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 5
  br label %14

14:                                               ; preds = %30, %12
  %15 = phi ptr [ %8, %12 ], [ %32, %30 ]
  %16 = phi i32 [ 0, %12 ], [ %31, %30 ]
  %17 = getelementptr inbounds %struct.regmap_irq_chip, ptr %15, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.regmap_irq, ptr %18, i32 %16, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !10
  %24 = call ptr @__irq_resolve_mapping(ptr noundef %23, i32 noundef %16, ptr noundef nonnull %3) #11
  %25 = icmp eq ptr %24, null
  %26 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  call void @irq_dispose_mapping(i32 noundef %26) #11
  br label %30

30:                                               ; preds = %29, %22, %14
  %31 = add nuw nsw i32 %16, 1
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.regmap_irq_chip, ptr %32, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %14, label %36

36:                                               ; preds = %30, %5
  %37 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  call void @irq_domain_remove(ptr noundef %38) #11
  %39 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 14
  %40 = load ptr, ptr %39, align 4
  call void @kfree(ptr noundef %40) #11
  %41 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  call void @kfree(ptr noundef %42) #11
  %43 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 13
  %44 = load ptr, ptr %43, align 4
  call void @kfree(ptr noundef %44) #11
  %45 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  call void @kfree(ptr noundef %46) #11
  %47 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  call void @kfree(ptr noundef %48) #11
  %49 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  call void @kfree(ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %1, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  call void @kfree(ptr noundef %52) #11
  call void @kfree(ptr noundef nonnull %1) #11
  br label %53

53:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_regmap_add_irq_chip_fwnode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr nocapture noundef writeonly %7) #0 {
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store ptr null, ptr %9, align 4, !annotation !10
  %10 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_regmap_irq_chip_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = call i32 @regmap_add_irq_chip_fwnode(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %9)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @devres_free(ptr noundef nonnull %10) #11
  br label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 4
  store ptr %17, ptr %10, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %10) #11
  store ptr %17, ptr %7, align 4
  br label %18

18:                                               ; preds = %16, %15, %8
  %19 = phi i32 [ %13, %15 ], [ 0, %16 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_regmap_irq_chip_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %5, ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_regmap_add_irq_chip(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) #0 {
  %8 = alloca ptr, align 4
  %9 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @dev_fwnode(ptr noundef %10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store ptr null, ptr %8, align 4, !annotation !10
  %12 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_regmap_irq_chip_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = call i32 @regmap_add_irq_chip_fwnode(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %8) #11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @devres_free(ptr noundef nonnull %12) #11
  br label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %8, align 4
  store ptr %19, ptr %12, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %12) #11
  store ptr %19, ptr %6, align 4
  br label %20

20:                                               ; preds = %18, %17, %7
  %21 = phi i32 [ %15, %17 ], [ 0, %18 ], [ -12, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_regmap_del_irq_chip(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %2, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %8, label %7, !prof !13

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1088, i32 noundef 9, ptr noundef null) #11
  br label %8

8:                                                ; preds = %7, %3
  %9 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_regmap_irq_chip_release, ptr noundef nonnull @devm_regmap_irq_chip_match, ptr noundef %2) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1093, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_regmap_irq_chip_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 995, i32 noundef 9, ptr noundef null) #11
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ %11, %9 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_irq_chip_get_base(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1106, i32 noundef 9, ptr noundef null) #11
  %6 = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_irq_get_virq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regmap_irq_chip, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.regmap_irq, ptr %6, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @irq_create_mapping_affinity(ptr noundef %12, i32 noundef %1, ptr noundef null) #11
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @regmap_irq_get_domain(ptr noundef readonly %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_irq_enable(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.regmap_irq_chip, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.regmap_irq, ptr %11, i32 %7
  %13 = getelementptr %struct.regmap_irq, ptr %11, i32 %7, i32 2, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.regmap_irq, ptr %11, i32 %7, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %14
  %18 = getelementptr inbounds %struct.regmap_irq_chip, ptr %9, i32 0, i32 13
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 512
  %21 = icmp ne i16 %20, 0
  %22 = icmp ne i32 %17, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %12, align 4
  %28 = getelementptr inbounds %struct.regmap, ptr %5, i32 0, i32 45
  %29 = load i32, ptr %28, align 4
  %30 = udiv i32 %27, %29
  %31 = getelementptr i32, ptr %26, i32 %30
  br label %34

32:                                               ; preds = %1
  %33 = getelementptr %struct.regmap_irq, ptr %11, i32 %7, i32 1
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi ptr [ %31, %24 ], [ %33, %32 ]
  %36 = load i32, ptr %35, align 4
  %37 = and i16 %19, 1024
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 19
  %41 = load i8, ptr %40, align 4
  %42 = or i8 %41, 1
  store i8 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = xor i32 %36, -1
  %45 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %12, align 4
  %48 = getelementptr inbounds %struct.regmap, ptr %5, i32 0, i32 45
  %49 = load i32, ptr %48, align 4
  %50 = udiv i32 %47, %49
  %51 = getelementptr i32, ptr %46, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %44
  store i32 %53, ptr %51, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_irq_disable(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.regmap_irq_chip, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.regmap_irq, ptr %11, i32 %7
  %13 = getelementptr %struct.regmap_irq, ptr %11, i32 %7, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %3, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %12, align 4
  %18 = getelementptr inbounds %struct.regmap, ptr %5, i32 0, i32 45
  %19 = load i32, ptr %18, align 4
  %20 = udiv i32 %17, %19
  %21 = getelementptr i32, ptr %16, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, %14
  store i32 %23, ptr %21, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap_irq_chip, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %94

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.regmap, ptr %17, i32 0, i32 45
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %19, %21
  %23 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, %28
  %32 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %31, %33
  %35 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %34, %36
  br label %38

38:                                               ; preds = %26, %15
  %39 = phi i32 [ %37, %26 ], [ %24, %15 ]
  %40 = xor i32 %39, -1
  %41 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 14
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i32, ptr %42, i32 %22
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %40
  store i32 %45, ptr %43, align 4
  switch i32 %1, label %94 [
    i32 2, label %46
    i32 1, label %52
    i32 3, label %58
    i32 4, label %67
    i32 8, label %73
  ]

46:                                               ; preds = %38
  %47 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 3
  %48 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 14
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i32, ptr %49, i32 %22
  %51 = load i32, ptr %50, align 4
  br label %79

52:                                               ; preds = %38
  %53 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 2
  %54 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i32, ptr %55, i32 %22
  %57 = load i32, ptr %56, align 4
  br label %79

58:                                               ; preds = %38
  %59 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, %60
  %64 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 14
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i32, ptr %65, i32 %22
  br label %79

67:                                               ; preds = %38
  %68 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 5
  %69 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 14
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i32, ptr %70, i32 %22
  %72 = load i32, ptr %71, align 4
  br label %79

73:                                               ; preds = %38
  %74 = getelementptr %struct.regmap_irq, ptr %10, i32 %6, i32 2, i32 4
  %75 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 14
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i32, ptr %76, i32 %22
  %78 = load i32, ptr %77, align 4
  br label %79

79:                                               ; preds = %73, %67, %58, %52, %46
  %80 = phi ptr [ %74, %73 ], [ %68, %67 ], [ %66, %58 ], [ %53, %52 ], [ %47, %46 ]
  %81 = phi i32 [ %78, %73 ], [ %72, %67 ], [ %63, %58 ], [ %57, %52 ], [ %51, %46 ]
  %82 = phi ptr [ %77, %73 ], [ %71, %67 ], [ %66, %58 ], [ %56, %52 ], [ %50, %46 ]
  %83 = load i32, ptr %80, align 4
  %84 = or i32 %81, %83
  store i32 %84, ptr %82, align 4
  %85 = load ptr, ptr %7, align 4
  %86 = getelementptr inbounds %struct.regmap_irq_chip, ptr %85, i32 0, i32 22
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 16
  %91 = load ptr, ptr %90, align 4
  %92 = load i32, ptr %5, align 4
  %93 = tail call i32 %87(ptr noundef %91, i32 noundef %1, i32 noundef %92, i32 noundef %22) #11
  br label %94

94:                                               ; preds = %89, %79, %38, %2
  %95 = phi i32 [ %93, %89 ], [ 0, %2 ], [ -22, %38 ], [ 0, %79 ]
  ret i32 %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @regmap_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regmap_irq_chip, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.regmap_irq, ptr %12, i32 %8
  %14 = icmp eq i32 %1, 0
  %15 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %14, label %30, label %18

18:                                               ; preds = %2
  br i1 %17, label %41, label %19

19:                                               ; preds = %18
  %20 = getelementptr %struct.regmap_irq, ptr %12, i32 %8, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, ptr %13, align 4
  %24 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 45
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 %23, %25
  %27 = getelementptr i32, ptr %16, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %22
  store i32 %29, ptr %27, align 4
  br label %41

30:                                               ; preds = %2
  br i1 %17, label %41, label %31

31:                                               ; preds = %30
  %32 = getelementptr %struct.regmap_irq, ptr %12, i32 %8, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %13, align 4
  %35 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 45
  %36 = load i32, ptr %35, align 4
  %37 = udiv i32 %34, %36
  %38 = getelementptr i32, ptr %16, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, %33
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %31, %30, %19, %18
  %42 = phi i32 [ 1, %19 ], [ 1, %18 ], [ -1, %31 ], [ -1, %30 ]
  %43 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  store i32 %45, ptr %43, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_irq_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_irq_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap_irq_chip, ptr %8, i32 0, i32 13
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 128
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.10, i32 noundef %16) #12
  br label %20

20:                                               ; preds = %18, %13, %1
  %21 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 19
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = load ptr, ptr %7, align 4
  br i1 %24, label %77, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.regmap_irq_chip, ptr %25, i32 0, i32 14
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 17
  br label %32

32:                                               ; preds = %65, %30
  %33 = phi ptr [ %25, %30 ], [ %67, %65 ]
  %34 = phi i32 [ 0, %30 ], [ %66, %65 ]
  %35 = getelementptr inbounds %struct.regmap_irq_chip, ptr %33, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.regmap_irq_chip, ptr %33, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.regmap_irq_chip, ptr %33, i32 0, i32 13
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 2048
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %32
  %47 = getelementptr inbounds %struct.regmap, ptr %37, i32 0, i32 45
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %34
  %50 = load i32, ptr %31, align 4
  %51 = mul i32 %49, %50
  br label %56

52:                                               ; preds = %41
  %53 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %39, i32 %34, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i32 [ %55, %52 ], [ %51, %46 ]
  %58 = add i32 %57, %36
  %59 = call i32 @regmap_read(ptr noundef %6, i32 noundef %58, ptr noundef nonnull %2) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.regmap, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.11) #12
  br label %65

65:                                               ; preds = %61, %56
  %66 = add nuw nsw i32 %34, 1
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.regmap_irq_chip, ptr %67, i32 0, i32 14
  %69 = load i32, ptr %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %32, label %71

71:                                               ; preds = %65
  %72 = load i8, ptr %21, align 4
  br label %73

73:                                               ; preds = %71, %26
  %74 = phi ptr [ %67, %71 ], [ %25, %26 ]
  %75 = phi i8 [ %72, %71 ], [ %22, %26 ]
  %76 = and i8 %75, -2
  store i8 %76, ptr %21, align 4
  br label %77

77:                                               ; preds = %73, %20
  %78 = phi ptr [ %74, %73 ], [ %25, %20 ]
  %79 = getelementptr inbounds %struct.regmap_irq_chip, ptr %78, i32 0, i32 14
  %80 = load i32, ptr %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %301

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 17
  %84 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 12
  %85 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 11
  %86 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 13
  br label %87

87:                                               ; preds = %295, %82
  %88 = phi ptr [ %78, %82 ], [ %297, %295 ]
  %89 = phi i32 [ 0, %82 ], [ %296, %295 ]
  %90 = getelementptr inbounds %struct.regmap_irq_chip, ptr %88, i32 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %295, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr %5, align 4
  %95 = getelementptr inbounds %struct.regmap_irq_chip, ptr %88, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  %98 = getelementptr inbounds %struct.regmap_irq_chip, ptr %88, i32 0, i32 13
  %99 = load i16, ptr %98, align 4
  %100 = and i16 %99, 2048
  %101 = icmp eq i16 %100, 0
  %102 = select i1 %97, i1 true, i1 %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.regmap, ptr %94, i32 0, i32 45
  %105 = load i32, ptr %104, align 4
  %106 = mul i32 %105, %89
  %107 = load i32, ptr %83, align 4
  %108 = mul i32 %106, %107
  br label %113

109:                                              ; preds = %93
  %110 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %96, i32 %89, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %111, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = phi i32 [ %112, %109 ], [ %108, %103 ]
  %115 = add i32 %114, %91
  %116 = and i16 %99, 4
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %129, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %84, align 4
  %120 = getelementptr i32, ptr %119, i32 %89
  %121 = load i32, ptr %120, align 4
  %122 = load ptr, ptr %85, align 4
  %123 = getelementptr i32, ptr %122, i32 %89
  %124 = load i32, ptr %123, align 4
  %125 = xor i32 %124, -1
  %126 = and i16 %99, 1
  %127 = icmp ne i16 %126, 0
  %128 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef %115, i32 noundef %121, i32 noundef %125, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %127) #11
  br label %173

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.regmap_irq_chip, ptr %88, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  %133 = load ptr, ptr %84, align 4
  %134 = getelementptr i32, ptr %133, i32 %89
  %135 = load i32, ptr %134, align 4
  %136 = load ptr, ptr %85, align 4
  %137 = getelementptr i32, ptr %136, i32 %89
  %138 = load i32, ptr %137, align 4
  br i1 %132, label %169, label %139

139:                                              ; preds = %129
  %140 = xor i32 %138, -1
  %141 = and i16 %99, 1
  %142 = icmp ne i16 %141, 0
  %143 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef %115, i32 noundef %135, i32 noundef %140, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %142) #11
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load ptr, ptr %5, align 4
  %147 = getelementptr inbounds %struct.regmap, ptr %146, i32 0, i32 5
  %148 = load ptr, ptr %147, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.12, i32 noundef %115) #12
  br label %149

149:                                              ; preds = %145, %139
  %150 = load ptr, ptr %7, align 4
  %151 = getelementptr inbounds %struct.regmap_irq_chip, ptr %150, i32 0, i32 7
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.regmap_irq_chip, ptr %150, i32 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %152, %115
  %156 = sub i32 %155, %154
  %157 = load ptr, ptr %84, align 4
  %158 = getelementptr i32, ptr %157, i32 %89
  %159 = load i32, ptr %158, align 4
  %160 = load ptr, ptr %85, align 4
  %161 = getelementptr i32, ptr %160, i32 %89
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr inbounds %struct.regmap_irq_chip, ptr %150, i32 0, i32 13
  %164 = load i16, ptr %163, align 4
  %165 = and i16 %164, 1
  %166 = icmp ne i16 %165, 0
  %167 = load ptr, ptr %5, align 4
  %168 = call i32 @regmap_update_bits_base(ptr noundef %167, i32 noundef %156, i32 noundef %159, i32 noundef %162, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %166) #11
  br label %173

169:                                              ; preds = %129
  %170 = and i16 %99, 1
  %171 = icmp ne i16 %170, 0
  %172 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef %115, i32 noundef %135, i32 noundef %138, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %171) #11
  br label %173

173:                                              ; preds = %169, %149, %118
  %174 = phi i32 [ %128, %118 ], [ %168, %149 ], [ %172, %169 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr %5, align 4
  %178 = getelementptr inbounds %struct.regmap, ptr %177, i32 0, i32 5
  %179 = load ptr, ptr %178, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.13, i32 noundef %115) #12
  br label %180

180:                                              ; preds = %176, %173
  %181 = load ptr, ptr %7, align 4
  %182 = getelementptr inbounds %struct.regmap_irq_chip, ptr %181, i32 0, i32 9
  %183 = load i32, ptr %182, align 4
  %184 = load ptr, ptr %5, align 4
  %185 = getelementptr inbounds %struct.regmap_irq_chip, ptr %181, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.regmap_irq_chip, ptr %181, i32 0, i32 13
  %190 = load i16, ptr %189, align 4
  %191 = and i16 %190, 2048
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188, %180
  %194 = getelementptr inbounds %struct.regmap, ptr %184, i32 0, i32 45
  %195 = load i32, ptr %194, align 4
  %196 = mul i32 %195, %89
  %197 = load i32, ptr %83, align 4
  %198 = mul i32 %196, %197
  br label %203

199:                                              ; preds = %188
  %200 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %186, i32 %89, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = load i32, ptr %201, align 4
  br label %203

203:                                              ; preds = %199, %193
  %204 = phi i32 [ %202, %199 ], [ %198, %193 ]
  %205 = add i32 %204, %183
  %206 = load ptr, ptr %86, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %228, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.regmap_irq_chip, ptr %181, i32 0, i32 13
  %210 = load i16, ptr %209, align 4
  %211 = load ptr, ptr %84, align 4
  %212 = getelementptr i32, ptr %211, i32 %89
  %213 = load i32, ptr %212, align 4
  %214 = getelementptr i32, ptr %206, i32 %89
  %215 = load i32, ptr %214, align 4
  %216 = shl i16 %210, 9
  %217 = ashr i16 %216, 15
  %218 = sext i16 %217 to i32
  %219 = xor i32 %215, %218
  %220 = and i16 %210, 1
  %221 = icmp ne i16 %220, 0
  %222 = call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef %205, i32 noundef %213, i32 noundef %219, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %221) #11
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %208
  %225 = load ptr, ptr %5, align 4
  %226 = getelementptr inbounds %struct.regmap, ptr %225, i32 0, i32 5
  %227 = load ptr, ptr %226, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.14, i32 noundef %205, i32 noundef %222) #12
  br label %228

228:                                              ; preds = %224, %208, %203
  %229 = load ptr, ptr %7, align 4
  %230 = getelementptr inbounds %struct.regmap_irq_chip, ptr %229, i32 0, i32 13
  %231 = load i16, ptr %230, align 4
  %232 = and i16 %231, 2
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %295, label %234

234:                                              ; preds = %228
  %235 = load ptr, ptr %85, align 4
  %236 = getelementptr i32, ptr %235, i32 %89
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %295, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.regmap_irq_chip, ptr %229, i32 0, i32 8
  %241 = load i32, ptr %240, align 4
  %242 = icmp eq i32 %241, 0
  %243 = and i16 %231, 8
  %244 = icmp eq i16 %243, 0
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %295, label %246

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.regmap_irq_chip, ptr %229, i32 0, i32 3
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  %250 = and i16 %231, 2048
  %251 = icmp eq i16 %250, 0
  %252 = select i1 %249, i1 true, i1 %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %246
  %254 = load ptr, ptr %5, align 4
  %255 = getelementptr inbounds %struct.regmap, ptr %254, i32 0, i32 45
  %256 = load i32, ptr %255, align 4
  %257 = mul i32 %256, %89
  %258 = load i32, ptr %83, align 4
  %259 = mul i32 %257, %258
  br label %264

260:                                              ; preds = %246
  %261 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %248, i32 %89, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = load i32, ptr %262, align 4
  br label %264

264:                                              ; preds = %260, %253
  %265 = phi i32 [ %263, %260 ], [ %259, %253 ]
  %266 = add i32 %265, %241
  %267 = shl i16 %231, 11
  %268 = ashr i16 %267, 15
  %269 = sext i16 %268 to i32
  %270 = xor i32 %237, %269
  %271 = call i32 @regmap_write(ptr noundef %6, i32 noundef %266, i32 noundef %270) #11
  %272 = load ptr, ptr %7, align 4
  %273 = getelementptr inbounds %struct.regmap_irq_chip, ptr %272, i32 0, i32 13
  %274 = load i16, ptr %273, align 4
  %275 = and i16 %274, 32
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %287, label %277

277:                                              ; preds = %264
  %278 = and i16 %274, 16
  %279 = icmp eq i16 %278, 0
  %280 = icmp ne i32 %271, 0
  %281 = select i1 %279, i1 true, i1 %280
  %282 = select i1 %281, i1 %280, i1 false
  br i1 %282, label %290, label %283

283:                                              ; preds = %277
  %284 = xor i1 %281, true
  %285 = sext i1 %284 to i32
  %286 = call i32 @regmap_write(ptr noundef %6, i32 noundef %266, i32 noundef %285) #11
  br label %287

287:                                              ; preds = %283, %264
  %288 = phi i32 [ %271, %264 ], [ %286, %283 ]
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %287, %277
  %291 = phi i32 [ %288, %287 ], [ %271, %277 ]
  %292 = load ptr, ptr %5, align 4
  %293 = getelementptr inbounds %struct.regmap, ptr %292, i32 0, i32 5
  %294 = load ptr, ptr %293, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.4, i32 noundef %266, i32 noundef %291) #12
  br label %295

295:                                              ; preds = %290, %287, %239, %234, %228, %87
  %296 = add nuw nsw i32 %89, 1
  %297 = load ptr, ptr %7, align 4
  %298 = getelementptr inbounds %struct.regmap_irq_chip, ptr %297, i32 0, i32 14
  %299 = load i32, ptr %298, align 4
  %300 = icmp slt i32 %296, %299
  br i1 %300, label %87, label %301

301:                                              ; preds = %295, %77
  %302 = phi ptr [ %78, %77 ], [ %297, %295 ]
  %303 = getelementptr inbounds %struct.regmap_irq_chip, ptr %302, i32 0, i32 13
  %304 = load i16, ptr %303, align 4
  %305 = and i16 %304, 512
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %307, label %368

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.regmap_irq_chip, ptr %302, i32 0, i32 17
  %309 = load i32, ptr %308, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %368

311:                                              ; preds = %307
  %312 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 15
  %313 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 17
  %314 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 14
  br label %315

315:                                              ; preds = %362, %311
  %316 = phi ptr [ %302, %311 ], [ %364, %362 ]
  %317 = phi i32 [ 0, %311 ], [ %363, %362 ]
  %318 = load ptr, ptr %312, align 4
  %319 = getelementptr i32, ptr %318, i32 %317
  %320 = load i32, ptr %319, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %362, label %322

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.regmap_irq_chip, ptr %316, i32 0, i32 10
  %324 = load i32, ptr %323, align 4
  %325 = load ptr, ptr %5, align 4
  %326 = getelementptr inbounds %struct.regmap_irq_chip, ptr %316, i32 0, i32 3
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  %329 = getelementptr inbounds %struct.regmap_irq_chip, ptr %316, i32 0, i32 13
  %330 = load i16, ptr %329, align 4
  %331 = and i16 %330, 2048
  %332 = icmp eq i16 %331, 0
  %333 = select i1 %328, i1 true, i1 %332
  br i1 %333, label %334, label %340

334:                                              ; preds = %322
  %335 = getelementptr inbounds %struct.regmap, ptr %325, i32 0, i32 45
  %336 = load i32, ptr %335, align 4
  %337 = mul i32 %336, %317
  %338 = load i32, ptr %313, align 4
  %339 = mul i32 %337, %338
  br label %344

340:                                              ; preds = %322
  %341 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %327, i32 %317, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = load i32, ptr %342, align 4
  br label %344

344:                                              ; preds = %340, %334
  %345 = phi i32 [ %343, %340 ], [ %339, %334 ]
  %346 = add i32 %345, %324
  %347 = load ptr, ptr %314, align 4
  %348 = getelementptr i32, ptr %347, i32 %317
  %349 = load i32, ptr %348, align 4
  %350 = shl i16 %330, 7
  %351 = ashr i16 %350, 15
  %352 = sext i16 %351 to i32
  %353 = xor i32 %349, %352
  %354 = and i16 %330, 1
  %355 = icmp ne i16 %354, 0
  %356 = call i32 @regmap_update_bits_base(ptr noundef %325, i32 noundef %346, i32 noundef %320, i32 noundef %353, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext %355) #11
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %344
  %359 = load ptr, ptr %5, align 4
  %360 = getelementptr inbounds %struct.regmap, ptr %359, i32 0, i32 5
  %361 = load ptr, ptr %360, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %361, ptr noundef nonnull @.str.15, i32 noundef %346) #12
  br label %362

362:                                              ; preds = %358, %344, %315
  %363 = add nuw nsw i32 %317, 1
  %364 = load ptr, ptr %7, align 4
  %365 = getelementptr inbounds %struct.regmap_irq_chip, ptr %364, i32 0, i32 17
  %366 = load i32, ptr %365, align 4
  %367 = icmp slt i32 %363, %366
  br i1 %367, label %315, label %368

368:                                              ; preds = %362, %307, %301
  %369 = phi ptr [ %302, %307 ], [ %302, %301 ], [ %364, %362 ]
  %370 = getelementptr inbounds %struct.regmap_irq_chip, ptr %369, i32 0, i32 18
  %371 = load i32, ptr %370, align 4
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %434

373:                                              ; preds = %368
  %374 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 17
  %375 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 16
  br label %376

376:                                              ; preds = %428, %373
  %377 = phi ptr [ %369, %373 ], [ %429, %428 ]
  %378 = phi i32 [ 0, %373 ], [ %430, %428 ]
  %379 = getelementptr inbounds %struct.regmap_irq_chip, ptr %377, i32 0, i32 14
  %380 = load i32, ptr %379, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %428

382:                                              ; preds = %422, %376
  %383 = phi ptr [ %424, %422 ], [ %377, %376 ]
  %384 = phi i32 [ %423, %422 ], [ 0, %376 ]
  %385 = getelementptr inbounds %struct.regmap_irq_chip, ptr %383, i32 0, i32 11
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr i32, ptr %386, i32 %378
  %388 = load i32, ptr %387, align 4
  %389 = load ptr, ptr %5, align 4
  %390 = getelementptr inbounds %struct.regmap_irq_chip, ptr %383, i32 0, i32 3
  %391 = load ptr, ptr %390, align 4
  %392 = icmp eq ptr %391, null
  br i1 %392, label %398, label %393

393:                                              ; preds = %382
  %394 = getelementptr inbounds %struct.regmap_irq_chip, ptr %383, i32 0, i32 13
  %395 = load i16, ptr %394, align 4
  %396 = and i16 %395, 2048
  %397 = icmp eq i16 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %393, %382
  %399 = getelementptr inbounds %struct.regmap, ptr %389, i32 0, i32 45
  %400 = load i32, ptr %399, align 4
  %401 = mul i32 %400, %384
  %402 = load i32, ptr %374, align 4
  %403 = mul i32 %401, %402
  br label %408

404:                                              ; preds = %393
  %405 = getelementptr %struct.regmap_irq_sub_irq_map, ptr %391, i32 %384, i32 1
  %406 = load ptr, ptr %405, align 4
  %407 = load i32, ptr %406, align 4
  br label %408

408:                                              ; preds = %404, %398
  %409 = phi i32 [ %407, %404 ], [ %403, %398 ]
  %410 = add i32 %409, %388
  %411 = load ptr, ptr %375, align 4
  %412 = getelementptr ptr, ptr %411, i32 %378
  %413 = load ptr, ptr %412, align 4
  %414 = getelementptr i32, ptr %413, i32 %384
  %415 = load i32, ptr %414, align 4
  %416 = call i32 @regmap_write(ptr noundef %6, i32 noundef %410, i32 noundef %415) #11
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %422, label %418

418:                                              ; preds = %408
  %419 = load ptr, ptr %5, align 4
  %420 = getelementptr inbounds %struct.regmap, ptr %419, i32 0, i32 5
  %421 = load ptr, ptr %420, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %421, ptr noundef nonnull @.str.16, i32 noundef %410, i32 noundef %416) #12
  br label %422

422:                                              ; preds = %418, %408
  %423 = add nuw nsw i32 %384, 1
  %424 = load ptr, ptr %7, align 4
  %425 = getelementptr inbounds %struct.regmap_irq_chip, ptr %424, i32 0, i32 14
  %426 = load i32, ptr %425, align 4
  %427 = icmp slt i32 %423, %426
  br i1 %427, label %382, label %428

428:                                              ; preds = %422, %376
  %429 = phi ptr [ %377, %376 ], [ %424, %422 ]
  %430 = add nuw nsw i32 %378, 1
  %431 = getelementptr inbounds %struct.regmap_irq_chip, ptr %429, i32 0, i32 18
  %432 = load i32, ptr %431, align 4
  %433 = icmp slt i32 %430, %432
  br i1 %433, label %376, label %434

434:                                              ; preds = %428, %368
  %435 = phi ptr [ %369, %368 ], [ %429, %428 ]
  %436 = getelementptr inbounds %struct.regmap_irq_chip, ptr %435, i32 0, i32 13
  %437 = load i16, ptr %436, align 4
  %438 = and i16 %437, 128
  %439 = icmp eq i16 %438, 0
  br i1 %439, label %444, label %440

440:                                              ; preds = %434
  %441 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 5
  %442 = load ptr, ptr %441, align 4
  %443 = call i32 @__pm_runtime_idle(ptr noundef %442, i32 noundef 5) #11
  br label %444

444:                                              ; preds = %440, %434
  %445 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 7
  %446 = load i32, ptr %445, align 4
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %448, label %456

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 6
  br label %450

450:                                              ; preds = %450, %448
  %451 = phi i32 [ %446, %448 ], [ %454, %450 ]
  %452 = load i32, ptr %449, align 4
  %453 = call i32 @irq_set_irq_wake(i32 noundef %452, i32 noundef 0) #11
  %454 = add i32 %451, 1
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %467, label %450

456:                                              ; preds = %444
  %457 = icmp eq i32 %446, 0
  br i1 %457, label %467, label %458

458:                                              ; preds = %456
  %459 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %4, i32 0, i32 6
  br label %460

460:                                              ; preds = %460, %458
  %461 = phi i32 [ 0, %458 ], [ %464, %460 ]
  %462 = load i32, ptr %459, align 4
  %463 = call i32 @irq_set_irq_wake(i32 noundef %462, i32 noundef 1) #11
  %464 = add nuw nsw i32 %461, 1
  %465 = load i32, ptr %445, align 4
  %466 = icmp slt i32 %464, %465
  br i1 %466, label %460, label %467

467:                                              ; preds = %460, %456, %450
  store i32 0, ptr %445, align 4
  call void @mutex_unlock(ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %5, i32 0, i32 1
  %8 = tail call i32 @irq_set_chip(i32 noundef %1, ptr noundef %7) #11
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #11
  %9 = getelementptr inbounds %struct.regmap_irq_chip_data, ptr %5, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @irq_set_parent(i32 noundef %1, i32 noundef %10) #11
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{i64 2152486071, i64 2152486568, i64 2152486108, i64 2152486164, i64 2152486198, i64 2152486222, i64 2152486263, i64 2152486284, i64 2152486312, i64 2152486346}
!12 = !{i64 2152487618, i64 2152488115, i64 2152487655, i64 2152487711, i64 2152487745, i64 2152487769, i64 2152487810, i64 2152487831, i64 2152487859, i64 2152487893}
!13 = !{!"branch_weights", i32 2000, i32 1}
