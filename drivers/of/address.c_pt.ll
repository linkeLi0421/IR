; ModuleID = '/llk/IR/drivers/of/address.c_pt.bc'
source_filename = "../drivers/of/address.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_address_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_address_to_resource\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_address_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_range_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_range_to_resource\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_range_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_translate_address:\09\09\09\09\09"
module asm "\09.asciz \09\22of_translate_address\22\09\09\09\09\09"
module asm "__kstrtabns_of_translate_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_translate_dma_address:\09\09\09\09\09"
module asm "\09.asciz \09\22of_translate_dma_address\22\09\09\09\09\09"
module asm "__kstrtabns_of_translate_dma_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___of_get_address:\09\09\09\09\09"
module asm "\09.asciz \09\22__of_get_address\22\09\09\09\09\09"
module asm "__kstrtabns___of_get_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_range_parser_init:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_range_parser_init\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_range_parser_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_dma_range_parser_init:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_dma_range_parser_init\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_dma_range_parser_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_range_parser_one:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_range_parser_one\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_range_parser_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_address_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22of_address_to_resource\22\09\09\09\09\09"
module asm "__kstrtabns_of_address_to_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22of_iomap\22\09\09\09\09\09"
module asm "__kstrtabns_of_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_io_request_and_map:\09\09\09\09\09"
module asm "\09.asciz \09\22of_io_request_and_map\22\09\09\09\09\09"
module asm "__kstrtabns_of_io_request_and_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_is_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_is_coherent\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_is_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_bus = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.logic_pio_hwaddr = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.of_pci_range = type { %union.anon.65, i64, i64, i32 }
%union.anon.65 = type { i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_pci_range_parser = type { ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.bus_dma_region = type { i32, i32, i64, i64 }

@__kstrtab_of_pci_address_to_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_address_to_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_address_to_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_address_to_resource to i32), ptr @__kstrtab_of_pci_address_to_resource, ptr @__kstrtabns_of_pci_address_to_resource }, section "___ksymtab_gpl+of_pci_address_to_resource", align 4
@__kstrtab_of_pci_range_to_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_range_to_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_range_to_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_range_to_resource to i32), ptr @__kstrtab_of_pci_range_to_resource, ptr @__kstrtabns_of_pci_range_to_resource }, section "___ksymtab+of_pci_range_to_resource", align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@__kstrtab_of_translate_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_translate_address = external dso_local constant [0 x i8], align 1
@__ksymtab_of_translate_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_translate_address to i32), ptr @__kstrtab_of_translate_address, ptr @__kstrtabns_of_translate_address }, section "___ksymtab+of_translate_address", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"dma-ranges\00", align 1
@__kstrtab_of_translate_dma_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_translate_dma_address = external dso_local constant [0 x i8], align 1
@__ksymtab_of_translate_dma_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_translate_dma_address to i32), ptr @__kstrtab_of_translate_dma_address, ptr @__kstrtabns_of_translate_dma_address }, section "___ksymtab+of_translate_dma_address", align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@__kstrtab___of_get_address = external dso_local constant [0 x i8], align 1
@__kstrtabns___of_get_address = external dso_local constant [0 x i8], align 1
@__ksymtab___of_get_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__of_get_address to i32), ptr @__kstrtab___of_get_address, ptr @__kstrtabns___of_get_address }, section "___ksymtab+__of_get_address", align 4
@__kstrtab_of_pci_range_parser_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_range_parser_init = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_range_parser_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_range_parser_init to i32), ptr @__kstrtab_of_pci_range_parser_init, ptr @__kstrtabns_of_pci_range_parser_init }, section "___ksymtab_gpl+of_pci_range_parser_init", align 4
@__kstrtab_of_pci_dma_range_parser_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_dma_range_parser_init = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_dma_range_parser_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_dma_range_parser_init to i32), ptr @__kstrtab_of_pci_dma_range_parser_init, ptr @__kstrtabns_of_pci_dma_range_parser_init }, section "___ksymtab_gpl+of_pci_dma_range_parser_init", align 4
@__kstrtab_of_pci_range_parser_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_range_parser_one = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_range_parser_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_range_parser_one to i32), ptr @__kstrtab_of_pci_range_parser_one, ptr @__kstrtabns_of_pci_range_parser_one }, section "___ksymtab_gpl+of_pci_range_parser_one", align 4
@__kstrtab_of_address_to_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_address_to_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_of_address_to_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_address_to_resource to i32), ptr @__kstrtab_of_address_to_resource, ptr @__kstrtabns_of_address_to_resource }, section "___ksymtab_gpl+of_address_to_resource", align 4
@__kstrtab_of_iomap = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_iomap = external dso_local constant [0 x i8], align 1
@__ksymtab_of_iomap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_iomap to i32), ptr @__kstrtab_of_iomap, ptr @__kstrtabns_of_iomap }, section "___ksymtab+of_iomap", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@__kstrtab_of_io_request_and_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_io_request_and_map = external dso_local constant [0 x i8], align 1
@__ksymtab_of_io_request_and_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_io_request_and_map to i32), ptr @__kstrtab_of_io_request_and_map, ptr @__kstrtabns_of_io_request_and_map }, section "___ksymtab+of_io_request_and_map", align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"\013OF: translation of DMA address(%llx) to CPU address failed node(%pOF)\0A\00", align 1
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@__kstrtab_of_dma_is_coherent = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_is_coherent = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_is_coherent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_is_coherent to i32), ptr @__kstrtab_of_dma_is_coherent, ptr @__kstrtabns_of_dma_is_coherent }, section "___ksymtab_gpl+of_dma_is_coherent", align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"\013OF: Bad cell count for %pOF\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"interconnect-names\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"dma-mem\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@of_busses = internal global [3 x %struct.of_bus] [%struct.of_bus { ptr @.str.2, ptr @.str.13, ptr @of_bus_pci_match, ptr @of_bus_pci_count_cells, ptr @of_bus_pci_map, ptr @of_bus_pci_translate, i8 1, ptr @of_bus_pci_get_flags }, %struct.of_bus { ptr @.str.14, ptr @.str.15, ptr @of_bus_isa_match, ptr @of_bus_isa_count_cells, ptr @of_bus_isa_map, ptr @of_bus_isa_translate, i8 1, ptr @of_bus_isa_get_flags }, %struct.of_bus { ptr @.str.16, ptr @.str.15, ptr null, ptr @of_bus_default_count_cells, ptr @of_bus_default_map, ptr @of_bus_default_translate, i8 0, ptr @of_bus_default_get_flags }], align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"assigned-addresses\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"pciex\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"vci\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ht\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@of_node_is_pcie.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"\014OF: %pOF: Missing device_type\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___of_get_address, ptr @__ksymtab_of_address_to_resource, ptr @__ksymtab_of_dma_is_coherent, ptr @__ksymtab_of_io_request_and_map, ptr @__ksymtab_of_iomap, ptr @__ksymtab_of_pci_address_to_resource, ptr @__ksymtab_of_pci_dma_range_parser_init, ptr @__ksymtab_of_pci_range_parser_init, ptr @__ksymtab_of_pci_range_parser_one, ptr @__ksymtab_of_pci_range_to_resource, ptr @__ksymtab_of_translate_address, ptr @__ksymtab_of_translate_dma_address], section "llvm.metadata"
@switch.table.of_bus_pci_get_flags = private unnamed_addr constant [3 x i32] [i32 256, i32 512, i32 1049088], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pci_address_to_resource(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @__of_address_to_resource(ptr noundef %0, i32 noundef -1, i32 noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__of_address_to_resource(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  store i64 0, ptr %11, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store ptr null, ptr %13, align 4
  %14 = call ptr @__of_get_address(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %224, label %16

16:                                               ; preds = %4
  %17 = icmp sgt i32 %1, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %13, i32 noundef 1, i32 noundef %1) #15
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, ptr %12, align 4
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %202

24:                                               ; preds = %20
  %25 = and i32 %21, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %224, label %27

27:                                               ; preds = %24
  %28 = load i64, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #15, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !8
  %29 = call ptr @of_node_get(ptr noundef %0) #15
  %30 = call ptr @of_get_parent(ptr noundef %0) #15, !callees !9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %186, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = call i32 %33(ptr noundef nonnull %30) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = call i32 %39(ptr noundef nonnull %30) #15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = call i32 %45(ptr noundef nonnull %30) #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

51:                                               ; preds = %47, %44, %41, %38, %35, %32
  %52 = phi i32 [ 0, %35 ], [ 0, %32 ], [ 1, %38 ], [ 1, %41 ], [ 2, %44 ], [ 2, %47 ]
  %53 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %52, i32 3
  %54 = load ptr, ptr %53, align 4
  call void %54(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %55 = load i32, ptr %7, align 4
  %56 = add i32 %55, -1
  %57 = icmp ult i32 %56, 4
  %58 = load i32, ptr %8, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %186

61:                                               ; preds = %51
  %62 = shl nuw nsw i32 %55, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %6, ptr nonnull align 4 %14, i32 %62, i1 false) #15
  call void @of_node_put(ptr noundef %0) #15
  %63 = call ptr @of_get_parent(ptr noundef nonnull %30) #15, !callees !9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %181, %61
  %66 = phi ptr [ %30, %61 ], [ %76, %181 ]
  %67 = load i32, ptr %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %186, label %69

69:                                               ; preds = %65
  %70 = shl i32 %67, 2
  %71 = add i32 %70, -4
  %72 = getelementptr i8, ptr %6, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @llvm.bswap.i32(i32 %73) #15
  br label %186

75:                                               ; preds = %181, %61
  %76 = phi ptr [ %184, %181 ], [ %63, %61 ]
  %77 = phi ptr [ %76, %181 ], [ %30, %61 ]
  %78 = phi i32 [ %118, %181 ], [ %52, %61 ]
  %79 = getelementptr inbounds %struct.device_node, ptr %77, i32 0, i32 3
  %80 = call ptr @find_io_range_by_fwnode(ptr noundef %79) #15
  %81 = icmp eq ptr %80, null
  br i1 %81, label %98, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %80, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  %87 = load i32, ptr %7, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = shl i32 %87, 2
  %91 = add i32 %90, -4
  %92 = getelementptr i8, ptr %6, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #15
  br label %95

95:                                               ; preds = %89, %86
  %96 = phi i32 [ 0, %86 ], [ %94, %89 ]
  %97 = call ptr @of_node_get(ptr noundef nonnull %77) #15
  br label %186

98:                                               ; preds = %82, %75
  %99 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %117, label %101

101:                                              ; preds = %98
  %102 = call i32 %99(ptr noundef nonnull %76) #15
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  %108 = call i32 %105(ptr noundef nonnull %76) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = call i32 %111(ptr noundef nonnull %76) #15
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

117:                                              ; preds = %113, %110, %107, %104, %101, %98
  %118 = phi i32 [ 0, %101 ], [ 0, %98 ], [ 1, %104 ], [ 1, %107 ], [ 2, %110 ], [ 2, %113 ]
  %119 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %118, i32 3
  %120 = load ptr, ptr %119, align 4
  call void %120(ptr noundef nonnull %77, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %121 = load i32, ptr %9, align 4
  %122 = add i32 %121, -1
  %123 = icmp ult i32 %122, 4
  %124 = load i32, ptr %10, align 4
  %125 = icmp sgt i32 %124, 0
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %129, label %127

127:                                              ; preds = %117
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %77) #16
  br label %186

129:                                              ; preds = %117
  %130 = load i32, ptr %7, align 4
  %131 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  %132 = call ptr @of_get_property(ptr noundef nonnull %77, ptr noundef nonnull @.str, ptr noundef nonnull %5) #15
  %133 = icmp eq ptr %132, null
  br i1 %133, label %174, label %134

134:                                              ; preds = %129
  %135 = load i32, ptr %5, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %134
  %138 = icmp eq i32 %130, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %139, %137
  %140 = phi i64 [ %148, %139 ], [ 0, %137 ]
  %141 = phi i32 [ %143, %139 ], [ %130, %137 ]
  %142 = phi ptr [ %149, %139 ], [ %6, %137 ]
  %143 = add i32 %141, -1
  %144 = shl i64 %140, 32
  %145 = load i32, ptr %142, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145) #15
  %147 = zext i32 %146 to i64
  %148 = or i64 %144, %147
  %149 = getelementptr i32, ptr %142, i32 1
  %150 = icmp eq i32 %143, 0
  br i1 %150, label %151, label %139

151:                                              ; preds = %139, %137
  %152 = phi i64 [ 0, %137 ], [ %148, %139 ]
  %153 = shl i32 %121, 2
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %6, i8 0, i32 %153, i1 false) #15
  br label %175

154:                                              ; preds = %134
  %155 = lshr i32 %135, 2
  store i32 %155, ptr %5, align 4
  %156 = add i32 %130, %121
  %157 = add i32 %156, %131
  %158 = icmp ult i32 %155, %157
  br i1 %158, label %174, label %159

159:                                              ; preds = %154
  %160 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %78, i32 4
  br label %161

161:                                              ; preds = %166, %159
  %162 = phi ptr [ %132, %159 ], [ %169, %166 ]
  %163 = load ptr, ptr %160, align 4
  %164 = call i64 %163(ptr noundef nonnull %6, ptr noundef %162, i32 noundef %130, i32 noundef %131, i32 noundef %121) #15
  %165 = icmp eq i64 %164, -1
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32, ptr %5, align 4
  %168 = sub i32 %167, %157
  store i32 %168, ptr %5, align 4
  %169 = getelementptr i32, ptr %162, i32 %157
  %170 = icmp ult i32 %168, %157
  br i1 %170, label %174, label %161

171:                                              ; preds = %161
  %172 = getelementptr i32, ptr %162, i32 %130
  %173 = shl i32 %121, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %6, ptr align 4 %172, i32 %173, i1 false) #15
  br label %175

