; ModuleID = '/llk/IR/drivers/pci/pcie/portdrv_core.c_pt.bc'
source_filename = "../drivers/pci/pcie/portdrv_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_service_register:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_service_register\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_service_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_port_service_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_port_service_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_port_service_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }
%struct.portdrv_service_data = type { ptr, ptr, i32 }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pcie_port_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_pcie_port_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_find_device to i32), ptr @__kstrtab_pcie_port_find_device, ptr @__kstrtabns_pcie_port_find_device }, section "___ksymtab_gpl+pcie_port_find_device", align 4
@pcie_ports_disabled = external dso_local local_unnamed_addr global i8, align 1
@__kstrtab_pcie_port_service_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_service_register = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_service_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_service_register to i32), ptr @__kstrtab_pcie_port_service_register, ptr @__kstrtabns_pcie_port_service_register }, section "___ksymtab+pcie_port_service_register", align 4
@__kstrtab_pcie_port_service_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_port_service_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_port_service_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_port_service_unregister to i32), ptr @__kstrtab_pcie_port_service_unregister, ptr @__kstrtabns_pcie_port_service_unregister }, section "___ksymtab+pcie_port_service_unregister", align 4
@pcie_ports_native = external dso_local local_unnamed_addr global i8, align 1
@pcie_pme_msi_disabled = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [12 x i8] c"%s:pcie%03x\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_pcie_port_find_device, ptr @__ksymtab_pcie_port_service_register, ptr @__ksymtab_pcie_port_service_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca [5 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  %5 = tail call i32 @pci_enable_device(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %191

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @pci_find_host_bridge(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %12 = load i40, ptr %11, align 1
  %13 = and i40 %12, 16777216
  %14 = icmp eq i40 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %7
  %16 = load i8, ptr @pcie_ports_native, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.pci_host_bridge, ptr %10, i32 0, i32 13
  %20 = load i16, ptr %19, align 16
  %21 = and i16 %20, 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %15
  %24 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 24, i16 noundef zeroext 48, i16 noundef zeroext 0) #8
  br label %25

25:                                               ; preds = %23, %18, %7
  %26 = phi i32 [ 4, %23 ], [ 0, %18 ], [ 0, %7 ]
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %28 = load i16, ptr %27, align 2
  %29 = lshr i16 %28, 4
  %30 = and i16 %29, 15
  %31 = zext i16 %30 to i32
  switch i32 %31, label %42 [
    i32 4, label %32
    i32 10, label %32
  ]

32:                                               ; preds = %25, %25
  %33 = load i8, ptr @pcie_ports_native, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.pci_host_bridge, ptr %10, i32 0, i32 13
  %37 = load i16, ptr %36, align 16
  %38 = and i16 %37, 32
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %32
  %41 = or i32 %26, 1
  tail call void @pcie_pme_interrupt_enable(ptr noundef %0, i1 noundef zeroext false) #8
  br label %42

42:                                               ; preds = %40, %35, %25
  %43 = phi i32 [ %41, %40 ], [ %26, %35 ], [ %26, %25 ]
  %44 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 29) #8
  %45 = load i16, ptr %27, align 2
  %46 = lshr i16 %45, 4
  %47 = and i16 %46, 15
  %48 = zext i16 %47 to i32
  switch i32 %48, label %55 [
    i32 6, label %49
    i32 4, label %49
  ]

49:                                               ; preds = %42, %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %50 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %3) #8
  %51 = load i32, ptr %3, align 4
  %52 = lshr i32 %51, 17
  %53 = and i32 %52, 16
  %54 = or i32 %53, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %55

55:                                               ; preds = %49, %42
  %56 = phi i32 [ %54, %49 ], [ %43, %42 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %191, label %58

58:                                               ; preds = %55
  call void @pci_set_master(ptr noundef %0) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 -1, i32 20, i1 false) #8
  %59 = and i32 %56, 1
  %60 = icmp ne i32 %59, 0
  %61 = load i8, ptr @pcie_pme_msi_disabled, align 1
  %62 = icmp ne i8 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %116, label %64

64:                                               ; preds = %58
  %65 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef 1, i32 noundef 32, i32 noundef 6, ptr noundef null) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %116, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !9
  %68 = and i32 %56, 21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #8
  %72 = load i16, ptr %2, align 2
  %73 = lshr i16 %72, 9
  %74 = and i16 %73, 31
  %75 = zext i16 %74 to i32
  %76 = add nuw nsw i32 %75, 1
  br label %77

77:                                               ; preds = %70, %67
  %78 = phi i32 [ 0, %67 ], [ %75, %70 ]
  %79 = phi i32 [ 0, %67 ], [ %76, %70 ]
  %80 = and i32 %56, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  %83 = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 29) #8
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = zext i16 %83 to i32
  %87 = add nuw nsw i32 %86, 4
  %88 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %87, ptr noundef nonnull %2) #8
  %89 = load i16, ptr %2, align 2
  %90 = and i16 %89, 31
  %91 = zext i16 %90 to i32
  %92 = add nuw nsw i32 %91, 1
  %93 = call i32 @llvm.umax.i32(i32 %79, i32 %92) #8
  br label %94

