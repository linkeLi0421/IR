; ModuleID = '/llk/IR/drivers/pci/controller/pcie-iproc-msi.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-iproc-msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_msi_init:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_msi_init\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_msi_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_msi_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_msi_exit\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_msi_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iproc_pcie = type { ptr, i32, ptr, ptr, i32, %struct.resource, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.iproc_pcie_ob, ptr, i8, %struct.iproc_pcie_ib, ptr, i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iproc_pcie_ob = type { i32, i32 }
%struct.iproc_pcie_ib = type { i32 }
%struct.iproc_msi = type { ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.iproc_msi_grp = type { ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.msi_msg = type { %union.anon.61, %union.anon.62, %union.anon.63 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"brcm,iproc-msi\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"msi-controller\00", align 1
@iproc_msi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"&msi->bitmap_lock\00", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@iproc_msi_domain_info = internal global %struct.msi_domain_info { i32 11, ptr null, ptr @iproc_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"found no MSI GIC interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"too many MSI GIC interrupts defined %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"not enough GIC interrupts for MSI affinity\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Reducing number of interrupts to %d\0A\00", align 1
@iproc_msi_reg_paxb = internal constant [6 x [8 x i16]] [[8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 528, i16 592, i16 596, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 532, i16 600, i16 604, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 536, i16 608, i16 612, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 540, i16 616, i16 620, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 544, i16 624, i16 628, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 548, i16 632, i16 636, i16 520]], align 2
@iproc_msi_reg_paxc = internal constant [6 x [8 x i16]] [[8 x i16] [i16 3072, i16 3076, i16 3080, i16 3084, i16 3136, i16 3152, i16 3168, i16 0], [8 x i16] [i16 3088, i16 3092, i16 3096, i16 3100, i16 3140, i16 3156, i16 3172, i16 0], [8 x i16] [i16 3104, i16 3108, i16 3112, i16 3116, i16 3144, i16 3160, i16 3176, i16 0], [8 x i16] [i16 3120, i16 3124, i16 3128, i16 3132, i16 3148, i16 3164, i16 3180, i16 0], [8 x i16] zeroinitializer, [8 x i16] zeroinitializer], align 2
@.str.7 = private unnamed_addr constant [35 x i8] c"incompatible iProc PCIe interface\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"brcm,pcie-msi-inten\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"unable to parse/map interrupt\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to create MSI domains\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_iproc_msi_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_msi_init = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_msi_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_msi_init to i32), ptr @__kstrtab_iproc_msi_init, ptr @__kstrtabns_iproc_msi_init }, section "___ksymtab+iproc_msi_init", align 4
@__kstrtab_iproc_msi_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_msi_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_msi_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_msi_exit to i32), ptr @__kstrtab_iproc_msi_exit, ptr @__kstrtabns_iproc_msi_exit }, section "___ksymtab+iproc_msi_exit", align 4
@iproc_msi_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"iProc-MSI\00", align 1
@msi_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_msi_irq_domain_alloc, ptr @iproc_msi_irq_domain_free, ptr null, ptr null, ptr null }, align 4
@iproc_msi_bottom_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_msi_irq_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_msi_irq_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"failed to set affinity for IRQ%d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_iproc_msi_exit, ptr @__ksymtab_iproc_msi_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iproc_msi_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x %struct.cpumask], align 4
  %4 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %224, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %224, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %224

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 4
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 80, i32 noundef 3520) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %224, label %17

17:                                               ; preds = %13
  store ptr %0, ptr %15, align 4
  store ptr %15, ptr %10, align 4
  %18 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 15
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull @iproc_msi_init.__key) #7
  %22 = load i32, ptr @__cpu_possible_mask, align 4
  %23 = and i32 %22, 65535
  %24 = tail call i32 @__sw_hweight32(i32 noundef %23) #7
  %25 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = icmp eq i32 %24, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, ptr @iproc_msi_domain_info, align 4
  %29 = or i32 %28, 4
  store i32 %29, ptr @iproc_msi_domain_info, align 4
  br label %30

30:                                               ; preds = %27, %17
  %31 = tail call i32 @of_irq_count(ptr noundef %1) #7
  %32 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.3) #8
  br label %224