174:                                              ; preds = %166, %154, %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %186

175:                                              ; preds = %171, %151
  %176 = phi i64 [ %152, %151 ], [ %164, %171 ]
  %177 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %118, i32 5
  %178 = load ptr, ptr %177, align 4
  %179 = call i32 %178(ptr noundef nonnull %6, i64 noundef %176, i32 noundef %121) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load i32, ptr %9, align 4
  store i32 %182, ptr %7, align 4
  %183 = load i32, ptr %10, align 4
  store i32 %183, ptr %8, align 4
  call void @of_node_put(ptr noundef %77) #15
  %184 = call ptr @of_get_parent(ptr noundef nonnull %76) #15, !callees !9
  %185 = icmp eq ptr %184, null
  br i1 %185, label %65, label %75

186:                                              ; preds = %175, %174, %127, %95, %69, %65, %51, %27
  %187 = phi ptr [ null, %27 ], [ null, %65 ], [ null, %174 ], [ null, %127 ], [ %97, %95 ], [ null, %51 ], [ null, %69 ], [ null, %175 ]
  %188 = phi i32 [ -1, %27 ], [ 0, %65 ], [ -1, %174 ], [ -1, %127 ], [ %96, %95 ], [ -1, %51 ], [ %74, %69 ], [ -1, %175 ]
  %189 = phi ptr [ null, %27 ], [ null, %65 ], [ %76, %174 ], [ %76, %127 ], [ %76, %95 ], [ %30, %51 ], [ null, %69 ], [ %76, %175 ]
  %190 = phi ptr [ %0, %27 ], [ %66, %65 ], [ %77, %174 ], [ %77, %127 ], [ %77, %95 ], [ %0, %51 ], [ %66, %69 ], [ %77, %175 ]
  call void @of_node_put(ptr noundef %189) #15
  call void @of_node_put(ptr noundef %190) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  %191 = icmp eq ptr %187, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.device_node, ptr %187, i32 0, i32 3
  %194 = trunc i64 %28 to i32
  %195 = call i32 @logic_pio_trans_hwaddr(ptr noundef %193, i32 noundef %188, i32 noundef %194) #15
  call void @of_node_put(ptr noundef nonnull %187) #15
  br label %198

196:                                              ; preds = %186
  %197 = call i32 @pci_address_to_pio(i32 noundef %188) #15
  br label %198

198:                                              ; preds = %196, %192
  %199 = phi i32 [ %195, %192 ], [ %197, %196 ]
  %200 = icmp eq i32 %199, -1
  %201 = zext i32 %199 to i64
  br i1 %200, label %224, label %205

202:                                              ; preds = %20
  %203 = call i64 @of_translate_address(ptr noundef %0, ptr noundef nonnull %14)
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %224, label %205

205:                                              ; preds = %202, %198
  %206 = phi i64 [ %203, %202 ], [ %201, %198 ]
  %207 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %207, i8 0, i32 24, i1 false)
  %208 = trunc i64 %206 to i32
  store i32 %208, ptr %3, align 4
  %209 = load i64, ptr %11, align 8
  %210 = add i64 %209, %206
  %211 = trunc i64 %210 to i32
  %212 = add i32 %211, -1
  %213 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  store i32 %212, ptr %213, align 4
  %214 = load i32, ptr %12, align 4
  %215 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  store i32 %214, ptr %215, align 4
  %216 = load ptr, ptr %13, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %205
  %219 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %220 = load ptr, ptr %219, align 4
  br label %221

221:                                              ; preds = %218, %205
  %222 = phi ptr [ %220, %218 ], [ %216, %205 ]
  %223 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 2
  store ptr %222, ptr %223, align 4
  br label %224

