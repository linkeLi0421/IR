; ModuleID = '/llk/IR/drivers/pci/rom.c_pt.bc'
source_filename = "../drivers/pci/rom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_map_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_map_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_map_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_unmap_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_unmap_rom\22\09\09\09\09\09"
module asm "__kstrtabns_pci_unmap_rom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
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

@__kstrtab_pci_enable_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_rom to i32), ptr @__kstrtab_pci_enable_rom, ptr @__kstrtabns_pci_enable_rom }, section "___ksymtab_gpl+pci_enable_rom", align 4
@__kstrtab_pci_disable_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_rom to i32), ptr @__kstrtab_pci_disable_rom, ptr @__kstrtabns_pci_disable_rom }, section "___ksymtab_gpl+pci_disable_rom", align 4
@__kstrtab_pci_map_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_map_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_map_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_map_rom to i32), ptr @__kstrtab_pci_map_rom, ptr @__kstrtabns_pci_map_rom }, section "___ksymtab+pci_map_rom", align 4
@__kstrtab_pci_unmap_rom = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_unmap_rom = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_unmap_rom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_unmap_rom to i32), ptr @__kstrtab_pci_unmap_rom, ptr @__kstrtabns_pci_unmap_rom }, section "___ksymtab+pci_unmap_rom", align 4
@.str = private unnamed_addr constant [63 x i8] c"Invalid PCI ROM header signature: expecting 0xaa55, got %#06x\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Invalid PCI ROM data signature: expecting 0x52494350, got %#010x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"No more image in the PCI ROM\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_pci_disable_rom, ptr @__ksymtab_pci_enable_rom, ptr @__ksymtab_pci_map_rom, ptr @__ksymtab_pci_unmap_rom], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_rom(ptr noundef %0) #0 {
  %2 = alloca %struct.pci_bus_region, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @pcibios_resource_to_bus(ptr noundef %13, ptr noundef nonnull %2, ptr noundef %4) #5
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  %15 = load i8, ptr %14, align 8
  %16 = zext i8 %15 to i32
  %17 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %3) #5
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 2046
  %20 = load i32, ptr %2, align 8
  %21 = or i32 %19, %20
  %22 = or i32 %21, 1
  store i32 %22, ptr %3, align 4
  %23 = load i8, ptr %14, align 8
  %24 = zext i8 %23 to i32
  %25 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %24, i32 noundef %22) #5
  br label %26

26:                                               ; preds = %11, %8, %1
  %27 = phi i32 [ 0, %11 ], [ -1, %1 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_disable_rom(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  %9 = load i8, ptr %8, align 8
  %10 = zext i8 %9 to i32
  %11 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %10, ptr noundef nonnull %2) #5
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, -2
  store i32 %13, ptr %2, align 4
  %14 = load i8, ptr %8, align 8
  %15 = zext i8 %14 to i32
  %16 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %15, i32 noundef %13) #5
  br label %17

17:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_map_rom(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus_region, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = tail call i32 @pci_assign_resource(ptr noundef %0, i32 noundef 6) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %115

13:                                               ; preds = %10, %2
  %14 = load i32, ptr %6, align 8
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = sub i32 1, %14
  %19 = add i32 %18, %16
  %20 = select i1 %17, i32 0, i32 %19
  store i32 %20, ptr %1, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %115, label %22

22:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %27 = and i32 %24, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  call void @pcibios_resource_to_bus(ptr noundef %31, ptr noundef nonnull %4, ptr noundef %6) #5
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  %33 = load i8, ptr %32, align 8
  %34 = zext i8 %33 to i32
  %35 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %5) #5
  %36 = load i32, ptr %5, align 4
  %37 = and i32 %36, 2046
  %38 = load i32, ptr %4, align 8
  %39 = or i32 %38, %37
  %40 = or i32 %39, 1
  store i32 %40, ptr %5, align 4
  %41 = load i8, ptr %32, align 8
  %42 = zext i8 %41 to i32
  %43 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %42, i32 noundef %40) #5
  %44 = load i32, ptr %1, align 4
  br label %46

45:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  br label %115

46:                                               ; preds = %29, %26
  %47 = phi i32 [ %44, %29 ], [ %19, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %48 = call ptr @ioremap(i32 noundef %14, i32 noundef %47) #5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %97, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %1, align 4
  %52 = getelementptr i8, ptr %48, i32 %51
  br label %53

53:                                               ; preds = %87, %50
  %54 = phi ptr [ %48, %50 ], [ %78, %87 ]
  %55 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %56 = icmp eq i16 %55, -21931
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %59 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %60 = zext i16 %59 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str, i32 noundef %60) #6
  br label %89

61:                                               ; preds = %53
  %62 = getelementptr i8, ptr %54, i32 24
  %63 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %62) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %54, i32 %64
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %67 = icmp eq i32 %66, 1380533072
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #5, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.1, i32 noundef %70) #6
  br label %89

71:                                               ; preds = %61
  %72 = getelementptr i8, ptr %65, i32 21
  %73 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %72) #5, !srcloc !16
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %74 = getelementptr i8, ptr %65, i32 16
  %75 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %74) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %76 = zext i16 %75 to i32
  %77 = shl nuw nsw i32 %76, 9
  %78 = getelementptr i8, ptr %54, i32 %77
  %79 = icmp ult ptr %78, %52
  %80 = icmp sgt i8 %73, -1
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %78) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %84 = icmp eq i16 %83, -21931
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.2) #6
  br label %89

87:                                               ; preds = %82
  %88 = icmp eq i16 %75, 0
  br i1 %88, label %89, label %53

89:                                               ; preds = %87, %85, %71, %68, %57
  %90 = phi ptr [ %78, %85 ], [ %54, %68 ], [ %54, %57 ], [ %78, %87 ], [ %78, %71 ]
  %91 = ptrtoint ptr %90 to i32
  %92 = ptrtoint ptr %48 to i32
  %93 = sub i32 %91, %92
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 %51) #5
  store i32 %94, ptr %1, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %89
  call void @iounmap(ptr noundef nonnull %48) #5
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i32, ptr %23, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %102 = and i32 %98, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  %106 = load i8, ptr %105, align 8
  %107 = zext i8 %106 to i32
  %108 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %107, ptr noundef nonnull %3) #5
  %109 = load i32, ptr %3, align 4
  %110 = and i32 %109, -2
  store i32 %110, ptr %3, align 4
  %111 = load i8, ptr %105, align 8
  %112 = zext i8 %111 to i32
  %113 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %112, i32 noundef %110) #5
  br label %114

114:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %115

115:                                              ; preds = %114, %97, %89, %45, %13, %10
  %116 = phi ptr [ null, %10 ], [ null, %13 ], [ null, %45 ], [ %48, %89 ], [ null, %114 ], [ null, %97 ]
  ret ptr %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_unmap_rom(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  tail call void @iounmap(ptr noundef %1) #5
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 22
  %13 = load i8, ptr %12, align 8
  %14 = zext i8 %13 to i32
  %15 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %3) #5
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, -2
  store i32 %17, ptr %3, align 4
  %18 = load i8, ptr %12, align 8
  %19 = zext i8 %18 to i32
  %20 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %19, i32 noundef %17) #5
  br label %21

21:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 3818307}
!10 = !{i64 2153174876}
!11 = !{i64 2153176112}
!12 = !{i64 2153176425}
!13 = !{i64 3819145}
!14 = !{i64 2153176717}
!15 = !{i64 2153177962}
!16 = !{i64 3818925}
!17 = !{i64 2153178147}
!18 = !{i64 2153178454}
!19 = !{i64 2153178752}