36:                                               ; preds = %30
  %37 = icmp sgt i32 %31, 6
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.4, i32 noundef %31) #8
  store i32 6, ptr %32, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ 6, %38 ], [ %31, %36 ]
  %42 = load i32, ptr %25, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.5) #8
  br label %224

46:                                               ; preds = %40
  %47 = srem i32 %41, %42
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = sub i32 %41, %47
  store i32 %50, ptr %32, align 4
  %51 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.6, i32 noundef %50) #8
  br label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %60 [
    i32 0, label %55
    i32 1, label %55
    i32 3, label %57
  ]

55:                                               ; preds = %52, %52
  %56 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 1
  store ptr @iproc_msi_reg_paxb, ptr %56, align 4
  br label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 1
  store ptr @iproc_msi_reg_paxc, ptr %58, align 4
  %59 = load i32, ptr %32, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.7) #8
  br label %224

62:                                               ; preds = %57, %55
  %63 = phi i32 [ %59, %57 ], [ 1, %55 ]
  %64 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 11
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 12
  store i32 %63, ptr %65, align 4
  %66 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 5
  store i8 1, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = load i32, ptr %32, align 4
  %72 = shl i32 %71, 6
  %73 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 8
  store i32 %72, ptr %73, align 4
  %74 = lshr exact i32 %72, 3
  %75 = load ptr, ptr %0, align 4
  %76 = tail call noalias ptr @devm_kmalloc(ptr noundef %75, i32 noundef %74, i32 noundef 3520) #7
  %77 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 6
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %224, label %79

79:                                               ; preds = %70
  %80 = load i32, ptr %32, align 4
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %80, i32 12) #7
  %82 = extractvalue { i32, i1 } %81, 1
  br i1 %82, label %83, label %85, !prof !8

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 2
  store ptr null, ptr %84, align 4
  br label %224

85:                                               ; preds = %79
  %86 = load ptr, ptr %0, align 4
  %87 = extractvalue { i32, i1 } %81, 0
  %88 = tail call noalias ptr @devm_kmalloc(ptr noundef %86, i32 noundef %87, i32 noundef 3520) #7
  %89 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 2
  store ptr %88, ptr %89, align 4
  %90 = icmp eq ptr %88, null
  br i1 %90, label %224, label %91

91:                                               ; preds = %85
  %92 = load i32, ptr %32, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %100, %91
  %95 = phi i32 [ %107, %100 ], [ 0, %91 ]
  %96 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef %95) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.9) #8
  br label %206

100:                                              ; preds = %94
  %101 = load ptr, ptr %89, align 4
  %102 = getelementptr %struct.iproc_msi_grp, ptr %101, i32 %95, i32 1
  store i32 %96, ptr %102, align 4
  %103 = load ptr, ptr %89, align 4
  %104 = getelementptr %struct.iproc_msi_grp, ptr %103, i32 %95
  store ptr %15, ptr %104, align 4
  %105 = load ptr, ptr %89, align 4
  %106 = getelementptr %struct.iproc_msi_grp, ptr %105, i32 %95, i32 2
  store i32 %95, ptr %106, align 4
  %107 = add nuw nsw i32 %95, 1
  %108 = load i32, ptr %32, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %94, label %110

110:                                              ; preds = %100, %91
  %111 = load ptr, ptr %0, align 4
  %112 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 11
  %113 = load i32, ptr %112, align 4
  %114 = shl i32 %113, 12
  %115 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 14
  %116 = tail call ptr @dma_alloc_attrs(ptr noundef %111, i32 noundef %114, ptr noundef %115, i32 noundef 3264, i32 noundef 0) #7
  %117 = getelementptr inbounds %struct.iproc_msi, ptr %15, i32 0, i32 13
  store ptr %116, ptr %117, align 4
  %118 = icmp eq ptr %116, null
  br i1 %118, label %206, label %119

119:                                              ; preds = %110
  %120 = tail call fastcc i32 @iproc_msi_alloc_domains(ptr noundef %1, ptr noundef nonnull %15)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.10) #8
  br label %199

124:                                              ; preds = %166, %119
  %125 = phi i32 [ %126, %166 ], [ -1, %119 ]
  %126 = call i32 @cpumask_next(i32 noundef %125, ptr noundef nonnull @__cpu_online_mask) #9
  %127 = load i32, ptr @nr_cpu_ids, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %176

129:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %130 = load ptr, ptr %15, align 4
  %131 = load i32, ptr %32, align 4
  %132 = icmp sgt i32 %131, %126
  br i1 %132, label %133, label %166

133:                                              ; preds = %161, %129
  %134 = phi i32 [ %163, %161 ], [ %126, %129 ]
  %135 = load ptr, ptr %89, align 4
  %136 = getelementptr %struct.iproc_msi_grp, ptr %135, i32 %134
  %137 = getelementptr %struct.iproc_msi_grp, ptr %135, i32 %134, i32 1
  %138 = load i32, ptr %137, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %138, ptr noundef nonnull @iproc_msi_handler, ptr noundef %136) #7
  store i32 0, ptr %3, align 4
  call void @_set_bit(i32 noundef %126, ptr noundef nonnull %3) #7
  %139 = load ptr, ptr %89, align 4
  %140 = getelementptr %struct.iproc_msi_grp, ptr %139, i32 %134, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = call i32 @irq_set_affinity(i32 noundef %141, ptr noundef nonnull %3) #7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %161, label %144

144:                                              ; preds = %133
  %145 = load ptr, ptr %130, align 4
  %146 = load ptr, ptr %89, align 4
  %147 = getelementptr %struct.iproc_msi_grp, ptr %146, i32 %134, i32 1
  %148 = load i32, ptr %147, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.13, i32 noundef %148) #8
  %149 = load i32, ptr %32, align 4
  %150 = icmp sgt i32 %149, %126
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %170

152:                                              ; preds = %152, %144
  %153 = phi i32 [ %158, %152 ], [ %126, %144 ]
  %154 = load ptr, ptr %89, align 4
  %155 = getelementptr %struct.iproc_msi_grp, ptr %154, i32 %153, i32 1
  %156 = load i32, ptr %155, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %156, ptr noundef null, ptr noundef null) #7
  %157 = load i32, ptr %25, align 4
  %158 = add i32 %157, %153
  %159 = load i32, ptr %32, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %152, label %166

161:                                              ; preds = %133
  %162 = load i32, ptr %25, align 4
  %163 = add i32 %162, %134
  %164 = load i32, ptr %32, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %133, label %166

166:                                              ; preds = %161, %152, %129
  %167 = phi i32 [ %131, %129 ], [ %159, %152 ], [ %164, %161 ]
  %168 = phi i32 [ 0, %129 ], [ %142, %152 ], [ 0, %161 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %124, label %170

170:                                              ; preds = %166, %151
  %171 = phi i32 [ %142, %151 ], [ %168, %166 ]
  %172 = phi i32 [ %149, %151 ], [ %167, %166 ]
  %173 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  %174 = load i32, ptr @nr_cpu_ids, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %177, label %198

176:                                              ; preds = %124
  call fastcc void @iproc_msi_enable(ptr noundef nonnull %15)
  br label %224

177:                                              ; preds = %193, %170
  %178 = phi i32 [ %194, %193 ], [ %174, %170 ]
  %179 = phi i32 [ %195, %193 ], [ %172, %170 ]
  %180 = phi i32 [ %196, %193 ], [ %173, %170 ]
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %182, %177
  %183 = phi i32 [ %188, %182 ], [ %180, %177 ]
  %184 = load ptr, ptr %89, align 4
  %185 = getelementptr %struct.iproc_msi_grp, ptr %184, i32 %183, i32 1
  %186 = load i32, ptr %185, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %186, ptr noundef null, ptr noundef null) #7
  %187 = load i32, ptr %25, align 4
  %188 = add i32 %187, %183
  %189 = load i32, ptr %32, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %182, label %191

191:                                              ; preds = %182
  %192 = load i32, ptr @nr_cpu_ids, align 4
  br label %193

193:                                              ; preds = %191, %177
  %194 = phi i32 [ %192, %191 ], [ %178, %177 ]
  %195 = phi i32 [ %189, %191 ], [ %179, %177 ]
  %196 = call i32 @cpumask_next(i32 noundef %180, ptr noundef nonnull @__cpu_online_mask) #9
  %197 = icmp ult i32 %196, %194
  br i1 %197, label %177, label %198