224:                                              ; preds = %221, %202, %198, %24, %4
  %225 = phi i32 [ 0, %221 ], [ -22, %4 ], [ -22, %24 ], [ -22, %202 ], [ -22, %198 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  ret i32 %225
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pci_range_to_resource(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.of_pci_range, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 6
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 7
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 5
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = and i32 %5, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %17 = getelementptr inbounds %struct.of_pci_range, ptr %0, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.of_pci_range, ptr %0, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = tail call i32 @pci_register_io_range(ptr noundef %16, i32 noundef %19, i32 noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %15
  %26 = load i64, ptr %17, align 8
  %27 = trunc i64 %26 to i32
  %28 = tail call i32 @pci_address_to_pio(i32 noundef %27) #15
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %43, label %36

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.of_pci_range, ptr %0, i32 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = trunc i64 %32 to i32
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi i32 [ %35, %34 ], [ %28, %25 ]
  store i32 %37, ptr %2, align 4
  %38 = getelementptr inbounds %struct.of_pci_range, ptr %0, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = add i32 %37, -1
  %42 = add i32 %41, %40
  br label %45

43:                                               ; preds = %30, %25, %15
  %44 = phi i32 [ -22, %30 ], [ -22, %25 ], [ %23, %15 ]
  store i32 -1, ptr %2, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i32 [ -1, %43 ], [ %42, %36 ]
  %47 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %48 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  store i32 %46, ptr %48, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_register_io_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_address_to_pio(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @of_translate_address(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #15, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = tail call ptr @of_node_get(ptr noundef %0) #15
  %10 = tail call ptr @of_get_parent(ptr noundef %0) #15, !callees !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %181, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = tail call i32 %13(ptr noundef nonnull %10) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = tail call i32 %19(ptr noundef nonnull %10) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = tail call i32 %25(ptr noundef nonnull %10) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

31:                                               ; preds = %27, %24, %21, %18, %15, %12
  %32 = phi i32 [ 0, %15 ], [ 0, %12 ], [ 1, %18 ], [ 1, %21 ], [ 2, %24 ], [ 2, %27 ]
  %33 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %32, i32 3
  %34 = load ptr, ptr %33, align 4
  call void %34(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %35 = load i32, ptr %5, align 4
  %36 = add i32 %35, -1
  %37 = icmp ult i32 %36, 4
  %38 = load i32, ptr %6, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %181

41:                                               ; preds = %31
  %42 = shl nuw nsw i32 %35, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 4 %1, i32 %42, i1 false) #15
  call void @of_node_put(ptr noundef %0) #15
  %43 = call ptr @of_get_parent(ptr noundef nonnull %10) #15, !callees !9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %176, %41
  %46 = phi ptr [ %10, %41 ], [ %62, %176 ]
  %47 = load i32, ptr %5, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %181, label %49

49:                                               ; preds = %49, %45
  %50 = phi i64 [ %58, %49 ], [ 0, %45 ]
  %51 = phi i32 [ %53, %49 ], [ %47, %45 ]
  %52 = phi ptr [ %59, %49 ], [ %4, %45 ]
  %53 = add i32 %51, -1
  %54 = shl i64 %50, 32
  %55 = load i32, ptr %52, align 4
  %56 = call i32 @llvm.bswap.i32(i32 %55) #15
  %57 = zext i32 %56 to i64
  %58 = or i64 %54, %57
  %59 = getelementptr i32, ptr %52, i32 1
  %60 = icmp eq i32 %53, 0
  br i1 %60, label %181, label %49

61:                                               ; preds = %176, %41
  %62 = phi ptr [ %179, %176 ], [ %43, %41 ]
  %63 = phi ptr [ %62, %176 ], [ %10, %41 ]
  %64 = phi i32 [ %113, %176 ], [ %32, %41 ]
  %65 = getelementptr inbounds %struct.device_node, ptr %63, i32 0, i32 3
  %66 = call ptr @find_io_range_by_fwnode(ptr noundef %65) #15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %93, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %66, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %93, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %5, align 4
  %74 = add i32 %73, -1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds i32, ptr %4, i32 1
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i64 [ %87, %78 ], [ 0, %76 ]
  %80 = phi i32 [ %82, %78 ], [ %74, %76 ]
  %81 = phi ptr [ %88, %78 ], [ %77, %76 ]
  %82 = add i32 %80, -1
  %83 = shl i64 %79, 32
  %84 = load i32, ptr %81, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #15
  %86 = zext i32 %85 to i64
  %87 = or i64 %83, %86
  %88 = getelementptr i32, ptr %81, i32 1
  %89 = icmp eq i32 %82, 0
  br i1 %89, label %90, label %78

90:                                               ; preds = %78, %72
  %91 = phi i64 [ 0, %72 ], [ %87, %78 ]
  %92 = call ptr @of_node_get(ptr noundef nonnull %63) #15
  br label %181

93:                                               ; preds = %68, %61
  %94 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %112, label %96

96:                                               ; preds = %93
  %97 = call i32 %94(ptr noundef nonnull %62) #15
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %99
  %103 = call i32 %100(ptr noundef nonnull %62) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = call i32 %106(ptr noundef nonnull %62) #15
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

112:                                              ; preds = %108, %105, %102, %99, %96, %93
  %113 = phi i32 [ 0, %96 ], [ 0, %93 ], [ 1, %99 ], [ 1, %102 ], [ 2, %105 ], [ 2, %108 ]
  %114 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %113, i32 3
  %115 = load ptr, ptr %114, align 4
  call void %115(ptr noundef nonnull %63, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %116 = load i32, ptr %7, align 4
  %117 = add i32 %116, -1
  %118 = icmp ult i32 %117, 4
  %119 = load i32, ptr %8, align 4
  %120 = icmp sgt i32 %119, 0
  %121 = select i1 %118, i1 %120, i1 false
  br i1 %121, label %124, label %122

122:                                              ; preds = %112
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %63) #16
  br label %181

124:                                              ; preds = %112
  %125 = load i32, ptr %5, align 4
  %126 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %127 = call ptr @of_get_property(ptr noundef nonnull %63, ptr noundef nonnull @.str, ptr noundef nonnull %3) #15
  %128 = icmp eq ptr %127, null
  br i1 %128, label %169, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr %3, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %129
  %133 = icmp eq i32 %125, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %134, %132
  %135 = phi i64 [ %143, %134 ], [ 0, %132 ]
  %136 = phi i32 [ %138, %134 ], [ %125, %132 ]
  %137 = phi ptr [ %144, %134 ], [ %4, %132 ]
  %138 = add i32 %136, -1
  %139 = shl i64 %135, 32
  %140 = load i32, ptr %137, align 4
  %141 = call i32 @llvm.bswap.i32(i32 %140) #15
  %142 = zext i32 %141 to i64
  %143 = or i64 %139, %142
  %144 = getelementptr i32, ptr %137, i32 1
  %145 = icmp eq i32 %138, 0
  br i1 %145, label %146, label %134

146:                                              ; preds = %134, %132
  %147 = phi i64 [ 0, %132 ], [ %143, %134 ]
  %148 = shl i32 %116, 2
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %4, i8 0, i32 %148, i1 false) #15
  br label %170

149:                                              ; preds = %129
  %150 = lshr i32 %130, 2
  store i32 %150, ptr %3, align 4
  %151 = add i32 %125, %116
  %152 = add i32 %151, %126
  %153 = icmp ult i32 %150, %152
  br i1 %153, label %169, label %154

154:                                              ; preds = %149
  %155 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %64, i32 4
  br label %156

156:                                              ; preds = %161, %154
  %157 = phi ptr [ %127, %154 ], [ %164, %161 ]
  %158 = load ptr, ptr %155, align 4
  %159 = call i64 %158(ptr noundef nonnull %4, ptr noundef %157, i32 noundef %125, i32 noundef %126, i32 noundef %116) #15
  %160 = icmp eq i64 %159, -1
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load i32, ptr %3, align 4
  %163 = sub i32 %162, %152
  store i32 %163, ptr %3, align 4
  %164 = getelementptr i32, ptr %157, i32 %152
  %165 = icmp ult i32 %163, %152
  br i1 %165, label %169, label %156

166:                                              ; preds = %156
  %167 = getelementptr i32, ptr %157, i32 %125
  %168 = shl i32 %116, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr align 4 %167, i32 %168, i1 false) #15
  br label %170

169:                                              ; preds = %161, %149, %124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %181

170:                                              ; preds = %166, %146
  %171 = phi i64 [ %147, %146 ], [ %159, %166 ]
  %172 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %113, i32 5
  %173 = load ptr, ptr %172, align 4
  %174 = call i32 %173(ptr noundef nonnull %4, i64 noundef %171, i32 noundef %116) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load i32, ptr %7, align 4
  store i32 %177, ptr %5, align 4
  %178 = load i32, ptr %8, align 4
  store i32 %178, ptr %6, align 4
  call void @of_node_put(ptr noundef %63) #15
  %179 = call ptr @of_get_parent(ptr noundef nonnull %62) #15, !callees !9
  %180 = icmp eq ptr %179, null
  br i1 %180, label %45, label %61

181:                                              ; preds = %170, %169, %122, %90, %49, %45, %31, %2
  %182 = phi ptr [ null, %2 ], [ null, %45 ], [ null, %169 ], [ null, %122 ], [ %92, %90 ], [ null, %31 ], [ null, %49 ], [ null, %170 ]
  %183 = phi i64 [ -1, %2 ], [ 0, %45 ], [ -1, %169 ], [ -1, %122 ], [ %91, %90 ], [ -1, %31 ], [ %58, %49 ], [ -1, %170 ]
  %184 = phi ptr [ null, %2 ], [ null, %45 ], [ %62, %169 ], [ %62, %122 ], [ %62, %90 ], [ %10, %31 ], [ null, %49 ], [ %62, %170 ]
  %185 = phi ptr [ %0, %2 ], [ %46, %45 ], [ %63, %169 ], [ %63, %122 ], [ %63, %90 ], [ %0, %31 ], [ %46, %49 ], [ %63, %170 ]
  call void @of_node_put(ptr noundef %184) #15
  call void @of_node_put(ptr noundef %185) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %186 = icmp eq ptr %182, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %181
  call void @of_node_put(ptr noundef nonnull %182) #15
  br label %188

188:                                              ; preds = %187, %181
  %189 = phi i64 [ -1, %187 ], [ %183, %181 ]
  ret i64 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @of_translate_dma_address(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #15, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 0, ptr %11, align 4, !annotation !8
  %12 = tail call ptr @of_node_get(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !8
  %13 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #15
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call ptr @of_get_parent(ptr noundef %0) #15
  br label %25

17:                                               ; preds = %2
  %18 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef -1, i32 noundef %13, ptr noundef nonnull %3) #15
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call ptr @of_get_parent(ptr noundef %0) #15
  br label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @of_node_get(ptr noundef %23) #15
  br label %25

25:                                               ; preds = %22, %20, %15
  %26 = phi ptr [ %16, %15 ], [ %21, %20 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %27 = icmp eq ptr %26, null
  br i1 %27, label %223, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %28
  %32 = call i32 %29(ptr noundef nonnull %26) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = call i32 %35(ptr noundef nonnull %26) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = call i32 %41(ptr noundef nonnull %26) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

47:                                               ; preds = %43, %40, %37, %34, %31, %28
  %48 = phi i32 [ 0, %31 ], [ 0, %28 ], [ 1, %34 ], [ 1, %37 ], [ 2, %40 ], [ 2, %43 ]
  %49 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %48, i32 3
  %50 = load ptr, ptr %49, align 4
  call void %50(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %51 = load i32, ptr %8, align 4
  %52 = add i32 %51, -1
  %53 = icmp ult i32 %52, 4
  %54 = load i32, ptr %9, align 4
  %55 = icmp sgt i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %223

57:                                               ; preds = %47
  %58 = shl nuw nsw i32 %51, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %7, ptr align 4 %1, i32 %58, i1 false) #15
  call void @of_node_put(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #15, !annotation !8
  %59 = call i32 @of_property_match_string(ptr noundef nonnull %26, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #15
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call ptr @of_get_parent(ptr noundef nonnull %26) #15
  br label %71

63:                                               ; preds = %57
  %64 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %26, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef -1, i32 noundef %59, ptr noundef nonnull %4) #15
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call ptr @of_get_parent(ptr noundef nonnull %26) #15
  br label %71

68:                                               ; preds = %63
  %69 = load ptr, ptr %4, align 4
  %70 = call ptr @of_node_get(ptr noundef %69) #15
  br label %71

71:                                               ; preds = %68, %66, %61
  %72 = phi ptr [ %62, %61 ], [ %67, %66 ], [ %70, %68 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #15
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %220, %71
  %75 = phi ptr [ %26, %71 ], [ %91, %220 ]
  %76 = load i32, ptr %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %223, label %78

78:                                               ; preds = %78, %74
  %79 = phi i64 [ %87, %78 ], [ 0, %74 ]
  %80 = phi i32 [ %82, %78 ], [ %76, %74 ]
  %81 = phi ptr [ %88, %78 ], [ %7, %74 ]
  %82 = add i32 %80, -1
  %83 = shl i64 %79, 32
  %84 = load i32, ptr %81, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #15
  %86 = zext i32 %85 to i64
  %87 = or i64 %83, %86
  %88 = getelementptr i32, ptr %81, i32 1
  %89 = icmp eq i32 %82, 0
  br i1 %89, label %223, label %78

90:                                               ; preds = %220, %71
  %91 = phi ptr [ %221, %220 ], [ %72, %71 ]
  %92 = phi ptr [ %91, %220 ], [ %26, %71 ]
  %93 = phi i32 [ %142, %220 ], [ %48, %71 ]
  %94 = getelementptr inbounds %struct.device_node, ptr %92, i32 0, i32 3
  %95 = call ptr @find_io_range_by_fwnode(ptr noundef %94) #15
  %96 = icmp eq ptr %95, null
  br i1 %96, label %122, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %95, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %122, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %8, align 4
  %103 = add i32 %102, -1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds i32, ptr %7, i32 1
  br label %107

107:                                              ; preds = %107, %105
  %108 = phi i64 [ %116, %107 ], [ 0, %105 ]
  %109 = phi i32 [ %111, %107 ], [ %103, %105 ]
  %110 = phi ptr [ %117, %107 ], [ %106, %105 ]
  %111 = add i32 %109, -1
  %112 = shl i64 %108, 32
  %113 = load i32, ptr %110, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #15
  %115 = zext i32 %114 to i64
  %116 = or i64 %112, %115
  %117 = getelementptr i32, ptr %110, i32 1
  %118 = icmp eq i32 %111, 0
  br i1 %118, label %119, label %107

119:                                              ; preds = %107, %101
  %120 = phi i64 [ 0, %101 ], [ %116, %107 ]
  %121 = call ptr @of_node_get(ptr noundef nonnull %92) #15
  br label %223

122:                                              ; preds = %97, %90
  %123 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %141, label %125

125:                                              ; preds = %122
  %126 = call i32 %123(ptr noundef nonnull %91) #15
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = call i32 %129(ptr noundef nonnull %91) #15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = call i32 %135(ptr noundef nonnull %91) #15
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

141:                                              ; preds = %137, %134, %131, %128, %125, %122
  %142 = phi i32 [ 0, %125 ], [ 0, %122 ], [ 1, %128 ], [ 1, %131 ], [ 2, %134 ], [ 2, %137 ]
  %143 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %142, i32 3
  %144 = load ptr, ptr %143, align 4
  call void %144(ptr noundef nonnull %92, ptr noundef nonnull %10, ptr noundef nonnull %11) #15
  %145 = load i32, ptr %10, align 4
  %146 = add i32 %145, -1
  %147 = icmp ult i32 %146, 4
  %148 = load i32, ptr %11, align 4
  %149 = icmp sgt i32 %148, 0
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %153, label %151

151:                                              ; preds = %141
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %92) #16
  br label %223

153:                                              ; preds = %141
  %154 = load i32, ptr %8, align 4
  %155 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  %156 = call ptr @of_get_property(ptr noundef nonnull %92, ptr noundef nonnull @.str.1, ptr noundef nonnull %6) #15
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load i32, ptr %6, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %158, %153
  %162 = icmp eq i32 %154, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %163, %161
  %164 = phi i64 [ %172, %163 ], [ 0, %161 ]
  %165 = phi i32 [ %167, %163 ], [ %154, %161 ]
  %166 = phi ptr [ %173, %163 ], [ %7, %161 ]
  %167 = add i32 %165, -1
  %168 = shl i64 %164, 32
  %169 = load i32, ptr %166, align 4
  %170 = call i32 @llvm.bswap.i32(i32 %169) #15
  %171 = zext i32 %170 to i64
  %172 = or i64 %168, %171
  %173 = getelementptr i32, ptr %166, i32 1
  %174 = icmp eq i32 %167, 0
  br i1 %174, label %175, label %163

175:                                              ; preds = %163, %161
  %176 = phi i64 [ 0, %161 ], [ %172, %163 ]
  %177 = shl i32 %145, 2
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %7, i8 0, i32 %177, i1 false) #15
  br label %199

178:                                              ; preds = %158
  %179 = lshr i32 %159, 2
  store i32 %179, ptr %6, align 4
  %180 = add i32 %154, %145
  %181 = add i32 %180, %155
  %182 = icmp ult i32 %179, %181
  br i1 %182, label %198, label %183

183:                                              ; preds = %178
  %184 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %93, i32 4
  br label %185

185:                                              ; preds = %190, %183
  %186 = phi ptr [ %156, %183 ], [ %193, %190 ]
  %187 = load ptr, ptr %184, align 4
  %188 = call i64 %187(ptr noundef nonnull %7, ptr noundef %186, i32 noundef %154, i32 noundef %155, i32 noundef %145) #15
  %189 = icmp eq i64 %188, -1
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, ptr %6, align 4
  %192 = sub i32 %191, %181
  store i32 %192, ptr %6, align 4
  %193 = getelementptr i32, ptr %186, i32 %181
  %194 = icmp ult i32 %192, %181
  br i1 %194, label %198, label %185

195:                                              ; preds = %185
  %196 = getelementptr i32, ptr %186, i32 %154
  %197 = shl i32 %145, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %7, ptr align 4 %196, i32 %197, i1 false) #15
  br label %199

198:                                              ; preds = %190, %178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %223

199:                                              ; preds = %195, %175
  %200 = phi i64 [ %176, %175 ], [ %188, %195 ]
  %201 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %142, i32 5
  %202 = load ptr, ptr %201, align 4
  %203 = call i32 %202(ptr noundef nonnull %7, i64 noundef %200, i32 noundef %145) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %199
  %206 = load i32, ptr %10, align 4
  store i32 %206, ptr %8, align 4
  %207 = load i32, ptr %11, align 4
  store i32 %207, ptr %9, align 4
  call void @of_node_put(ptr noundef %92) #15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #15, !annotation !8
  %208 = call i32 @of_property_match_string(ptr noundef %91, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #15
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = call ptr @of_get_parent(ptr noundef %91) #15
  br label %220

212:                                              ; preds = %205
  %213 = call i32 @__of_parse_phandle_with_args(ptr noundef %91, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef -1, i32 noundef %208, ptr noundef nonnull %5) #15
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = call ptr @of_get_parent(ptr noundef %91) #15
  br label %220

217:                                              ; preds = %212
  %218 = load ptr, ptr %5, align 4
  %219 = call ptr @of_node_get(ptr noundef %218) #15
  br label %220

220:                                              ; preds = %217, %215, %210
  %221 = phi ptr [ %211, %210 ], [ %216, %215 ], [ %219, %217 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #15
  %222 = icmp eq ptr %221, null
  br i1 %222, label %74, label %90

223:                                              ; preds = %199, %198, %151, %119, %78, %74, %47, %25
  %224 = phi ptr [ null, %25 ], [ null, %74 ], [ null, %198 ], [ null, %151 ], [ %121, %119 ], [ null, %47 ], [ null, %78 ], [ null, %199 ]
  %225 = phi i64 [ -1, %25 ], [ 0, %74 ], [ -1, %198 ], [ -1, %151 ], [ %120, %119 ], [ -1, %47 ], [ %87, %78 ], [ -1, %199 ]
  %226 = phi ptr [ null, %25 ], [ null, %74 ], [ %91, %198 ], [ %91, %151 ], [ %91, %119 ], [ %26, %47 ], [ null, %78 ], [ %91, %199 ]
  %227 = phi ptr [ %0, %25 ], [ %75, %74 ], [ %92, %198 ], [ %92, %151 ], [ %92, %119 ], [ %0, %47 ], [ %75, %78 ], [ %92, %199 ]
  call void @of_node_put(ptr noundef %226) #15
  call void @of_node_put(ptr noundef %227) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  %228 = icmp eq ptr %224, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %223
  call void @of_node_put(ptr noundef nonnull %224) #15
  br label %230

230:                                              ; preds = %229, %223
  %231 = phi i64 [ -1, %229 ], [ %225, %223 ]
  ret i64 %231
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_get_address(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = tail call ptr @of_get_parent(ptr noundef %0) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %106, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = tail call i32 %12(ptr noundef nonnull %9) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = tail call i32 %18(ptr noundef nonnull %9) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = tail call i32 %24(ptr noundef nonnull %9) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

30:                                               ; preds = %26, %23, %20, %17, %14, %11
  %31 = phi i32 [ 0, %14 ], [ 0, %11 ], [ 1, %17 ], [ 1, %20 ], [ 2, %23 ], [ 2, %26 ]
  %32 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @strcmp(ptr noundef %33, ptr noundef nonnull dereferenceable(4) @.str.2)
  %35 = icmp ne i32 %34, 0
  %36 = icmp sgt i32 %2, -1
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @of_node_put(ptr noundef nonnull %9) #15
  br label %106

39:                                               ; preds = %30
  %40 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %31, i32 3
  %41 = load ptr, ptr %40, align 4
  call void %41(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  call void @of_node_put(ptr noundef nonnull %9) #15
  %42 = load i32, ptr %7, align 4
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %106

45:                                               ; preds = %39
  %46 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %31, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call ptr @of_get_property(ptr noundef %0, ptr noundef %47, ptr noundef nonnull %6) #15
  %49 = icmp eq ptr %48, null
  br i1 %49, label %106, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %6, align 4
  %52 = lshr i32 %51, 2
  store i32 %52, ptr %6, align 4
  %53 = load i32, ptr %7, align 4
  %54 = load i32, ptr %8, align 4
  %55 = add i32 %54, %53
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %106, label %57

57:                                               ; preds = %50
  %58 = shl i32 %2, 2
  %59 = add i32 %58, 16
  %60 = icmp sgt i32 %1, -1
  br label %61

61:                                               ; preds = %101, %57
  %62 = phi i32 [ %52, %57 ], [ %102, %101 ]
  %63 = phi i32 [ 0, %57 ], [ %104, %101 ]
  %64 = phi ptr [ %48, %57 ], [ %103, %101 ]
  br i1 %36, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, ptr %64, align 4
  %67 = lshr i32 %66, 24
  %68 = icmp eq i32 %67, %59
  %69 = icmp eq i32 %63, %1
  %70 = select i1 %60, i1 %69, i1 false
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %75, label %101

72:                                               ; preds = %61
  %73 = icmp eq i32 %63, %1
  %74 = select i1 %60, i1 %73, i1 false
  br i1 %74, label %75, label %101

75:                                               ; preds = %72, %65
  %76 = icmp eq ptr %3, null
  br i1 %76, label %95, label %77

77:                                               ; preds = %75
  %78 = icmp eq i32 %54, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %77
  %80 = getelementptr i32, ptr %64, i32 %53
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ %90, %81 ], [ 0, %79 ]
  %83 = phi i32 [ %85, %81 ], [ %54, %79 ]
  %84 = phi ptr [ %91, %81 ], [ %80, %79 ]
  %85 = add i32 %83, -1
  %86 = shl i64 %82, 32
  %87 = load i32, ptr %84, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #15
  %89 = zext i32 %88 to i64
  %90 = or i64 %86, %89
  %91 = getelementptr i32, ptr %84, i32 1
  %92 = icmp eq i32 %85, 0
  br i1 %92, label %93, label %81

93:                                               ; preds = %81, %77
  %94 = phi i64 [ 0, %77 ], [ %90, %81 ]
  store i64 %94, ptr %3, align 8
  br label %95

95:                                               ; preds = %93, %75
  %96 = icmp eq ptr %4, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %95
  %98 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %31, i32 7
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %64) #15
  store i32 %100, ptr %4, align 4
  br label %106

101:                                              ; preds = %72, %65
  %102 = sub i32 %62, %55
  store i32 %102, ptr %6, align 4
  %103 = getelementptr i32, ptr %64, i32 %55
  %104 = add i32 %63, 1
  %105 = icmp ult i32 %102, %55
  br i1 %105, label %106, label %61

106:                                              ; preds = %101, %97, %95, %50, %45, %39, %38, %5
  %107 = phi ptr [ null, %38 ], [ null, %5 ], [ null, %39 ], [ null, %45 ], [ %64, %97 ], [ %64, %95 ], [ null, %50 ], [ null, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret ptr %107
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pci_range_parser_init(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @parser_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parser_init(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !8
  store ptr %1, ptr %0, align 4
  %5 = tail call i32 @of_n_addr_cells(ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 6
  store i32 %5, ptr %6, align 4
  %7 = tail call i32 @of_bus_n_addr_cells(ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 4
  store i32 %7, ptr %8, align 4
  %9 = tail call i32 @of_bus_n_size_cells(ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 5
  store i32 %9, ptr %10, align 4
  %11 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(11) @.str.1)
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 7
  %14 = zext i1 %12 to i8
  store i8 %14, ptr %13, align 4
  %15 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 0, i32 2), align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %3
  %18 = tail call i32 %15(ptr noundef %1) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 1, i32 2), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = tail call i32 %21(ptr noundef %1) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds ([3 x %struct.of_bus], ptr @of_busses, i32 0, i32 2, i32 2), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = tail call i32 %27(ptr noundef %1) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/of/address.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

33:                                               ; preds = %29, %26, %23, %20, %17, %3
  %34 = phi i32 [ 0, %17 ], [ 0, %3 ], [ 1, %20 ], [ 1, %23 ], [ 2, %26 ], [ 2, %29 ]
  %35 = getelementptr [3 x %struct.of_bus], ptr @of_busses, i32 0, i32 %34
  %36 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  %37 = call ptr @of_get_property(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #15
  %38 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 2
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i32, ptr %4, align 4
  %42 = lshr i32 %41, 2
  %43 = getelementptr i32, ptr %37, i32 %42
  %44 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 3
  store ptr %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %40, %33
  %46 = phi i32 [ 0, %40 ], [ -2, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pci_dma_range_parser_init(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @parser_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_pci_range_parser_one(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %4
  %10 = add i32 %9, %8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %160, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %160, label %16

16:                                               ; preds = %12
  %17 = getelementptr i32, ptr %14, i32 %10
  %18 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ugt ptr %17, %19
  br i1 %20, label %160, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.of_bus, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef nonnull %14) #15
  %27 = getelementptr inbounds %struct.of_pci_range, ptr %1, i32 0, i32 3
  store i32 %26, ptr %27, align 8
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr inbounds %struct.of_bus, ptr %28, i32 0, i32 6
  %30 = load i8, ptr %29, align 4, !range !11
  %31 = zext i8 %30 to i32
  %32 = sub i32 %4, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %21
  %35 = load ptr, ptr %13, align 4
  %36 = getelementptr i32, ptr %35, i32 %31
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i64 [ %46, %37 ], [ 0, %34 ]
  %39 = phi i32 [ %41, %37 ], [ %32, %34 ]
  %40 = phi ptr [ %47, %37 ], [ %36, %34 ]
  %41 = add i32 %39, -1
  %42 = shl i64 %38, 32
  %43 = load i32, ptr %40, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  %45 = zext i32 %44 to i64
  %46 = or i64 %42, %45
  %47 = getelementptr i32, ptr %40, i32 1
  %48 = icmp eq i32 %41, 0
  br i1 %48, label %49, label %37

49:                                               ; preds = %37, %21
  %50 = phi i64 [ 0, %21 ], [ %46, %37 ]
  store i64 %50, ptr %1, align 8
  %51 = getelementptr inbounds %struct.of_pci_range_parser, ptr %0, i32 0, i32 7
  %52 = load i8, ptr %51, align 4, !range !11
  %53 = icmp eq i8 %52, 0
  %54 = load ptr, ptr %0, align 4
  %55 = load ptr, ptr %13, align 4
  %56 = getelementptr i32, ptr %55, i32 %4
  br i1 %53, label %59, label %57

57:                                               ; preds = %49
  %58 = tail call i64 @of_translate_dma_address(ptr noundef %54, ptr noundef %56)
  br label %61

59:                                               ; preds = %49
  %60 = tail call i64 @of_translate_address(ptr noundef %54, ptr noundef %56)
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i64 [ %60, %59 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.of_pci_range, ptr %1, i32 0, i32 1
  store i64 %62, ptr %63, align 8
  %64 = icmp eq i32 %6, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %13, align 4
  %67 = load i32, ptr %7, align 4
  %68 = getelementptr i32, ptr %66, i32 %67
  %69 = getelementptr i32, ptr %68, i32 %4
  br label %70

70:                                               ; preds = %70, %65
  %71 = phi i64 [ %79, %70 ], [ 0, %65 ]
  %72 = phi i32 [ %74, %70 ], [ %6, %65 ]
  %73 = phi ptr [ %80, %70 ], [ %69, %65 ]
  %74 = add i32 %72, -1
  %75 = shl i64 %71, 32
  %76 = load i32, ptr %73, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #15
  %78 = zext i32 %77 to i64
  %79 = or i64 %75, %78
  %80 = getelementptr i32, ptr %73, i32 1
  %81 = icmp eq i32 %74, 0
  br i1 %81, label %82, label %70

82:                                               ; preds = %70, %61
  %83 = phi i64 [ 0, %61 ], [ %79, %70 ]
  %84 = getelementptr inbounds %struct.of_pci_range, ptr %1, i32 0, i32 2
  store i64 %83, ptr %84, align 8
  %85 = load ptr, ptr %13, align 4
  %86 = getelementptr i32, ptr %85, i32 %10
  store ptr %86, ptr %13, align 4
  %87 = getelementptr i32, ptr %86, i32 %10
  %88 = load ptr, ptr %18, align 4
  %89 = icmp ugt ptr %87, %88
  br i1 %89, label %160, label %97

90:                                               ; preds = %156
  %91 = add i64 %153, %148
  store i64 %91, ptr %84, align 8
  %92 = load ptr, ptr %13, align 4
  %93 = getelementptr i32, ptr %92, i32 %10
  store ptr %93, ptr %13, align 4
  %94 = getelementptr i32, ptr %93, i32 %10
  %95 = load ptr, ptr %18, align 4
  %96 = icmp ugt ptr %94, %95
  br i1 %96, label %160, label %97

97:                                               ; preds = %90, %82
  %98 = phi ptr [ %93, %90 ], [ %86, %82 ]
  %99 = load ptr, ptr %22, align 4
  %100 = getelementptr inbounds %struct.of_bus, ptr %99, i32 0, i32 7
  %101 = load ptr, ptr %100, align 4
  %102 = tail call i32 %101(ptr noundef %98) #15
  %103 = load ptr, ptr %13, align 4
  br i1 %33, label %118, label %104

104:                                              ; preds = %97
  %105 = getelementptr i32, ptr %103, i32 %31
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i64 [ %115, %106 ], [ 0, %104 ]
  %108 = phi i32 [ %110, %106 ], [ %32, %104 ]
  %109 = phi ptr [ %116, %106 ], [ %105, %104 ]
  %110 = add i32 %108, -1
  %111 = shl i64 %107, 32
  %112 = load i32, ptr %109, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #15
  %114 = zext i32 %113 to i64
  %115 = or i64 %111, %114
  %116 = getelementptr i32, ptr %109, i32 1
  %117 = icmp eq i32 %110, 0
  br i1 %117, label %118, label %106

118:                                              ; preds = %106, %97
  %119 = phi i64 [ 0, %97 ], [ %115, %106 ]
  %120 = load i8, ptr %51, align 4, !range !11
  %121 = icmp eq i8 %120, 0
  %122 = load ptr, ptr %0, align 4
  %123 = getelementptr i32, ptr %103, i32 %4
  br i1 %121, label %126, label %124

124:                                              ; preds = %118
  %125 = tail call i64 @of_translate_dma_address(ptr noundef %122, ptr noundef %123)
  br label %128

126:                                              ; preds = %118
  %127 = tail call i64 @of_translate_address(ptr noundef %122, ptr noundef %123)
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  br i1 %64, label %147, label %130

130:                                              ; preds = %128
  %131 = load i32, ptr %7, align 4
  %132 = load ptr, ptr %13, align 4
  %133 = getelementptr i32, ptr %132, i32 %4
  %134 = getelementptr i32, ptr %133, i32 %131
  br label %135

135:                                              ; preds = %135, %130
  %136 = phi i64 [ %144, %135 ], [ 0, %130 ]
  %137 = phi i32 [ %139, %135 ], [ %6, %130 ]
  %138 = phi ptr [ %145, %135 ], [ %134, %130 ]
  %139 = add i32 %137, -1
  %140 = shl i64 %136, 32
  %141 = load i32, ptr %138, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #15
  %143 = zext i32 %142 to i64
  %144 = or i64 %140, %143
  %145 = getelementptr i32, ptr %138, i32 1
  %146 = icmp eq i32 %139, 0
  br i1 %146, label %147, label %135

147:                                              ; preds = %135, %128
  %148 = phi i64 [ 0, %128 ], [ %144, %135 ]
  %149 = load i32, ptr %27, align 8
  %150 = icmp eq i32 %102, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i64, ptr %1, align 8
  %153 = load i64, ptr %84, align 8
  %154 = add i64 %153, %152
  %155 = icmp eq i64 %119, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i64, ptr %63, align 8
  %158 = add i64 %157, %153
  %159 = icmp eq i64 %129, %158
  br i1 %159, label %90, label %160

160:                                              ; preds = %156, %151, %147, %90, %82, %16, %12, %2
  %161 = phi ptr [ null, %2 ], [ null, %16 ], [ null, %12 ], [ %1, %82 ], [ %1, %151 ], [ %1, %156 ], [ %1, %147 ], [ %1, %90 ]
  ret ptr %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_address_to_resource(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc i32 @__of_address_to_resource(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_iomap(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = call fastcc i32 @__of_address_to_resource(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef nonnull %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 1, %12
  %16 = add i32 %15, %14
  %17 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %16) #15
  br label %18

18:                                               ; preds = %11, %6, %2
  %19 = phi ptr [ %17, %11 ], [ null, %2 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret ptr %19
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_io_request_and_map(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = call fastcc i32 @__of_address_to_resource(ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef nonnull %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = select i1 %8, ptr %10, ptr %2
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 1, %12
  %16 = add i32 %15, %14
  %17 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %16, ptr noundef %11, i32 noundef 0) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %16) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef %16) #15
  br label %28

28:                                               ; preds = %27, %24, %7, %3
  %29 = phi ptr [ inttoptr (i32 -12 to ptr), %27 ], [ %25, %24 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -16 to ptr), %7 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_dma_get_range(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_pci_range_parser, align 4
  %4 = alloca %struct.of_pci_range, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @of_node_get(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %18, %2
  %9 = phi ptr [ %19, %18 ], [ %6, %2 ]
  %10 = phi i1 [ false, %18 ], [ true, %2 ]
  %11 = call ptr @of_get_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #15
  %12 = icmp ne ptr %11, null
  %13 = load i32, ptr %5, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = select i1 %10, i1 true, i1 %12
  br i1 %17, label %18, label %66

18:                                               ; preds = %16
  %19 = call fastcc ptr @of_get_next_dma_parent(ptr noundef nonnull %9)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %8

21:                                               ; preds = %8
  %22 = call fastcc i32 @parser_init(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull @.str.1) #15
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 1, %21 ], [ %27, %23 ]
  %25 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %26 = icmp eq ptr %25, null
  %27 = add i32 %24, 1
  br i1 %26, label %28, label %23

28:                                               ; preds = %23
  %29 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 24) #15
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %66, label %31, !prof !12

31:                                               ; preds = %28
  %32 = extractvalue { i32, i1 } %29, 0
  %33 = call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %66, label %35

35:                                               ; preds = %31
  store ptr %33, ptr %1, align 4
  %36 = call fastcc i32 @parser_init(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull @.str.1) #15
  %37 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.of_pci_range, ptr %4, i32 0, i32 1
  %41 = getelementptr inbounds %struct.of_pci_range, ptr %4, i32 0, i32 2
  br label %42

42:                                               ; preds = %52, %39
  %43 = phi ptr [ %33, %39 ], [ %63, %52 ]
  br label %44

44:                                               ; preds = %47, %42
  %45 = load i64, ptr %40, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i64, ptr %4, align 8
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %48, ptr noundef nonnull %9) #16
  %50 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %44

52:                                               ; preds = %44
  %53 = trunc i64 %45 to i32
  store i32 %53, ptr %43, align 8
  %54 = load i64, ptr %4, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.bus_dma_region, ptr %43, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  %57 = load i64, ptr %41, align 8
  %58 = getelementptr inbounds %struct.bus_dma_region, ptr %43, i32 0, i32 2
  store i64 %57, ptr %58, align 8
  %59 = load i64, ptr %40, align 8
  %60 = load i64, ptr %4, align 8
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds %struct.bus_dma_region, ptr %43, i32 0, i32 3
  store i64 %61, ptr %62, align 8
  %63 = getelementptr %struct.bus_dma_region, ptr %43, i32 1
  %64 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %3, ptr noundef nonnull %4)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %42

66:                                               ; preds = %52, %47, %35, %31, %28, %18, %16, %2
  %67 = phi ptr [ %9, %31 ], [ %9, %28 ], [ %9, %35 ], [ null, %2 ], [ %9, %47 ], [ %9, %52 ], [ %9, %16 ], [ null, %18 ]
  %68 = phi i32 [ -12, %31 ], [ -12, %28 ], [ 0, %35 ], [ -19, %2 ], [ 0, %47 ], [ 0, %52 ], [ -19, %18 ], [ -19, %16 ]
  call void @of_node_put(ptr noundef %67) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_get_next_dma_parent(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #15, !annotation !8
  %3 = tail call i32 @of_property_match_string(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #15
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @of_get_parent(ptr noundef %0) #15
  br label %15

7:                                                ; preds = %1
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef -1, i32 noundef %3, ptr noundef nonnull %2) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call ptr @of_get_parent(ptr noundef %0) #15
  br label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 4
  %14 = call ptr @of_node_get(ptr noundef %13) #15
  br label %15

15:                                               ; preds = %12, %10, %5
  %16 = phi ptr [ %6, %5 ], [ %11, %10 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #15
  call void @of_node_put(ptr noundef %0) #15
  ret ptr %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_dma_get_max_cpu_address(ptr noundef %0) local_unnamed_addr #7 section ".init.text" {
  %2 = alloca %struct.of_pci_range_parser, align 4
  %3 = alloca %struct.of_pci_range, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp eq ptr %0, null
  %6 = load ptr, ptr @of_root, align 4
  %7 = select i1 %5, ptr %6, ptr %0
  %8 = call ptr @of_get_property(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #15
  %9 = icmp ne ptr %8, null
  %10 = load i32, ptr %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = call fastcc i32 @parser_init(ptr noundef nonnull %2, ptr noundef %7, ptr noundef nonnull @.str.1) #15
  %15 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.of_pci_range, ptr %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.of_pci_range, ptr %3, i32 0, i32 2
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i64 [ 0, %17 ], [ %27, %20 ]
  %22 = load i64, ptr %18, align 8
  %23 = load i64, ptr %19, align 8
  %24 = add i64 %23, %22
  %25 = icmp ugt i64 %24, %21
  %26 = add i64 %24, -1
  %27 = select i1 %25, i64 %26, i64 %21
  %28 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %20

30:                                               ; preds = %20, %13
  %31 = phi i64 [ 0, %13 ], [ %27, %20 ]
  %32 = call i64 @llvm.umin.i64(i64 %31, i64 4294967295)
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %30, %1
  %35 = phi i32 [ -1, %1 ], [ %33, %30 ]
  %36 = call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef null) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %38, %34
  %39 = phi ptr [ %43, %38 ], [ %36, %34 ]
  %40 = phi i32 [ %42, %38 ], [ %35, %34 ]
  %41 = call i32 @of_dma_get_max_cpu_address(ptr noundef nonnull %39) #18
  %42 = call i32 @llvm.umin.i32(i32 %40, i32 %41)
  %43 = call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef nonnull %39) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %38

45:                                               ; preds = %38, %34
  %46 = phi i32 [ %35, %34 ], [ %42, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_dma_is_coherent(ptr noundef %0) #0 {
  %2 = tail call ptr @of_node_get(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %9, %1
  %5 = phi ptr [ %10, %9 ], [ %2, %1 ]
  %6 = tail call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.4, ptr noundef null) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @of_node_put(ptr noundef nonnull %5) #15
  br label %13

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @of_get_next_dma_parent(ptr noundef nonnull %5)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %4

12:                                               ; preds = %9, %1
  tail call void @of_node_put(ptr noundef null) #15
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i1 [ false, %12 ], [ true, %8 ]
  ret i1 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_io_range_by_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_bus_pci_match(ptr noundef %0) #0 {
  %2 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef null) #15
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %2, null
  %5 = select i1 %3, i1 %4, i1 false
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull dereferenceable(4) @.str.2) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %6, %1
  %10 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef null) #15
  %11 = icmp ne ptr %10, null
  %12 = select i1 %3, i1 %11, i1 false
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @strcmp(ptr noundef nonnull %10, ptr noundef nonnull dereferenceable(6) @.str.17) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %13, %9
  %17 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef null) #15
  %18 = icmp ne ptr %17, null
  %19 = select i1 %3, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(4) @.str.18) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20, %16
  %24 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef null) #15
  %25 = icmp ne ptr %24, null
  %26 = select i1 %3, i1 %25, i1 false
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = tail call i32 @strcmp(ptr noundef nonnull %24, ptr noundef nonnull dereferenceable(3) @.str.19) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27, %23
  %31 = tail call zeroext i1 @of_node_name_eq(ptr noundef %0, ptr noundef nonnull @.str.21) #15
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load i1, ptr @of_node_is_pcie.__already_done, align 1
  br i1 %33, label %36, label %34, !prof !13

34:                                               ; preds = %32
  store i1 true, ptr @of_node_is_pcie.__already_done, align 1
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %0) #16
  br label %36

36:                                               ; preds = %34, %32, %30
  %37 = zext i1 %31 to i32
  br label %38

38:                                               ; preds = %36, %27, %20, %13, %6
  %39 = phi i32 [ 1, %27 ], [ 1, %20 ], [ 1, %13 ], [ 1, %6 ], [ %37, %36 ]
  ret i32 %39
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @of_bus_pci_count_cells(ptr nocapture noundef readnone %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #9 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i32 3, ptr %1, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i32 2, ptr %2, align 4
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i64 @of_bus_pci_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10 {
  %6 = load i32, ptr %0, align 4
  %7 = and i32 %6, 3
  %8 = add nsw i32 %7, -1
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds [3 x i32], ptr @switch.table.of_bus_pci_get_flags, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ 0, %5 ], [ %12, %10 ]
  %15 = load i32, ptr %1, align 4
  %16 = and i32 %15, 3
  %17 = add nsw i32 %16, -1
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds [3 x i32], ptr @switch.table.of_bus_pci_get_flags, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ 0, %13 ], [ %21, %19 ]
  %24 = xor i32 %23, %14
  %25 = and i32 %24, 768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %22
  %28 = add i32 %2, -1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ %40, %30 ], [ 0, %27 ]
  %32 = phi i32 [ %35, %30 ], [ %28, %27 ]
  %33 = phi ptr [ %34, %30 ], [ %1, %27 ]
  %34 = getelementptr i32, ptr %33, i32 1
  %35 = add i32 %32, -1
  %36 = shl i64 %31, 32
  %37 = load i32, ptr %34, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #15
  %39 = zext i32 %38 to i64
  %40 = or i64 %36, %39
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %42, label %30

42:                                               ; preds = %30, %27
  %43 = phi i64 [ 0, %27 ], [ %40, %30 ]
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %42
  %46 = getelementptr i32, ptr %1, i32 %2
  %47 = getelementptr i32, ptr %46, i32 %4
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi i64 [ %57, %48 ], [ 0, %45 ]
  %50 = phi i32 [ %52, %48 ], [ %3, %45 ]
  %51 = phi ptr [ %58, %48 ], [ %47, %45 ]
  %52 = add i32 %50, -1
  %53 = shl i64 %49, 32
  %54 = load i32, ptr %51, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #15
  %56 = zext i32 %55 to i64
  %57 = or i64 %53, %56
  %58 = getelementptr i32, ptr %51, i32 1
  %59 = icmp eq i32 %52, 0
  br i1 %59, label %60, label %48

60:                                               ; preds = %48, %42
  %61 = phi i64 [ 0, %42 ], [ %57, %48 ]
  br i1 %29, label %74, label %62

62:                                               ; preds = %62, %60
  %63 = phi i64 [ %72, %62 ], [ 0, %60 ]
  %64 = phi i32 [ %67, %62 ], [ %28, %60 ]
  %65 = phi ptr [ %66, %62 ], [ %0, %60 ]
  %66 = getelementptr i32, ptr %65, i32 1
  %67 = add i32 %64, -1
  %68 = shl i64 %63, 32
  %69 = load i32, ptr %66, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #15
  %71 = zext i32 %70 to i64
  %72 = or i64 %68, %71
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %74, label %62

74:                                               ; preds = %62, %60
  %75 = phi i64 [ 0, %60 ], [ %72, %62 ]
  %76 = icmp uge i64 %75, %43
  %77 = add i64 %61, %43
  %78 = icmp ult i64 %75, %77
  %79 = select i1 %76, i1 %78, i1 false
  %80 = sub i64 %75, %43
  %81 = select i1 %79, i64 %80, i64 -1
  br label %82

82:                                               ; preds = %74, %22
  %83 = phi i64 [ -1, %22 ], [ %81, %74 ]
  ret i64 %83
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_bus_pci_translate(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #11 {
  %4 = getelementptr i32, ptr %0, i32 1
  %5 = add i32 %2, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = trunc i64 %1 to i32
  br label %32

9:                                                ; preds = %9, %3
  %10 = phi i64 [ %18, %9 ], [ 0, %3 ]
  %11 = phi i32 [ %13, %9 ], [ %5, %3 ]
  %12 = phi ptr [ %19, %9 ], [ %4, %3 ]
  %13 = add i32 %11, -1
  %14 = shl i64 %10, 32
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  %17 = zext i32 %16 to i64
  %18 = or i64 %14, %17
  %19 = getelementptr i32, ptr %12, i32 1
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %21, label %9

21:                                               ; preds = %9
  %22 = shl i32 %5, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %4, i8 0, i32 %22, i1 false) #15
  %23 = add i64 %18, %1
  %24 = icmp sgt i32 %5, 1
  %25 = trunc i64 %23 to i32
  br i1 %24, label %26, label %32

26:                                               ; preds = %21
  %27 = lshr i64 %23, 32
  %28 = trunc i64 %27 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  %30 = add i32 %2, -3
  %31 = getelementptr i32, ptr %4, i32 %30
  store i32 %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %21, %7
  %33 = phi i32 [ %8, %7 ], [ %25, %26 ], [ %25, %21 ]
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #15
  %35 = add i32 %2, -2
  %36 = getelementptr i32, ptr %4, i32 %35
  store i32 %34, ptr %36, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @of_bus_pci_get_flags(ptr nocapture noundef readonly %0) #12 {
  %2 = load i32, ptr %0, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  %4 = lshr i32 %3, 24
  %5 = and i32 %4, 3
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds [3 x i32], ptr @switch.table.of_bus_pci_get_flags, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %8 ]
  %13 = lshr i32 %3, 17
  %14 = and i32 %13, 8192
  %15 = or i32 %12, %14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_bus_isa_match(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @of_node_name_eq(ptr noundef %0, ptr noundef nonnull @.str.14) #15
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @of_bus_isa_count_cells(ptr nocapture noundef readnone %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #9 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store i32 2, ptr %1, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i32 1, ptr %2, align 4
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i64 @of_bus_isa_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10 {
  %6 = load i32, ptr %0, align 4
  %7 = load i32, ptr %1, align 4
  %8 = xor i32 %7, %6
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %5
  %12 = add i32 %2, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %14, %11
  %15 = phi i64 [ %24, %14 ], [ 0, %11 ]
  %16 = phi i32 [ %19, %14 ], [ %12, %11 ]
  %17 = phi ptr [ %18, %14 ], [ %1, %11 ]
  %18 = getelementptr i32, ptr %17, i32 1
  %19 = add i32 %16, -1
  %20 = shl i64 %15, 32
  %21 = load i32, ptr %18, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #15
  %23 = zext i32 %22 to i64
  %24 = or i64 %20, %23
  %25 = icmp eq i32 %19, 0
  br i1 %25, label %26, label %14

26:                                               ; preds = %14, %11
  %27 = phi i64 [ 0, %11 ], [ %24, %14 ]
  %28 = icmp eq i32 %3, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = getelementptr i32, ptr %1, i32 %2
  %31 = getelementptr i32, ptr %30, i32 %4
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i64 [ %41, %32 ], [ 0, %29 ]
  %34 = phi i32 [ %36, %32 ], [ %3, %29 ]
  %35 = phi ptr [ %42, %32 ], [ %31, %29 ]
  %36 = add i32 %34, -1
  %37 = shl i64 %33, 32
  %38 = load i32, ptr %35, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #15
  %40 = zext i32 %39 to i64
  %41 = or i64 %37, %40
  %42 = getelementptr i32, ptr %35, i32 1
  %43 = icmp eq i32 %36, 0
  br i1 %43, label %44, label %32

44:                                               ; preds = %32, %26
  %45 = phi i64 [ 0, %26 ], [ %41, %32 ]
  br i1 %13, label %58, label %46

46:                                               ; preds = %46, %44
  %47 = phi i64 [ %56, %46 ], [ 0, %44 ]
  %48 = phi i32 [ %51, %46 ], [ %12, %44 ]
  %49 = phi ptr [ %50, %46 ], [ %0, %44 ]
  %50 = getelementptr i32, ptr %49, i32 1
  %51 = add i32 %48, -1
  %52 = shl i64 %47, 32
  %53 = load i32, ptr %50, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #15
  %55 = zext i32 %54 to i64
  %56 = or i64 %52, %55
  %57 = icmp eq i32 %51, 0
  br i1 %57, label %58, label %46

58:                                               ; preds = %46, %44
  %59 = phi i64 [ 0, %44 ], [ %56, %46 ]
  %60 = icmp uge i64 %59, %27
  %61 = add i64 %45, %27
  %62 = icmp ult i64 %59, %61
  %63 = select i1 %60, i1 %62, i1 false
  %64 = sub i64 %59, %27
  %65 = select i1 %63, i64 %64, i64 -1
  br label %66

66:                                               ; preds = %58, %5
  %67 = phi i64 [ -1, %5 ], [ %65, %58 ]
  ret i64 %67
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_bus_isa_translate(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #11 {
  %4 = getelementptr i32, ptr %0, i32 1
  %5 = add i32 %2, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = trunc i64 %1 to i32
  br label %32

9:                                                ; preds = %9, %3
  %10 = phi i64 [ %18, %9 ], [ 0, %3 ]
  %11 = phi i32 [ %13, %9 ], [ %5, %3 ]
  %12 = phi ptr [ %19, %9 ], [ %4, %3 ]
  %13 = add i32 %11, -1
  %14 = shl i64 %10, 32
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  %17 = zext i32 %16 to i64
  %18 = or i64 %14, %17
  %19 = getelementptr i32, ptr %12, i32 1
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %21, label %9

21:                                               ; preds = %9
  %22 = shl i32 %5, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %4, i8 0, i32 %22, i1 false) #15
  %23 = add i64 %18, %1
  %24 = icmp sgt i32 %5, 1
  %25 = trunc i64 %23 to i32
  br i1 %24, label %26, label %32

26:                                               ; preds = %21
  %27 = lshr i64 %23, 32
  %28 = trunc i64 %27 to i32
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #15
  %30 = add i32 %2, -3
  %31 = getelementptr i32, ptr %4, i32 %30
  store i32 %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %21, %7
  %33 = phi i32 [ %8, %7 ], [ %25, %26 ], [ %25, %21 ]
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #15
  %35 = add i32 %2, -2
  %36 = getelementptr i32, ptr %4, i32 %35
  store i32 %34, ptr %36, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @of_bus_isa_get_flags(ptr nocapture noundef readonly %0) #12 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 16777216
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 512, i32 256
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @of_bus_default_count_cells(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @of_n_addr_cells(ptr noundef %0) #15
  store i32 %6, ptr %1, align 4
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @of_n_size_cells(ptr noundef %0) #15
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i64 @of_bus_default_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %7, %5
  %8 = phi i64 [ %16, %7 ], [ 0, %5 ]
  %9 = phi i32 [ %11, %7 ], [ %2, %5 ]
  %10 = phi ptr [ %17, %7 ], [ %1, %5 ]
  %11 = add i32 %9, -1
  %12 = shl i64 %8, 32
  %13 = load i32, ptr %10, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #15
  %15 = zext i32 %14 to i64
  %16 = or i64 %12, %15
  %17 = getelementptr i32, ptr %10, i32 1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %7, %5
  %20 = phi i64 [ 0, %5 ], [ %16, %7 ]
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = getelementptr i32, ptr %1, i32 %2
  %24 = getelementptr i32, ptr %23, i32 %4
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i64 [ %34, %25 ], [ 0, %22 ]
  %27 = phi i32 [ %29, %25 ], [ %3, %22 ]
  %28 = phi ptr [ %35, %25 ], [ %24, %22 ]
  %29 = add i32 %27, -1
  %30 = shl i64 %26, 32
  %31 = load i32, ptr %28, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #15
  %33 = zext i32 %32 to i64
  %34 = or i64 %30, %33
  %35 = getelementptr i32, ptr %28, i32 1
  %36 = icmp eq i32 %29, 0
  br i1 %36, label %37, label %25

37:                                               ; preds = %25, %19
  %38 = phi i64 [ 0, %19 ], [ %34, %25 ]
  br i1 %6, label %51, label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ %48, %39 ], [ 0, %37 ]
  %41 = phi i32 [ %43, %39 ], [ %2, %37 ]
  %42 = phi ptr [ %49, %39 ], [ %0, %37 ]
  %43 = add i32 %41, -1
  %44 = shl i64 %40, 32
  %45 = load i32, ptr %42, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #15
  %47 = zext i32 %46 to i64
  %48 = or i64 %44, %47
  %49 = getelementptr i32, ptr %42, i32 1
  %50 = icmp eq i32 %43, 0
  br i1 %50, label %51, label %39

51:                                               ; preds = %39, %37
  %52 = phi i64 [ 0, %37 ], [ %48, %39 ]
  %53 = icmp uge i64 %52, %20
  %54 = add i64 %38, %20
  %55 = icmp ult i64 %52, %54
  %56 = select i1 %53, i1 %55, i1 false
  %57 = sub i64 %52, %20
  %58 = select i1 %56, i64 %57, i64 -1
  ret i64 %58
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_bus_default_translate(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #11 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = trunc i64 %1 to i32
  br label %30

7:                                                ; preds = %7, %3
  %8 = phi i64 [ %16, %7 ], [ 0, %3 ]
  %9 = phi i32 [ %11, %7 ], [ %2, %3 ]
  %10 = phi ptr [ %17, %7 ], [ %0, %3 ]
  %11 = add i32 %9, -1
  %12 = shl i64 %8, 32
  %13 = load i32, ptr %10, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #15
  %15 = zext i32 %14 to i64
  %16 = or i64 %12, %15
  %17 = getelementptr i32, ptr %10, i32 1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %7
  %20 = shl i32 %2, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %20, i1 false)
  %21 = add i64 %16, %1
  %22 = icmp sgt i32 %2, 1
  %23 = trunc i64 %21 to i32
  br i1 %22, label %24, label %30

24:                                               ; preds = %19
  %25 = lshr i64 %21, 32
  %26 = trunc i64 %25 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = add nsw i32 %2, -2
  %29 = getelementptr i32, ptr %0, i32 %28
  store i32 %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %24, %19, %5
  %31 = phi i32 [ %6, %5 ], [ %23, %24 ], [ %23, %19 ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = add i32 %2, -1
  %34 = getelementptr i32, ptr %0, i32 %33
  store i32 %32, ptr %34, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @of_bus_default_get_flags(ptr nocapture noundef readnone %0) #13 {
  ret i32 512
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_size_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_bus_n_addr_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_bus_n_size_cells(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @logic_pio_trans_hwaddr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold }

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
!9 = distinct !{null, ptr @of_get_parent}
!10 = !{i64 2153342276, i64 2153342761, i64 2153342313, i64 2153342369, i64 2153342403, i64 2153342427, i64 2153342468, i64 2153342489, i64 2153342517, i64 2153342551}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