94:                                               ; preds = %85, %82, %77
  %95 = phi i32 [ 0, %77 ], [ 0, %82 ], [ %91, %85 ]
  %96 = phi i32 [ %79, %77 ], [ %79, %82 ], [ %93, %85 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %97 = icmp ugt i32 %96, %65
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  call void @pci_free_irq_vectors(ptr noundef %0) #8
  br label %116

99:                                               ; preds = %94
  %100 = icmp eq i32 %96, %65
  br i1 %100, label %104, label %101

101:                                              ; preds = %99
  call void @pci_free_irq_vectors(ptr noundef %0) #8
  %102 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef %96, i32 noundef %96, i32 noundef 6, ptr noundef null) #8
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %101, %99
  br i1 %69, label %109, label %105

105:                                              ; preds = %104
  %106 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef %78) #8
  store i32 %106, ptr %4, align 4
  %107 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds i32, ptr %4, i32 4
  store i32 %106, ptr %108, align 4
  br label %109

109:                                              ; preds = %105, %104
  %110 = and i32 %56, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #8
  %114 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 %113, ptr %114, align 4
  br label %115

115:                                              ; preds = %112, %109
  br i1 %81, label %135, label %127

116:                                              ; preds = %101, %98, %64, %58
  %117 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %116
  %120 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #8
  store i32 %120, ptr %4, align 4
  %121 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #8
  %122 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 %121, ptr %122, align 4
  %123 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #8
  %124 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 %123, ptr %124, align 4
  %125 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef 0) #8
  %126 = getelementptr inbounds i32, ptr %4, i32 3
  store i32 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %119, %115
  %128 = phi i32 [ 0, %119 ], [ %95, %115 ]
  %129 = phi i32 [ 4, %119 ], [ 3, %115 ]
  %130 = call i32 @pci_irq_vector(ptr noundef %0, i32 noundef %128) #8
  %131 = getelementptr i32, ptr %4, i32 %129
  store i32 %130, ptr %131, align 4
  br label %135

132:                                              ; preds = %116
  %133 = and i32 %56, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %190, label %135

135:                                              ; preds = %132, %127, %115
  %136 = phi i32 [ %133, %132 ], [ %56, %115 ], [ %56, %127 ]
  %137 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %138 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %139

139:                                              ; preds = %183, %135
  %140 = phi i32 [ 0, %135 ], [ %184, %183 ]
  %141 = phi i32 [ 0, %135 ], [ %185, %183 ]
  %142 = shl nuw nsw i32 1, %141
  %143 = and i32 %142, %136
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %183, label %145

145:                                              ; preds = %139
  %146 = getelementptr [5 x i32], ptr %4, i32 0, i32 %141
  %147 = load i32, ptr %146, align 4
  %148 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %149 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %148, i32 noundef 3520, i32 noundef 488) #9
  %150 = icmp eq ptr %149, null
  br i1 %150, label %183, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.pcie_device, ptr %149, i32 0, i32 1
  store ptr %0, ptr %152, align 4
  store i32 %147, ptr %149, align 8
  %153 = getelementptr inbounds %struct.pcie_device, ptr %149, i32 0, i32 2
  store i32 %142, ptr %153, align 8
  %154 = getelementptr inbounds %struct.pcie_device, ptr %149, i32 0, i32 4
  %155 = getelementptr inbounds %struct.pcie_device, ptr %149, i32 0, i32 4, i32 5
  store ptr @pcie_port_bus_type, ptr %155, align 4
  %156 = getelementptr inbounds %struct.pcie_device, ptr %149, i32 0, i32 4, i32 33
  store ptr @release_pcie_device, ptr %156, align 4
  %157 = load ptr, ptr %137, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load ptr, ptr %138, align 4
  br label %161

161:                                              ; preds = %159, %151
  %162 = phi ptr [ %160, %159 ], [ %157, %151 ]
  %163 = load i16, ptr %27, align 2
  %164 = shl i16 %163, 4
  %165 = and i16 %164, 3840
  %166 = zext i16 %165 to i32
  %167 = add nsw i32 %166, -1024
  %168 = or i32 %167, %142
  %169 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %154, ptr noundef nonnull @.str, ptr noundef %162, i32 noundef %168) #8
  %170 = getelementptr inbounds %struct.pcie_device, ptr %149, i32 0, i32 4, i32 1
  store ptr %138, ptr %170, align 4
  %171 = getelementptr inbounds %struct.pcie_device, ptr %149, i32 0, i32 4, i32 11, i32 1
  %172 = load i16, ptr %171, align 4
  %173 = and i16 %172, 8
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = or i16 %172, 2
  store i16 %176, ptr %171, align 4
  br label %177