198:                                              ; preds = %193, %170
  call fastcc void @iproc_msi_free_domains(ptr noundef nonnull %15)
  br label %199

199:                                              ; preds = %198, %122
  %200 = phi i32 [ %120, %122 ], [ %171, %198 ]
  %201 = load ptr, ptr %0, align 4
  %202 = load i32, ptr %112, align 4
  %203 = shl i32 %202, 12
  %204 = load ptr, ptr %117, align 4
  %205 = load i32, ptr %115, align 4
  call void @dma_free_attrs(ptr noundef %201, i32 noundef %203, ptr noundef %204, i32 noundef %205, i32 noundef 0) #7
  br label %206

206:                                              ; preds = %199, %110, %98
  %207 = phi i32 [ -19, %98 ], [ %200, %199 ], [ -12, %110 ]
  %208 = load i32, ptr %32, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %223

210:                                              ; preds = %219, %206
  %211 = phi i32 [ %220, %219 ], [ %208, %206 ]
  %212 = phi i32 [ %221, %219 ], [ 0, %206 ]
  %213 = load ptr, ptr %89, align 4
  %214 = getelementptr %struct.iproc_msi_grp, ptr %213, i32 %212, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %210
  call void @irq_dispose_mapping(i32 noundef %215) #7
  %218 = load i32, ptr %32, align 4
  br label %219

219:                                              ; preds = %217, %210
  %220 = phi i32 [ %211, %210 ], [ %218, %217 ]
  %221 = add nuw nsw i32 %212, 1
  %222 = icmp slt i32 %221, %220
  br i1 %222, label %210, label %223

223:                                              ; preds = %219, %206
  store ptr null, ptr %10, align 4
  br label %224

224:                                              ; preds = %223, %176, %85, %83, %70, %60, %44, %34, %13, %9, %6, %2
  %225 = phi i32 [ -22, %44 ], [ -22, %60 ], [ %207, %223 ], [ 0, %176 ], [ -19, %34 ], [ -19, %2 ], [ -19, %6 ], [ -16, %9 ], [ -12, %13 ], [ -12, %70 ], [ -12, %85 ], [ -12, %83 ]
  ret i32 %225
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iproc_msi_alloc_domains(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %4, i32 noundef %4, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef %1) #7
  %6 = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 9
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %11 = select i1 %9, ptr null, ptr %10
  %12 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %11, ptr noundef nonnull @iproc_msi_domain_info, ptr noundef nonnull %5) #7
  %13 = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 10
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load ptr, ptr %6, align 4
  tail call void @irq_domain_remove(ptr noundef %16) #7
  br label %17

17:                                               ; preds = %15, %8, %2
  %18 = phi i32 [ -12, %15 ], [ -12, %2 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iproc_msi_enable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 14
  %7 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 1
  br label %15

8:                                                ; preds = %15, %1
  %9 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 15
  %14 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 1
  br label %46

15:                                               ; preds = %15, %5
  %16 = phi i32 [ 0, %5 ], [ %36, %15 ]
  %17 = load i32, ptr %6, align 4
  %18 = shl i32 %16, 12
  %19 = add i32 %17, %18
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.iproc_pcie, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr [8 x i16], ptr %23, i32 %16, i32 0
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %22, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %19) #7, !srcloc !10
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.iproc_pcie, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr [8 x i16], ptr %31, i32 %16, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr i8, ptr %30, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #7, !srcloc !10
  %36 = add nuw i32 %16, 1
  %37 = load i32, ptr %2, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %15, label %8

39:                                               ; preds = %46, %8
  %40 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %106

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 1
  %45 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 5
  br label %70

46:                                               ; preds = %46, %12
  %47 = phi i32 [ 0, %12 ], [ %67, %46 ]
  %48 = load i32, ptr %13, align 4
  %49 = shl i32 %47, 12
  %50 = add i32 %48, %49
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.iproc_pcie, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr [8 x i16], ptr %54, i32 %47, i32 2
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = getelementptr i8, ptr %53, i32 %57
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %50) #7, !srcloc !10
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.iproc_pcie, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %14, align 4
  %63 = getelementptr [8 x i16], ptr %62, i32 %47, i32 3
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %61, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #7, !srcloc !10
  %67 = add nuw i32 %47, 1
  %68 = load i32, ptr %9, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %46, label %39

70:                                               ; preds = %102, %43
  %71 = phi i32 [ 0, %43 ], [ %103, %102 ]
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr inbounds %struct.iproc_pcie, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %44, align 4
  %76 = getelementptr [8 x i16], ptr %75, i32 %71, i32 4
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr i8, ptr %74, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 2051) #7, !srcloc !10
  %80 = load i8, ptr %45, align 4, !range !11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %70
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.iproc_pcie, ptr %83, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %44, align 4
  %87 = getelementptr [8 x i16], ptr %86, i32 %71, i32 7
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = getelementptr i8, ptr %85, i32 %89
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !12
  %92 = shl nuw i32 1, %71
  %93 = or i32 %91, %92
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.iproc_pcie, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %44, align 4
  %98 = getelementptr [8 x i16], ptr %97, i32 %71, i32 7
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %96, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %93) #7, !srcloc !10
  br label %102

102:                                              ; preds = %82, %70
  %103 = add nuw nsw i32 %71, 1
  %104 = load i32, ptr %40, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %70, label %106

106:                                              ; preds = %102, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iproc_msi_free_domains(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @irq_domain_remove(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.iproc_msi, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @irq_domain_remove(ptr noundef nonnull %8) #7
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iproc_msi_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.iproc_pcie, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %124, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 5
  %11 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 1
  br label %12

12:                                               ; preds = %37, %9
  %13 = phi i32 [ 0, %9 ], [ %56, %37 ]
  %14 = load i8, ptr %10, align 4, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.iproc_pcie, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr [8 x i16], ptr %20, i32 %13, i32 7
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %19, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !12
  %26 = shl nuw i32 1, %13
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.iproc_pcie, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr [8 x i16], ptr %32, i32 %13, i32 7
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = getelementptr i8, ptr %31, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %28) #7, !srcloc !10
  br label %37

37:                                               ; preds = %16, %12
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.iproc_pcie, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %11, align 4
  %42 = getelementptr [8 x i16], ptr %41, i32 %13, i32 4
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %40, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !12
  %47 = and i32 %46, -2052
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.iproc_pcie, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr [8 x i16], ptr %51, i32 %13, i32 4
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %50, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %47) #7, !srcloc !10
  %56 = add nuw i32 %13, 1
  %57 = load i32, ptr %6, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %12, label %59

59:                                               ; preds = %37, %5
  %60 = phi i32 [ 0, %5 ], [ %57, %37 ]
  %61 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  %62 = load i32, ptr @nr_cpu_ids, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 2
  %66 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 4
  br label %67

67:                                               ; preds = %83, %64
  %68 = phi i32 [ %62, %64 ], [ %84, %83 ]
  %69 = phi i32 [ %60, %64 ], [ %85, %83 ]
  %70 = phi i32 [ %61, %64 ], [ %86, %83 ]
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %72, %67
  %73 = phi i32 [ %78, %72 ], [ %70, %67 ]
  %74 = load ptr, ptr %65, align 4
  %75 = getelementptr %struct.iproc_msi_grp, ptr %74, i32 %73, i32 1
  %76 = load i32, ptr %75, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %76, ptr noundef null, ptr noundef null) #7
  %77 = load i32, ptr %66, align 4
  %78 = add i32 %77, %73
  %79 = load i32, ptr %6, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %72, label %81

81:                                               ; preds = %72
  %82 = load i32, ptr @nr_cpu_ids, align 4
  br label %83

83:                                               ; preds = %81, %67
  %84 = phi i32 [ %82, %81 ], [ %68, %67 ]
  %85 = phi i32 [ %79, %81 ], [ %69, %67 ]
  %86 = tail call i32 @cpumask_next(i32 noundef %70, ptr noundef nonnull @__cpu_online_mask) #9
  %87 = icmp ult i32 %86, %84
  br i1 %87, label %67, label %88

88:                                               ; preds = %83, %59
  %89 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void @irq_domain_remove(ptr noundef nonnull %90) #7
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void @irq_domain_remove(ptr noundef nonnull %95) #7
  br label %98