177:                                              ; preds = %175, %161
  %178 = call i32 @device_register(ptr noundef %154) #8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  call void @put_device(ptr noundef %154) #8
  br label %183

181:                                              ; preds = %177
  call void @pm_runtime_no_callbacks(ptr noundef %154) #8
  %182 = add i32 %140, 1
  br label %183

183:                                              ; preds = %181, %180, %145, %139
  %184 = phi i32 [ %140, %139 ], [ %182, %181 ], [ %140, %180 ], [ %140, %145 ]
  %185 = add nuw nsw i32 %141, 1
  %186 = icmp eq i32 %185, 5
  br i1 %186, label %187, label %139

187:                                              ; preds = %183
  %188 = icmp eq i32 %184, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %187
  call void @pci_free_irq_vectors(ptr noundef %0) #8
  br label %190

190:                                              ; preds = %189, %132
  call void @pci_disable_device(ptr noundef %0) #8
  br label %191

191:                                              ; preds = %190, %187, %55, %1
  %192 = phi i32 [ -19, %190 ], [ %5, %1 ], [ 0, %55 ], [ 0, %187 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  ret i32 %192
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_iter(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @pcie_port_bus_type
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -44
  %13 = getelementptr i8, ptr %12, i32 %3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %0, i32 -16
  %18 = tail call i32 %14(ptr noundef %17) #8
  br label %19

19:                                               ; preds = %16, %11, %7, %2
  %20 = phi i32 [ %18, %16 ], [ 0, %11 ], [ 0, %7 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 12, ptr %2, align 4
  %3 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @pcie_port_device_iter) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_resume_noirq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 16, ptr %2, align 4
  %3 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @pcie_port_device_iter) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 20, ptr %2, align 4
  %3 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @pcie_port_device_iter) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_runtime_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 24, ptr %2, align 4
  %3 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @pcie_port_device_iter) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_device_runtime_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 28, ptr %2, align 4
  %3 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @pcie_port_device_iter) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pcie_port_find_device(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.portdrv_service_data, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.portdrv_service_data, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.portdrv_service_data, ptr %3, i32 0, i32 2
  store i64 0, ptr %3, align 8
  store i32 %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %7 = call i32 @device_for_each_child(ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull @find_service_iter) #8
  %8 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @find_service_iter(ptr noundef %0, ptr nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.portdrv_service_data, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @pcie_port_bus_type
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -44
  store ptr %17, ptr %1, align 4
  %18 = getelementptr inbounds %struct.portdrv_service_data, ptr %1, i32 0, i32 1
  store ptr %0, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %12, %8, %2
  %20 = phi i32 [ 1, %16 ], [ 0, %12 ], [ 0, %8 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_port_device_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = tail call i32 @device_for_each_child(ptr noundef %2, ptr noundef null, ptr noundef nonnull @remove_iter) #8
  tail call void @pci_free_irq_vectors(ptr noundef %0) #8
  tail call void @pci_disable_device(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_iter(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @pcie_port_bus_type
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @device_unregister(ptr noundef %0) #8
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_port_service_register(ptr noundef %0) #0 {
  %2 = load i8, ptr @pcie_ports_disabled, align 1, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %0, i32 0, i32 11
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %0, i32 0, i32 11, i32 1
  store ptr @pcie_port_bus_type, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %0, i32 0, i32 11, i32 8
  store ptr @pcie_port_probe_service, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %0, i32 0, i32 11, i32 10
  store ptr @pcie_port_remove_service, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %0, i32 0, i32 11, i32 11
  store ptr @pcie_port_shutdown_service, ptr %10, align 4
  %11 = tail call i32 @driver_register(ptr noundef %6) #8
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi i32 [ %11, %4 ], [ -19, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_port_probe_service(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -44
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %5, i32 -40
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 -16
  %16 = tail call i32 %12(ptr noundef %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call ptr @get_device(ptr noundef nonnull %0) #8
  br label %20

20:                                               ; preds = %18, %14, %10, %3, %1
  %21 = phi i32 [ 0, %18 ], [ -19, %3 ], [ -19, %1 ], [ -19, %10 ], [ %16, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcie_port_remove_service(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = getelementptr i8, ptr %5, i32 -44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -36
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %8) #8
  tail call void @put_device(ptr noundef nonnull %0) #8
  br label %16

16:                                               ; preds = %15, %11, %7, %3, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @pcie_port_shutdown_service(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_port_service_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pcie_port_service_driver, ptr %0, i32 0, i32 11
  tail call void @driver_unregister(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_pme_interrupt_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_pcie_device(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @kfree(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
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
!9 = !{!"auto-init"}