98:                                               ; preds = %97, %93
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 11
  %101 = load i32, ptr %100, align 4
  %102 = shl i32 %101, 12
  %103 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 13
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 14
  %106 = load i32, ptr %105, align 4
  tail call void @dma_free_attrs(ptr noundef %99, i32 noundef %102, ptr noundef %104, i32 noundef %106, i32 noundef 0) #7
  %107 = load i32, ptr %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.iproc_msi, ptr %3, i32 0, i32 2
  br label %111

111:                                              ; preds = %120, %109
  %112 = phi i32 [ %107, %109 ], [ %121, %120 ]
  %113 = phi i32 [ 0, %109 ], [ %122, %120 ]
  %114 = load ptr, ptr %110, align 4
  %115 = getelementptr %struct.iproc_msi_grp, ptr %114, i32 %113, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %111
  tail call void @irq_dispose_mapping(i32 noundef %116) #7
  %119 = load i32, ptr %6, align 4
  br label %120

120:                                              ; preds = %118, %111
  %121 = phi i32 [ %112, %111 ], [ %119, %118 ]
  %122 = add nuw i32 %113, 1
  %123 = icmp ult i32 %122, %121
  br i1 %123, label %111, label %124

124:                                              ; preds = %120, %98, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_msi_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iproc_msi, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 1
  %10 = icmp ugt i32 %2, 1
  %11 = and i1 %10, %9
  br i1 %11, label %36, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.iproc_msi, ptr %6, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %13) #7
  %14 = getelementptr inbounds %struct.iproc_msi, ptr %6, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.iproc_msi, ptr %6, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %7, align 4
  %19 = mul i32 %18, %2
  %20 = icmp ugt i32 %19, 1
  %21 = add i32 %19, -1
  %22 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #7, !range !13
  %23 = sub nuw nsw i32 32, %22
  %24 = select i1 %20, i32 %23, i32 0
  %25 = tail call i32 @bitmap_find_free_region(ptr noundef %15, i32 noundef %17, i32 noundef %24) #7
  tail call void @mutex_unlock(ptr noundef %13) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %12
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ %34, %29 ], [ 0, %27 ]
  %31 = add i32 %30, %1
  %32 = add i32 %30, %25
  %33 = load ptr, ptr %5, align 4
  tail call void @irq_domain_set_info(ptr noundef %0, i32 noundef %31, i32 noundef %32, ptr noundef nonnull @iproc_msi_bottom_irq_chip, ptr noundef %33, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #7
  %34 = add nuw i32 %30, 1
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %29

36:                                               ; preds = %29, %27, %12, %4
  %37 = phi i32 [ -22, %4 ], [ -28, %12 ], [ 0, %27 ], [ 0, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_msi_irq_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #7
  %5 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iproc_msi, ptr %6, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iproc_msi, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iproc_msi, ptr %6, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = mul i32 %11, %2
  %15 = icmp ugt i32 %14, 1
  %16 = add i32 %14, -1
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 false) #7, !range !13
  %18 = sub nuw nsw i32 32, %17
  %19 = select i1 %15, i32 %18, i32 0
  %20 = urem i32 %9, %11
  %21 = sub i32 %9, %20
  tail call void @bitmap_release_region(ptr noundef %13, i32 noundef %21, i32 noundef %19) #7
  tail call void @mutex_unlock(ptr noundef %7) #7
  tail call void @irq_domain_free_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_msi_irq_set_affinity(ptr nocapture noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #7
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iproc_msi, ptr %5, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = urem i32 %8, %10
  %12 = icmp eq i32 %11, %6
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = add i32 %8, %6
  %15 = sub i32 %14, %11
  store i32 %15, ptr %7, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ 0, %13 ], [ 2, %3 ]
  %18 = and i32 %6, 31
  %19 = add nuw nsw i32 %18, 1
  %20 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %19
  %21 = lshr i32 %6, 5
  %22 = sub nsw i32 0, %21
  %23 = getelementptr i32, ptr %20, i32 %22
  %24 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.irq_common_data, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %23, align 4
  store i32 %27, ptr %26, align 4
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @iproc_msi_irq_compose_msi_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iproc_msi, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iproc_msi, ptr %4, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.iproc_msi, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = urem i32 %8, %12
  %14 = icmp ult i32 %10, 2
  %15 = select i1 %14, i32 2, i32 12
  %16 = shl i32 %13, %15
  %17 = add i32 %16, %6
  store i32 %17, ptr %1, align 4
  %18 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = load i32, ptr %7, align 4
  %20 = shl i32 %19, 5
  %21 = getelementptr inbounds %struct.msi_msg, ptr %1, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_msi_handler(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %9(ptr noundef %12) #7
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %15(ptr noundef %16) #7
  %17 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void %18(ptr noundef %16) #7
  br label %21

21:                                               ; preds = %20, %13, %11, %1
  %22 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.iproc_msi_grp, ptr %23, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.iproc_pcie, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.iproc_msi, ptr %24, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr [8 x i16], ptr %31, i32 %26, i32 5
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr i8, ptr %29, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !12
  %37 = and i32 %36, 63
  %38 = load ptr, ptr %24, align 4
  %39 = getelementptr inbounds %struct.iproc_pcie, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr [8 x i16], ptr %41, i32 %26, i32 6
  %43 = load i16, ptr %42, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %40, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !12
  %47 = and i32 %46, 63
  %48 = icmp ult i32 %47, %37
  %49 = sub nsw i32 %47, %37
  %50 = add nsw i32 %49, 64
  %51 = select i1 %48, i32 %50, i32 %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %108, label %53

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.iproc_msi, ptr %24, i32 0, i32 11
  %55 = getelementptr inbounds %struct.iproc_msi, ptr %24, i32 0, i32 13
  %56 = getelementptr inbounds %struct.iproc_msi, ptr %24, i32 0, i32 4
  %57 = getelementptr inbounds %struct.iproc_msi, ptr %24, i32 0, i32 9
  br label %58

58:                                               ; preds = %82, %53
  %59 = phi i32 [ %51, %53 ], [ %83, %82 ]
  %60 = phi i32 [ %37, %53 ], [ %80, %82 ]
  %61 = add i32 %59, -1
  %62 = load i32, ptr %54, align 4
  %63 = icmp ugt i32 %62, 1
  %64 = select i1 %63, i32 12, i32 8
  %65 = shl i32 %26, %64
  %66 = shl nuw nsw i32 %60, 2
  %67 = or i32 %65, %66
  %68 = load ptr, ptr %55, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %71 = lshr i32 %70, 5
  %72 = and i32 %70, 31
  %73 = add nuw nsw i32 %71, %72
  %74 = load i32, ptr %56, align 4
  %75 = urem i32 %73, %74
  %76 = sub nsw i32 %73, %75
  %77 = load ptr, ptr %57, align 4
  %78 = tail call i32 @generic_handle_domain_irq(ptr noundef %77, i32 noundef %76) #7
  %79 = add nuw nsw i32 %60, 1
  %80 = and i32 %79, 63
  %81 = icmp eq i32 %61, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %84, %58
  %83 = phi i32 [ %61, %58 ], [ %106, %84 ]
  br label %58

84:                                               ; preds = %58
  %85 = load ptr, ptr %24, align 4
  %86 = getelementptr inbounds %struct.iproc_pcie, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %30, align 4
  %89 = getelementptr [8 x i16], ptr %88, i32 %26, i32 5
  %90 = load i16, ptr %89, align 2
  %91 = zext i16 %90 to i32
  %92 = getelementptr i8, ptr %87, i32 %91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %80) #7, !srcloc !10
  %93 = load ptr, ptr %24, align 4
  %94 = getelementptr inbounds %struct.iproc_pcie, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %30, align 4
  %97 = getelementptr [8 x i16], ptr %96, i32 %26, i32 6
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  %100 = getelementptr i8, ptr %95, i32 %99
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #7, !srcloc !12
  %102 = and i32 %101, 63
  %103 = icmp ult i32 %102, %80
  %104 = sub nsw i32 %102, %80
  %105 = add nsw i32 %104, 64
  %106 = select i1 %103, i32 %105, i32 %104
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %82

108:                                              ; preds = %84, %21
  %109 = load ptr, ptr %4, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %113 = load ptr, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi ptr [ %113, %111 ], [ %109, %108 ]
  %116 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %115(ptr noundef %116) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!9 = !{!"auto-init"}
!10 = !{i64 3066143}
!11 = !{i8 0, i8 2}
!12 = !{i64 3066561}
!13 = !{i32 0, i32 33}
!14 = !{i64 2153287638}
