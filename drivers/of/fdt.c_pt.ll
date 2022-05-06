; ModuleID = '/llk/IR/drivers/of/fdt.c_pt.bc'
source_filename = "../drivers/of/fdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_fdt_unflatten_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22of_fdt_unflatten_tree\22\09\09\09\09\09"
module asm "__kstrtabns_of_fdt_unflatten_tree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }

@initial_boot_params = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\013OF: fdt: Invalid device tree blob header\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\014OF: fdt: End of tree marker overwritten: %08x\0A\00", align 1
@of_fdt_unflatten_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_fdt_unflatten_mutex, i64 12), ptr getelementptr (i8, ptr @of_fdt_unflatten_mutex, i64 12) } }, align 4
@__kstrtab_of_fdt_unflatten_tree = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_fdt_unflatten_tree = external dso_local constant [0 x i8], align 1
@__ksymtab_of_fdt_unflatten_tree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_fdt_unflatten_tree to i32), ptr @__kstrtab_of_fdt_unflatten_tree, ptr @__kstrtabns_of_fdt_unflatten_tree }, section "___ksymtab_gpl+of_fdt_unflatten_tree", align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\013OF: fdt: \0A unrecognized device tree list:\0A[ \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"'%s' \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"]\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"\016OF: fdt: Machine model: %s\0A\00", align 1
@chosen_node_offset = internal unnamed_addr global i32 -1, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"linux,usable-memory-range\00", align 1
@dt_root_addr_cells = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@dt_root_size_cells = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/chosen@0\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"\014OF: fdt: earlycon: stdout-path %.*s not found\0A\00", align 1
@__earlycon_table = external dso_local constant [0 x %struct.earlycon_id], align 4
@__earlycon_table_end = external dso_local constant [0 x %struct.earlycon_id], align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"linux,usable-memory\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"hotpluggable\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"\014OF: fdt: failed to mark hotplug range 0x%llx - 0x%llx\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"rng-seed\00", align 1
@of_fdt_crc32 = internal unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [50 x i8] c"\014OF: fdt: Ignoring memory block 0x%llx - 0x%llx\0A\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"\014OF: fdt: Ignoring memory range 0x%llx - 0x%llx\0A\00", align 1
@boot_command_line = external dso_local global [0 x i8], section ".init.data", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"\014OF: fdt: No chosen node found, continuing without\0A\00", align 1
@of_root = external dso_local global ptr, align 4
@.str.30 = private unnamed_addr constant [59 x i8] c"\014OF: fdt: No valid device tree found, continuing without\0A\00", align 1
@__initcall__kmod_fdt__232_1385_of_fdt_raw_init7 = internal global ptr @of_fdt_raw_init, section ".initcall7.init", align 4
@unflatten_dt_nodes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"drivers/of/fdt.c\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"\013OF: fdt: Error %d processing FDT\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@of_node_ktype = external dso_local global %struct.kobj_type, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.35 = private unnamed_addr constant [43 x i8] c"\014OF: fdt: Cannot locate property at 0x%x\0A\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"\014OF: fdt: Cannot find property name at 0x%x\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"ibm,phandle\00", align 1
@memblock = external dso_local global %struct.memblock, align 4
@.str.40 = private unnamed_addr constant [17 x i8] c"/reserved-memory\00", align 1
@.str.41 = private unnamed_addr constant [63 x i8] c"\013OF: fdt: Reserved memory: unsupported node format, ignoring\0A\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@.str.47 = private unnamed_addr constant [74 x i8] c"\013OF: fdt: Reserved memory: invalid reg property in '%s', skipping node.\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"no-map\00", align 1
@.str.49 = private unnamed_addr constant [92 x i8] c"\016OF: fdt: Reserved memory: failed to reserve memory for node '%s': base %pa, size %lu MiB\0A\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"linux,initrd-start\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"linux,initrd-end\00", align 1
@phys_initrd_start = external dso_local local_unnamed_addr global i32, align 4
@phys_initrd_size = external dso_local local_unnamed_addr global i32, align 4
@initrd_start = external dso_local local_unnamed_addr global i32, align 4
@initrd_end = external dso_local local_unnamed_addr global i32, align 4
@initrd_below_start_ok = external dso_local local_unnamed_addr global i32, align 4
@.str.52 = private unnamed_addr constant [48 x i8] c"%s: Failed to allocate %llu bytes align=0x%llx\0A\00", align 1
@__func__.early_init_dt_alloc_memory_arch = private unnamed_addr constant [32 x i8] c"early_init_dt_alloc_memory_arch\00", align 1
@of_fdt_raw_init.of_fdt_raw_attr = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.53, i16 256 }, i32 0, ptr null, ptr null, ptr @of_fdt_raw_read, ptr null, ptr null }, align 4
@.str.53 = private unnamed_addr constant [4 x i8] c"fdt\00", align 1
@.str.54 = private unnamed_addr constant [63 x i8] c"\014OF: fdt: not creating '/sys/firmware/fdt': CRC check failed\0A\00", align 1
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_fdt__232_1385_of_fdt_raw_init7, ptr @__ksymtab_of_fdt_unflatten_tree], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @of_fdt_limit_memory(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @initial_boot_params, align 4
  %4 = tail call i32 @fdt_path_offset(ptr noundef %3, ptr noundef nonnull @.str) #17
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @initial_boot_params, align 4
  %8 = tail call ptr @fdt_getprop(ptr noundef %7, i32 noundef %4, ptr noundef nonnull @.str.1, ptr noundef null) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %12, %10 ], [ 1, %6 ]
  %15 = load ptr, ptr @initial_boot_params, align 4
  %16 = tail call ptr @fdt_getprop(ptr noundef %15, i32 noundef %4, ptr noundef nonnull @.str.2, ptr noundef null) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr %16, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ 1, %13 ]
  %23 = load ptr, ptr @initial_boot_params, align 4
  %24 = tail call i32 @fdt_path_offset(ptr noundef %23, ptr noundef nonnull @.str.3) #17
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = add i32 %22, %14
  %28 = shl i32 %27, 2
  %29 = load ptr, ptr @initial_boot_params, align 4
  %30 = call ptr @fdt_getprop(ptr noundef %29, i32 noundef %24, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #17
  %31 = load i32, ptr %2, align 4
  %32 = mul i32 %28, %0
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  store i32 %32, ptr %2, align 4
  %35 = load ptr, ptr @initial_boot_params, align 4
  %36 = call i32 @fdt_setprop(ptr noundef %35, i32 noundef %24, ptr noundef nonnull @.str.4, ptr noundef %30, i32 noundef %32) #17
  br label %37

37:                                               ; preds = %34, %26, %21, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_setprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__unflatten_device_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i1 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = icmp ne ptr %2, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @fdt_check_header(ptr noundef nonnull %0) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %42

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @unflatten_dt_nodes(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, ptr noundef null)
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %42, label %18

18:                                               ; preds = %15
  %19 = add nuw i32 %16, 3
  %20 = and i32 %19, -4
  %21 = add nuw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = tail call ptr %3(i64 noundef %22, i64 noundef 4) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %18
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %23, i8 0, i32 %20, i1 false)
  %26 = getelementptr i8, ptr %23, i32 %20
  store i32 -272716322, ptr %26, align 4
  %27 = tail call fastcc i32 @unflatten_dt_nodes(ptr noundef nonnull %0, ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2)
  %28 = load i32, ptr %26, align 4
  %29 = icmp eq i32 %28, -272716322
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @llvm.bswap.i32(i32 %28) #17
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %31) #18
  br label %33

33:                                               ; preds = %30, %25
  %34 = icmp slt i32 %27, 1
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = and i1 %6, %4
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load ptr, ptr %2, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.device_node, ptr %38, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %41) #17
  br label %42

42:                                               ; preds = %40, %37, %35, %33, %18, %15, %13, %8
  %43 = phi ptr [ null, %13 ], [ null, %8 ], [ null, %15 ], [ null, %18 ], [ null, %33 ], [ %23, %40 ], [ %23, %37 ], [ %23, %35 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_header(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unflatten_dt_nodes(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca [64 x ptr], align 4
  store ptr %1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %8, i8 0, i32 256, i1 false), !annotation !8
  %9 = icmp ne ptr %1, null
  %10 = xor i1 %9, true
  %11 = icmp ne ptr %3, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store ptr null, ptr %3, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  store i32 1, ptr %7, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ 1, %15 ], [ 0, %13 ]
  %18 = getelementptr [64 x ptr], ptr %8, i32 0, i32 %17
  store ptr %2, ptr %18, align 4
  %19 = and i1 %9, %11
  br label %20

20:                                               ; preds = %90, %16
  %21 = phi ptr [ %2, %16 ], [ %91, %90 ]
  %22 = phi i32 [ 0, %16 ], [ %92, %90 ]
  %23 = phi i32 [ %17, %16 ], [ %93, %90 ]
  %24 = icmp sgt i32 %23, 63
  %25 = load i1, ptr @unflatten_dt_nodes.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %20
  store i1 true, ptr @unflatten_dt_nodes.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 317, i32 noundef 9, ptr noundef null) #17
  br label %29

29:                                               ; preds = %28, %20
  br i1 %24, label %90, label %30

30:                                               ; preds = %29
  %31 = load i32, ptr %7, align 4
  %32 = getelementptr [64 x ptr], ptr %8, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = add i32 %31, 1
  %35 = getelementptr [64 x ptr], ptr %8, i32 0, i32 %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !8
  %36 = call ptr @fdt_get_name(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %5) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %70, label %38

38:                                               ; preds = %30
  %39 = load i32, ptr %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %5, align 4
  %41 = add i32 %39, 109
  %42 = load ptr, ptr %6, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = add i32 %43, 3
  %45 = and i32 %44, -4
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr i8, ptr %46, i32 %41
  store ptr %47, ptr %6, align 4
  br i1 %9, label %48, label %68

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 9
  call void @kobject_init(ptr noundef %49, ptr noundef nonnull @of_node_ktype) #17
  %50 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 3, i32 1
  store ptr @of_fwnode_ops, ptr %50, align 4
  %51 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 3, i32 4
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 3, i32 4, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 3, i32 3
  store volatile ptr %53, ptr %53, align 4
  %54 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 3, i32 3, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %46, i32 108
  %56 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 2
  store ptr %55, ptr %56, align 4
  %57 = load i32, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %55, ptr nonnull align 1 %36, i32 %57, i1 false) #17
  %58 = icmp eq ptr %33, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 6
  store ptr %33, ptr %60, align 4
  %61 = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.device_node, ptr %46, i32 0, i32 8
  store ptr %62, ptr %63, align 4
  store ptr %46, ptr %61, align 4
  br label %64

64:                                               ; preds = %59, %48
  call fastcc void @populate_properties(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %6, ptr noundef %46, ptr noundef nonnull %36, i1 noundef zeroext false) #17
  %65 = call ptr @of_get_property(ptr noundef %46, ptr noundef nonnull @.str.33, ptr noundef null) #17
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr @.str.34, ptr %65
  store ptr %67, ptr %46, align 4
  br label %69

68:                                               ; preds = %38
  call fastcc void @populate_properties(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %6, ptr noundef %46, ptr noundef nonnull %36, i1 noundef zeroext true) #17
  br label %69

69:                                               ; preds = %68, %64
  store ptr %46, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %73

70:                                               ; preds = %30
  store ptr null, ptr %35, align 4
  %71 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %70, %69
  br i1 %19, label %74, label %82

74:                                               ; preds = %73
  %75 = load ptr, ptr %3, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, ptr %7, align 4
  %79 = add i32 %78, 1
  %80 = getelementptr [64 x ptr], ptr %8, i32 0, i32 %79
  %81 = load ptr, ptr %80, align 4
  store ptr %81, ptr %3, align 4
  br label %82

82:                                               ; preds = %77, %74, %73
  %83 = icmp ne ptr %21, null
  %84 = select i1 %10, i1 true, i1 %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %7, align 4
  %87 = add i32 %86, 1
  %88 = getelementptr [64 x ptr], ptr %8, i32 0, i32 %87
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %85, %82, %29
  %91 = phi ptr [ %21, %29 ], [ %21, %82 ], [ %89, %85 ]
  %92 = call i32 @fdt_next_node(ptr noundef %0, i32 noundef %22, ptr noundef nonnull %7) #17
  %93 = load i32, ptr %7, align 4
  %94 = icmp sgt i32 %92, -1
  %95 = icmp sge i32 %93, %17
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %20, label %97

97:                                               ; preds = %90
  %98 = icmp slt i32 %92, -1
  br i1 %98, label %99, label %101

99:                                               ; preds = %97
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %92) #18
  br label %108

101:                                              ; preds = %97
  br i1 %9, label %102, label %103

102:                                              ; preds = %101
  call fastcc void @reverse_nodes(ptr noundef %91)
  br label %103

103:                                              ; preds = %102, %101
  %104 = load ptr, ptr %6, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = ptrtoint ptr %1 to i32
  %107 = sub i32 %105, %106
  br label %108

108:                                              ; preds = %103, %99, %70
  %109 = phi i32 [ -22, %99 ], [ %107, %103 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i32 %109
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_fdt_unflatten_tree(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  tail call void @mutex_lock(ptr noundef nonnull @of_fdt_unflatten_mutex) #17
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @fdt_check_header(ptr noundef nonnull %0) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %39

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @unflatten_dt_nodes(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, ptr noundef null) #17
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = add nuw i32 %14, 3
  %18 = and i32 %17, -4
  %19 = add nuw i32 %18, 4
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %16
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %20, i8 0, i32 %18, i1 false) #17
  %23 = getelementptr i8, ptr %20, i32 %18
  store i32 -272716322, ptr %23, align 4
  %24 = tail call fastcc i32 @unflatten_dt_nodes(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef %1, ptr noundef %2) #17
  %25 = load i32, ptr %23, align 4
  %26 = icmp eq i32 %25, -272716322
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #17
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %28) #18
  br label %30

30:                                               ; preds = %27, %22
  %31 = icmp slt i32 %24, 1
  %32 = or i1 %4, %31
  %33 = select i1 %31, ptr null, ptr %20
  br i1 %32, label %39, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.device_node, ptr %35, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %38) #17
  br label %39

39:                                               ; preds = %37, %34, %30, %16, %13, %11, %6
  %40 = phi ptr [ null, %11 ], [ null, %6 ], [ null, %13 ], [ null, %16 ], [ %33, %30 ], [ %20, %37 ], [ %20, %34 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_fdt_unflatten_mutex) #17
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_init_fdt_scan_reserved_mem() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  store i64 0, ptr %1, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = load ptr, ptr @initial_boot_params, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %0
  %6 = call i32 @fdt_get_mem_rsv(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %7 = load i64, ptr %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = trunc i64 %7 to i32
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %22, %11 ], [ %10, %9 ]
  %13 = phi i32 [ %17, %11 ], [ 0, %9 ]
  %14 = load i64, ptr %1, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memblock_reserve(i32 noundef %15, i32 noundef %12) #17
  %17 = add i32 %13, 1
  %18 = load ptr, ptr @initial_boot_params, align 4
  %19 = call i32 @fdt_get_mem_rsv(ptr noundef %18, i32 noundef %17, ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %20 = load i64, ptr %2, align 8
  %21 = icmp eq i64 %20, 0
  %22 = trunc i64 %20 to i32
  br i1 %21, label %23, label %11

23:                                               ; preds = %11, %5
  call fastcc void @fdt_scan_reserved_mem() #20
  call void @fdt_init_reserved_mem() #17
  br label %24

24:                                               ; preds = %23, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_get_mem_rsv(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @early_init_dt_reserve_memory_arch(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 section ".init.text" {
  br i1 %2, label %4, label %10

4:                                                ; preds = %3
  %5 = tail call zeroext i1 @memblock_overlaps_region(ptr noundef getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), i32 noundef %0, i32 noundef %1) #17
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call zeroext i1 @memblock_is_region_reserved(i32 noundef %0, i32 noundef %1) #17
  br i1 %7, label %12, label %8

8:                                                ; preds = %6, %4
  %9 = tail call i32 @memblock_mark_nomap(i32 noundef %0, i32 noundef %1) #17
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @memblock_reserve(i32 noundef %0, i32 noundef %1) #17
  br label %12

12:                                               ; preds = %10, %8, %6
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ], [ -16, %6 ]
  ret i32 %13
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @fdt_scan_reserved_mem() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @initial_boot_params, align 4
  %2 = tail call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str.40) #17
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %34, label %4

4:                                                ; preds = %0
  %5 = tail call fastcc i32 @__reserved_mem_check_root(i32 noundef %2) #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #18
  br label %34

9:                                                ; preds = %4
  %10 = tail call i32 @fdt_first_subnode(ptr noundef %1, i32 noundef %2) #17
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %34

12:                                               ; preds = %31, %9
  %13 = phi i32 [ %32, %31 ], [ %10, %9 ]
  %14 = tail call ptr @fdt_getprop(ptr noundef %1, i32 noundef %13, ptr noundef nonnull @.str.44, ptr noundef null) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef nonnull dereferenceable(3) @.str.45) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef nonnull dereferenceable(5) @.str.46) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19, %16, %12
  %23 = tail call ptr @fdt_get_name(ptr noundef %1, i32 noundef %13, ptr noundef null) #17
  %24 = tail call fastcc i32 @__reserved_mem_reserve_reg(i32 noundef %13, ptr noundef %23) #20
  %25 = icmp eq i32 %24, -2
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load ptr, ptr @initial_boot_params, align 4
  %28 = tail call ptr @fdt_getprop(ptr noundef %27, i32 noundef %13, ptr noundef nonnull @.str.42, ptr noundef null) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @fdt_reserved_mem_save_node(i32 noundef %13, ptr noundef %23, i32 noundef 0, i32 noundef 0) #17
  br label %31

31:                                               ; preds = %30, %26, %22, %19
  %32 = tail call i32 @fdt_next_subnode(ptr noundef %1, i32 noundef %13) #17
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %12, label %34

34:                                               ; preds = %31, %9, %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdt_init_reserved_mem() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_init_fdt_reserve_self() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @initial_boot_params, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %4, i32 -2130706432, i32 8454144) #21, !srcloc !10
  %6 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or i32 %13, %9
  %15 = getelementptr i8, ptr %6, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %14, %18
  %20 = getelementptr i8, ptr %6, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = tail call i32 @memblock_reserve(i32 noundef %5, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_scan_flat_dt(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @initial_boot_params, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 -1, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = call i32 @fdt_next_node(ptr noundef nonnull %4, i32 noundef -1, ptr noundef nonnull %3) #17
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr %3, align 4
  %10 = icmp sgt i32 %9, -1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %24

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %17, %12 ], [ %7, %6 ]
  %14 = call ptr @fdt_get_name(ptr noundef nonnull %4, i32 noundef %13, ptr noundef null) #17
  %15 = load i32, ptr %3, align 4
  %16 = call i32 %0(i32 noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %1) #17
  %17 = call i32 @fdt_next_node(ptr noundef nonnull %4, i32 noundef %13, ptr noundef nonnull %3) #17
  %18 = icmp sgt i32 %17, -1
  %19 = load i32, ptr %3, align 4
  %20 = icmp sgt i32 %19, -1
  %21 = select i1 %18, i1 %20, i1 false
  %22 = icmp eq i32 %16, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %12, label %24

24:                                               ; preds = %12, %6, %2
  %25 = phi i32 [ 0, %2 ], [ 0, %6 ], [ %16, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_scan_flat_dt_subnodes(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = load ptr, ptr @initial_boot_params, align 4
  %5 = tail call i32 @fdt_first_subnode(ptr noundef %4, i32 noundef %0) #17
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %15

7:                                                ; preds = %12, %3
  %8 = phi i32 [ %13, %12 ], [ %5, %3 ]
  %9 = tail call ptr @fdt_get_name(ptr noundef %4, i32 noundef %8, ptr noundef null) #17
  %10 = tail call i32 %1(i32 noundef %8, ptr noundef %9, ptr noundef %2) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call i32 @fdt_next_subnode(ptr noundef %4, i32 noundef %8) #17
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %7, label %15

15:                                               ; preds = %12, %7, %3
  %16 = phi i32 [ 0, %3 ], [ 0, %12 ], [ %10, %7 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_first_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_subnode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_get_flat_dt_subnode_by_name(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr @initial_boot_params, align 4
  %4 = tail call i32 @fdt_subnode_offset(ptr noundef %3, i32 noundef %0, ptr noundef %1) #17
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_subnode_offset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @of_get_flat_dt_root() local_unnamed_addr #7 section ".init.text" {
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = load ptr, ptr @initial_boot_params, align 4
  %5 = tail call ptr @fdt_getprop(ptr noundef %4, i32 noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_flat_dt_is_compatible(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 section ".init.text" {
  %3 = load ptr, ptr @initial_boot_params, align 4
  %4 = tail call fastcc i32 @of_fdt_is_compatible(ptr noundef %3, i32 noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_fdt_is_compatible(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #17
  %6 = icmp ne ptr %5, null
  %7 = load i32, ptr %4, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %23

10:                                               ; preds = %17, %3
  %11 = phi i32 [ %14, %17 ], [ 0, %3 ]
  %12 = phi ptr [ %20, %17 ], [ %5, %3 ]
  %13 = phi i32 [ %21, %17 ], [ %7, %3 ]
  %14 = add i32 %11, 1
  %15 = call i32 @strcasecmp(ptr noundef %12, ptr noundef %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = call i32 @strlen(ptr noundef %12)
  %19 = add i32 %18, 1
  %20 = getelementptr i8, ptr %12, i32 %19
  %21 = sub i32 %13, %19
  store i32 %21, ptr %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %10, label %23

23:                                               ; preds = %17, %10, %3
  %24 = phi i32 [ 0, %3 ], [ %14, %10 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i32 %24
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @of_get_flat_dt_phandle(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr @initial_boot_params, align 4
  %3 = tail call i32 @fdt_get_phandle(ptr noundef %2, i32 noundef %0) #17
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_get_phandle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @of_flat_dt_get_machine_name() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @initial_boot_params, align 4
  %2 = tail call ptr @fdt_getprop(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef null) #17
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load ptr, ptr @initial_boot_params, align 4
  %6 = tail call ptr @fdt_getprop(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef null) #17
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi ptr [ %2, %0 ], [ %6, %4 ]
  ret ptr %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @of_flat_dt_match_machine(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store ptr null, ptr %3, align 4, !annotation !8
  %5 = call ptr %1(ptr noundef nonnull %3) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %18, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %17, %7 ], [ %0, %2 ]
  %10 = phi i32 [ %16, %7 ], [ -2, %2 ]
  %11 = load ptr, ptr %3, align 4
  %12 = call fastcc i32 @of_flat_dt_match(ptr noundef %11) #20
  %13 = icmp ne i32 %12, 0
  %14 = icmp ult i32 %12, %10
  %15 = select i1 %13, i1 %14, i1 false
  %16 = select i1 %15, i32 %12, i32 %10
  %17 = select i1 %15, ptr %8, ptr %9
  %18 = call ptr %1(ptr noundef nonnull %3) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7

20:                                               ; preds = %7, %2
  %21 = phi ptr [ %0, %2 ], [ %17, %7 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !8
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #18
  %25 = load ptr, ptr @initial_boot_params, align 4
  %26 = call ptr @fdt_getprop(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #17
  %27 = icmp ne ptr %26, null
  %28 = load i32, ptr %4, align 4
  %29 = icmp sgt i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %42

31:                                               ; preds = %31, %23
  %32 = phi ptr [ %40, %31 ], [ %26, %23 ]
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %32) #18
  %34 = call i32 @strlen(ptr noundef %32)
  %35 = xor i32 %34, -1
  %36 = load i32, ptr %4, align 4
  %37 = add i32 %36, %35
  store i32 %37, ptr %4, align 4
  %38 = call i32 @strlen(ptr noundef %32)
  %39 = add i32 %38, 1
  %40 = getelementptr i8, ptr %32, i32 %39
  %41 = icmp sgt i32 %37, 0
  br i1 %41, label %31, label %42

42:                                               ; preds = %31, %23
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %47

44:                                               ; preds = %20
  %45 = call ptr @of_flat_dt_get_machine_name() #20
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %45) #18
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi ptr [ %21, %44 ], [ null, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret ptr %48
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @of_flat_dt_match(ptr noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %19, %6 ], [ %4, %3 ]
  %8 = phi i32 [ %17, %6 ], [ 0, %3 ]
  %9 = phi ptr [ %18, %6 ], [ %0, %3 ]
  %10 = load ptr, ptr @initial_boot_params, align 4
  %11 = tail call fastcc i32 @of_fdt_is_compatible(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %7)
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i32 %8, 0
  %14 = icmp ult i32 %11, %8
  %15 = select i1 %13, i1 true, i1 %14
  %16 = select i1 %15, i32 %11, i32 %8
  %17 = select i1 %12, i32 %8, i32 %16
  %18 = getelementptr ptr, ptr %9, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6

21:                                               ; preds = %6, %3, %1
  %22 = phi i32 [ 0, %1 ], [ 0, %3 ], [ %17, %6 ]
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_init_dt_check_for_usable_mem_range() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = load i32, ptr @chosen_node_offset, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %40, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @initial_boot_params, align 4
  %6 = call ptr @fdt_getprop(ptr noundef %5, i32 noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull %1) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 4
  %10 = load i32, ptr @dt_root_addr_cells, align 4
  %11 = load i32, ptr @dt_root_size_cells, align 4
  %12 = add i32 %11, %10
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %40, label %14

14:                                               ; preds = %8
  %15 = getelementptr i32, ptr %6, i32 %10
  %16 = icmp eq i32 %10, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %20, %17 ], [ %10, %14 ]
  %19 = phi ptr [ %21, %17 ], [ %6, %14 ]
  %20 = add i32 %18, -1
  %21 = getelementptr i32, ptr %19, i32 1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %17

23:                                               ; preds = %17
  %24 = load i32, ptr %19, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24) #17
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ 0, %14 ], [ %25, %23 ]
  %28 = icmp eq i32 %11, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %29, %26
  %30 = phi i32 [ %32, %29 ], [ %11, %26 ]
  %31 = phi ptr [ %33, %29 ], [ %15, %26 ]
  %32 = add i32 %30, -1
  %33 = getelementptr i32, ptr %31, i32 1
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %29

35:                                               ; preds = %29
  %36 = load i32, ptr %31, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #17
  br label %38

38:                                               ; preds = %35, %26
  %39 = phi i32 [ 0, %26 ], [ %37, %35 ]
  call void @memblock_cap_memory_range(i32 noundef %27, i32 noundef %39) #17
  br label %40

40:                                               ; preds = %38, %8, %4, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i64 @dt_mem_next_cell(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 section ".init.text" {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i32, ptr %3, i32 %0
  store ptr %4, ptr %1, align 4
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %6, %2
  %7 = phi i64 [ %15, %6 ], [ 0, %2 ]
  %8 = phi i32 [ %10, %6 ], [ %0, %2 ]
  %9 = phi ptr [ %16, %6 ], [ %3, %2 ]
  %10 = add i32 %8, -1
  %11 = shl i64 %7, 32
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #17
  %14 = zext i32 %13 to i64
  %15 = or i64 %11, %14
  %16 = getelementptr i32, ptr %9, i32 1
  %17 = icmp eq i32 %10, 0
  br i1 %17, label %18, label %6

18:                                               ; preds = %6, %2
  %19 = phi i64 [ 0, %2 ], [ %15, %6 ]
  ret i64 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_cap_memory_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_chosen_stdout() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = load ptr, ptr @initial_boot_params, align 4
  %3 = tail call i32 @fdt_path_offset(ptr noundef %2, ptr noundef nonnull @.str.14) #17
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = tail call i32 @fdt_path_offset(ptr noundef %2, ptr noundef nonnull @.str.15) #17
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %5, %0
  %9 = phi i32 [ %6, %5 ], [ %3, %0 ]
  %10 = call ptr @fdt_getprop(ptr noundef %2, i32 noundef %9, ptr noundef nonnull @.str.16, ptr noundef nonnull %1) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call ptr @fdt_getprop(ptr noundef %2, i32 noundef %9, ptr noundef nonnull @.str.17, ptr noundef nonnull %1) #17
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %10, %8 ], [ %13, %12 ]
  %16 = icmp ne ptr %15, null
  %17 = load i32, ptr %1, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = call ptr @strchrnul(ptr noundef nonnull %15, i32 noundef 58) #17
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr i8, ptr %21, i32 1
  %25 = select i1 %23, ptr null, ptr %24
  %26 = ptrtoint ptr %21 to i32
  %27 = ptrtoint ptr %15 to i32
  %28 = sub i32 %26, %27
  store i32 %28, ptr %1, align 4
  %29 = call i32 @fdt_path_offset_namelen(ptr noundef %2, ptr noundef nonnull %15, i32 noundef %28) #17
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br i1 icmp ult (ptr @__earlycon_table, ptr @__earlycon_table_end), label %35, label %49

32:                                               ; preds = %20
  %33 = load i32, ptr %1, align 4
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %33, ptr noundef nonnull %15) #18
  br label %49

35:                                               ; preds = %46, %31
  %36 = phi ptr [ %47, %46 ], [ @__earlycon_table, %31 ]
  %37 = getelementptr inbounds %struct.earlycon_id, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = call i32 @fdt_node_check_compatible(ptr noundef %2, i32 noundef %29, ptr noundef %37) #17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 @of_setup_earlycon(ptr noundef %36, i32 noundef %29, ptr noundef %25) #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43, %40, %35
  %47 = getelementptr %struct.earlycon_id, ptr %36, i32 1
  %48 = icmp ult ptr %47, @__earlycon_table_end
  br i1 %48, label %35, label %49

49:                                               ; preds = %46, %43, %32, %31, %14, %5
  %50 = phi i32 [ 0, %32 ], [ -2, %5 ], [ -2, %14 ], [ -19, %31 ], [ 0, %43 ], [ -19, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset_namelen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_node_check_compatible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_setup_earlycon(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_root() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @initial_boot_params, align 4
  %2 = tail call i32 @fdt_path_offset(ptr noundef %1, ptr noundef nonnull @.str) #17
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  store i32 1, ptr @dt_root_size_cells, align 4
  store i32 1, ptr @dt_root_addr_cells, align 4
  %5 = load ptr, ptr @initial_boot_params, align 4
  %6 = tail call ptr @fdt_getprop(ptr noundef %5, i32 noundef %2, ptr noundef nonnull @.str.2, ptr noundef null) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #17
  store i32 %10, ptr @dt_root_size_cells, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr @initial_boot_params, align 4
  %13 = tail call ptr @fdt_getprop(ptr noundef %12, i32 noundef %2, ptr noundef nonnull @.str.1, ptr noundef null) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #17
  store i32 %17, ptr @dt_root_addr_cells, align 4
  br label %18

18:                                               ; preds = %15, %11, %0
  %19 = phi i32 [ -19, %0 ], [ 0, %15 ], [ 0, %11 ]
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_memory() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @initial_boot_params, align 4
  %3 = tail call i32 @fdt_first_subnode(ptr noundef %2, i32 noundef 0) #17
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %90

5:                                                ; preds = %87, %0
  %6 = phi i32 [ %88, %87 ], [ %3, %0 ]
  %7 = load ptr, ptr @initial_boot_params, align 4
  %8 = call ptr @fdt_getprop(ptr noundef %7, i32 noundef %6, ptr noundef nonnull @.str.19, ptr noundef null) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  store i32 0, ptr %1, align 4, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %5
  %11 = call i32 @strcmp(ptr noundef nonnull %8, ptr noundef nonnull dereferenceable(7) @.str.20)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %87

13:                                               ; preds = %10
  %14 = load ptr, ptr @initial_boot_params, align 4
  %15 = call ptr @fdt_getprop(ptr noundef %14, i32 noundef %6, ptr noundef nonnull @.str.21, ptr noundef nonnull %1) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load ptr, ptr @initial_boot_params, align 4
  %19 = call ptr @fdt_getprop(ptr noundef %18, i32 noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %87, label %21

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %23 = load i32, ptr %1, align 4
  %24 = lshr i32 %23, 2
  %25 = getelementptr i32, ptr %22, i32 %24
  %26 = load ptr, ptr @initial_boot_params, align 4
  %27 = call ptr @fdt_getprop(ptr noundef %26, i32 noundef %6, ptr noundef nonnull @.str.22, ptr noundef null) #17
  %28 = icmp eq ptr %27, null
  %29 = ptrtoint ptr %25 to i32
  %30 = ashr i32 %23, 2
  %31 = load i32, ptr @dt_root_addr_cells, align 4
  %32 = load i32, ptr @dt_root_size_cells, align 4
  %33 = add i32 %32, %31
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %87, label %35

35:                                               ; preds = %79, %21
  %36 = phi i32 [ %84, %79 ], [ %32, %21 ]
  %37 = phi i32 [ %83, %79 ], [ %31, %21 ]
  %38 = phi ptr [ %55, %79 ], [ %22, %21 ]
  %39 = getelementptr i32, ptr %38, i32 %37
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %41, %35
  %42 = phi i64 [ %50, %41 ], [ 0, %35 ]
  %43 = phi i32 [ %45, %41 ], [ %37, %35 ]
  %44 = phi ptr [ %51, %41 ], [ %38, %35 ]
  %45 = add i32 %43, -1
  %46 = shl i64 %42, 32
  %47 = load i32, ptr %44, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #17
  %49 = zext i32 %48 to i64
  %50 = or i64 %46, %49
  %51 = getelementptr i32, ptr %44, i32 1
  %52 = icmp eq i32 %45, 0
  br i1 %52, label %53, label %41

53:                                               ; preds = %41, %35
  %54 = phi i64 [ 0, %35 ], [ %50, %41 ]
  %55 = getelementptr i32, ptr %39, i32 %36
  %56 = icmp eq i32 %36, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %57, %53
  %58 = phi i64 [ %66, %57 ], [ 0, %53 ]
  %59 = phi i32 [ %61, %57 ], [ %36, %53 ]
  %60 = phi ptr [ %67, %57 ], [ %39, %53 ]
  %61 = add i32 %59, -1
  %62 = shl i64 %58, 32
  %63 = load i32, ptr %60, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #17
  %65 = zext i32 %64 to i64
  %66 = or i64 %62, %65
  %67 = getelementptr i32, ptr %60, i32 1
  %68 = icmp eq i32 %61, 0
  br i1 %68, label %69, label %57

69:                                               ; preds = %57
  %70 = icmp eq i64 %66, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %69
  call void @early_init_dt_add_memory_arch(i64 noundef %54, i64 noundef %66)
  br i1 %28, label %79, label %72

72:                                               ; preds = %71
  %73 = trunc i64 %54 to i32
  %74 = call i32 @memblock_mark_hotplug(i32 noundef %73, i32 noundef %64) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = add i64 %66, %54
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i64 noundef %54, i64 noundef %77) #18
  br label %79

79:                                               ; preds = %76, %72, %71, %69, %53
  %80 = ptrtoint ptr %55 to i32
  %81 = sub i32 %29, %80
  %82 = ashr exact i32 %81, 2
  %83 = load i32, ptr @dt_root_addr_cells, align 4
  %84 = load i32, ptr @dt_root_size_cells, align 4
  %85 = add i32 %84, %83
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %35

87:                                               ; preds = %79, %21, %17, %10, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  %88 = call i32 @fdt_next_subnode(ptr noundef %2, i32 noundef %6) #17
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %5, label %90

90:                                               ; preds = %87, %0
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @early_init_dt_add_memory_arch(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 -1073741824, i32 -2130706432, i32 8454144) #21, !srcloc !10
  %4 = zext i32 %3 to i64
  %5 = and i64 %0, 4095
  %6 = sub nuw nsw i64 4096, %5
  %7 = icmp ugt i64 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = add i64 %1, %0
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i64 noundef %0, i64 noundef %9) #18
  br label %49

11:                                               ; preds = %2
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = sub i64 %1, %6
  %15 = add i64 %0, 4095
  %16 = and i64 %15, -4096
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i64 [ %1, %11 ], [ %14, %13 ]
  %19 = phi i64 [ %0, %11 ], [ %16, %13 ]
  %20 = and i64 %18, -4096
  %21 = icmp ugt i64 %19, 4294967295
  %22 = add i64 %19, %20
  br i1 %21, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i64 noundef %19, i64 noundef %22) #18
  br label %49

25:                                               ; preds = %17
  %26 = add i64 %22, -4294967297
  %27 = icmp ult i64 %26, -4294967296
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i64 noundef 4294967296, i64 noundef %22) #18
  %30 = sub nuw nsw i64 4294967296, %19
  br label %35

31:                                               ; preds = %25
  %32 = icmp ult i64 %22, %4
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i64 noundef %19, i64 noundef %22) #18
  br label %49

35:                                               ; preds = %31, %28
  %36 = phi i64 [ %30, %28 ], [ %20, %31 ]
  %37 = icmp ult i64 %19, %4
  %38 = trunc i64 %36 to i32
  %39 = trunc i64 %19 to i32
  br i1 %37, label %40, label %45

40:                                               ; preds = %35
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i64 noundef %19, i64 noundef %4) #18
  %42 = sub nsw i64 %19, %4
  %43 = add i64 %42, %36
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %44, %40 ], [ %38, %35 ]
  %47 = phi i32 [ %3, %40 ], [ %39, %35 ]
  %48 = tail call i32 @memblock_add(i32 noundef %47, i32 noundef %46) #17
  br label %49

49:                                               ; preds = %45, %33, %23, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_hotplug(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @early_init_dt_scan_chosen(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @initial_boot_params, align 4
  %4 = tail call i32 @fdt_path_offset(ptr noundef %3, ptr noundef nonnull @.str.14) #17
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 @fdt_path_offset(ptr noundef %3, ptr noundef nonnull @.str.15) #17
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %7, %6 ], [ %4, %1 ]
  store i32 %10, ptr @chosen_node_offset, align 4
  tail call fastcc void @early_init_dt_check_for_initrd(i32 noundef %10) #20
  %11 = load ptr, ptr @initial_boot_params, align 4
  %12 = call ptr @fdt_getprop(ptr noundef %11, i32 noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull %2) #17
  %13 = icmp ne ptr %12, null
  %14 = load i32, ptr %2, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = call i32 @llvm.smin.i32(i32 %14, i32 1024)
  %19 = call i32 @strlcpy(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %18) #17
  br label %20

20:                                               ; preds = %17, %9
  %21 = load i8, ptr %0, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @strlcpy(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef 1024) #17
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @initial_boot_params, align 4
  %27 = call ptr @fdt_getprop(ptr noundef %26, i32 noundef %10, ptr noundef nonnull @.str.26, ptr noundef nonnull %2) #17
  %28 = icmp ne ptr %27, null
  %29 = load i32, ptr %2, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %55

32:                                               ; preds = %25
  call void @add_bootloader_randomness(ptr noundef nonnull %27, i32 noundef %29) #17
  %33 = load ptr, ptr @initial_boot_params, align 4
  %34 = call i32 @fdt_nop_property(ptr noundef %33, i32 noundef %10, ptr noundef nonnull @.str.26) #17
  %35 = load ptr, ptr @initial_boot_params, align 4
  %36 = getelementptr inbounds %struct.fdt_header, ptr %35, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 %38, 24
  %40 = getelementptr i8, ptr %36, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = or i32 %43, %39
  %45 = getelementptr i8, ptr %36, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %44, %48
  %50 = getelementptr i8, ptr %36, i32 3
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %49, %52
  %54 = call i32 @crc32_be(i32 noundef -1, ptr noundef %35, i32 noundef %53) #22
  store i32 %54, ptr @of_fdt_crc32, align 4
  br label %55

55:                                               ; preds = %32, %25, %6
  %56 = phi i32 [ -2, %6 ], [ 0, %32 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %56
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @early_init_dt_check_for_initrd(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @initial_boot_params, align 4
  %4 = call ptr @fdt_getprop(ptr noundef %3, i32 noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull %2) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = add i32 %7, 3
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = sdiv i32 %7, 4
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %15, %12 ], [ %11, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %4, %10 ]
  %15 = add i32 %13, -1
  %16 = getelementptr i32, ptr %14, i32 1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %12

18:                                               ; preds = %12
  %19 = load i32, ptr %14, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #17
  %21 = zext i32 %20 to i64
  br label %22

22:                                               ; preds = %18, %6
  %23 = phi i64 [ 0, %6 ], [ %21, %18 ]
  %24 = load ptr, ptr @initial_boot_params, align 4
  %25 = call ptr @fdt_getprop(ptr noundef %24, i32 noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull %2) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %2, align 4
  %29 = add i32 %28, 3
  %30 = icmp ult i32 %29, 7
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = sdiv i32 %28, 4
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi i32 [ %36, %33 ], [ %32, %31 ]
  %35 = phi ptr [ %37, %33 ], [ %25, %31 ]
  %36 = add i32 %34, -1
  %37 = getelementptr i32, ptr %35, i32 1
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %33

39:                                               ; preds = %33
  %40 = load i32, ptr %35, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #17
  %42 = zext i32 %41 to i64
  br label %43

43:                                               ; preds = %39, %27
  %44 = phi i64 [ 0, %27 ], [ %42, %39 ]
  %45 = trunc i64 %23 to i32
  %46 = trunc i64 %44 to i32
  %47 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %45, i32 -2130706432, i32 8454144) #21, !srcloc !11
  store i32 %47, ptr @initrd_start, align 4
  %48 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %46, i32 -2130706432, i32 8454144) #21, !srcloc !11
  store i32 %48, ptr @initrd_end, align 4
  store i32 1, ptr @initrd_below_start_ok, align 4
  store i32 %45, ptr @phys_initrd_start, align 4
  %49 = sub nsw i64 %44, %23
  %50 = trunc i64 %49 to i32
  store i32 %50, ptr @phys_initrd_size, align 4
  br label %51

51:                                               ; preds = %43, %22, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_bootloader_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_nop_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_add(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local zeroext i1 @early_init_dt_verify(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @fdt_check_header(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  store ptr %0, ptr @initial_boot_params, align 4
  %7 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr i8, ptr %7, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or i32 %14, %10
  %16 = getelementptr i8, ptr %7, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or i32 %15, %19
  %21 = getelementptr i8, ptr %7, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %20, %23
  %25 = tail call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %0, i32 noundef %24) #22
  store i32 %25, ptr @of_fdt_crc32, align 4
  br label %26

26:                                               ; preds = %6, %3, %1
  %27 = phi i1 [ true, %6 ], [ false, %1 ], [ false, %3 ]
  ret i1 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_init_dt_scan_nodes() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @early_init_dt_scan_root() #20
  %2 = tail call i32 @early_init_dt_scan_chosen(ptr noundef nonnull @boot_command_line) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #18
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 @early_init_dt_scan_memory() #20
  tail call void @early_init_dt_check_for_usable_mem_range() #20
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local zeroext i1 @early_init_dt_scan(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = tail call zeroext i1 @early_init_dt_verify(ptr noundef %0) #20
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @early_init_dt_scan_nodes() #20
  br label %4

4:                                                ; preds = %3, %1
  ret i1 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @unflatten_device_tree() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @initial_boot_params, align 4
  %2 = tail call ptr @__unflatten_device_tree(ptr noundef %1, ptr noundef null, ptr noundef nonnull @of_root, ptr noundef nonnull @early_init_dt_alloc_memory_arch, i1 noundef zeroext false)
  tail call void @of_alias_scan(ptr noundef nonnull @early_init_dt_alloc_memory_arch) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal ptr @early_init_dt_alloc_memory_arch(i64 noundef %0, i64 noundef %1) #0 section ".init.text" {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = tail call ptr @memblock_alloc_try_nid(i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.early_init_dt_alloc_memory_arch, i64 noundef %0, i64 noundef %1) #23
  unreachable

8:                                                ; preds = %2
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_alias_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @unflatten_and_copy_device_tree() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @initial_boot_params, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #18
  br label %30

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 %8, 24
  %10 = getelementptr i8, ptr %6, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or i32 %13, %9
  %15 = getelementptr i8, ptr %6, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 8
  %19 = or i32 %14, %18
  %20 = getelementptr i8, ptr %6, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @early_init_dt_alloc_memory_arch(i64 noundef %24, i64 noundef 64) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load ptr, ptr @initial_boot_params, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %25, ptr align 1 %28, i32 %23, i1 false)
  store ptr %25, ptr @initial_boot_params, align 4
  br label %29

29:                                               ; preds = %27, %5
  tail call void @unflatten_device_tree() #20
  br label %30

30:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @of_fdt_raw_init() #0 section ".init.text" {
  %1 = load ptr, ptr @initial_boot_params, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @of_fdt_crc32, align 4
  %5 = getelementptr inbounds %struct.fdt_header, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr i8, ptr %5, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, %8
  %14 = getelementptr i8, ptr %5, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or i32 %13, %17
  %19 = getelementptr i8, ptr %5, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %18, %21
  %23 = tail call i32 @crc32_be(i32 noundef -1, ptr noundef nonnull %1, i32 noundef %22) #22
  %24 = icmp eq i32 %4, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #18
  br label %30

27:                                               ; preds = %3
  store i32 %22, ptr getelementptr inbounds (%struct.bin_attribute, ptr @of_fdt_raw_init.of_fdt_raw_attr, i32 0, i32 1), align 4
  %28 = load ptr, ptr @firmware_kobj, align 4
  %29 = tail call i32 @sysfs_create_bin_file(ptr noundef %28, ptr noundef nonnull @of_fdt_raw_init.of_fdt_raw_attr) #17
  br label %30

30:                                               ; preds = %27, %25, %0
  %31 = phi i32 [ 0, %25 ], [ %29, %27 ], [ 0, %0 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reverse_nodes(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  br label %20

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %3, %1 ]
  tail call fastcc void @reverse_nodes(ptr noundef nonnull %7)
  %8 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %11
  %15 = phi ptr [ %18, %14 ], [ %12, %11 ]
  %16 = phi ptr [ %15, %14 ], [ null, %11 ]
  %17 = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  store ptr %16, ptr %17, align 4
  store ptr %15, ptr %2, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %11, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @populate_properties(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #4 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 4
  %10 = tail call i32 @fdt_first_property_offset(ptr noundef %0, i32 noundef %1) #17
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %66

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 1
  br label %14

14:                                               ; preds = %60, %12
  %15 = phi ptr [ %9, %12 ], [ %62, %60 ]
  %16 = phi i32 [ %10, %12 ], [ %63, %60 ]
  %17 = phi i1 [ false, %12 ], [ %61, %60 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 0, ptr %8, align 4, !annotation !8
  %18 = call ptr @fdt_getprop_by_offset(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %16) #18
  br label %60

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %16) #18
  br label %60

27:                                               ; preds = %22
  %28 = call i32 @strcmp(ptr noundef nonnull %23, ptr noundef nonnull dereferenceable(5) @.str.33)
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i1 true, i1 %17
  %31 = load ptr, ptr %2, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = add i32 %32, 3
  %34 = and i32 %33, -4
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr i8, ptr %35, i32 52
  store ptr %36, ptr %2, align 4
  br i1 %5, label %60, label %37

37:                                               ; preds = %27
  %38 = call i32 @strcmp(ptr noundef nonnull %23, ptr noundef nonnull dereferenceable(8) @.str.37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = call i32 @strcmp(ptr noundef nonnull %23, ptr noundef nonnull dereferenceable(14) @.str.38)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40, %37
  %44 = load i32, ptr %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, ptr %18, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #17
  store i32 %48, ptr %13, align 4
  br label %49

49:                                               ; preds = %46, %43, %40
  %50 = call i32 @strcmp(ptr noundef nonnull %23, ptr noundef nonnull dereferenceable(12) @.str.39)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, ptr %18, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #17
  store i32 %54, ptr %13, align 4
  br label %55

55:                                               ; preds = %52, %49
  store ptr %23, ptr %35, align 4
  %56 = load i32, ptr %8, align 4
  %57 = getelementptr inbounds %struct.property, ptr %35, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.property, ptr %35, i32 0, i32 2
  store ptr %18, ptr %58, align 4
  store ptr %35, ptr %15, align 4
  %59 = getelementptr inbounds %struct.property, ptr %35, i32 0, i32 3
  br label %60

60:                                               ; preds = %55, %27, %25, %20
  %61 = phi i1 [ %30, %55 ], [ %17, %25 ], [ %17, %20 ], [ %30, %27 ]
  %62 = phi ptr [ %59, %55 ], [ %15, %25 ], [ %15, %20 ], [ %15, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  %63 = call i32 @fdt_next_property_offset(ptr noundef %0, i32 noundef %16) #17
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %14, label %65

65:                                               ; preds = %60
  br i1 %61, label %101, label %66

66:                                               ; preds = %65, %6
  %67 = phi ptr [ %62, %65 ], [ %9, %6 ]
  br label %68

68:                                               ; preds = %76, %66
  %69 = phi ptr [ %79, %76 ], [ %4, %66 ]
  %70 = phi ptr [ %77, %76 ], [ %4, %66 ]
  %71 = phi ptr [ %78, %76 ], [ null, %66 ]
  %72 = load i8, ptr %69, align 1
  switch i8 %72, label %75 [
    i8 0, label %80
    i8 64, label %76
    i8 47, label %73
  ]

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %69, i32 1
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %73, %68
  %77 = phi ptr [ %74, %73 ], [ %70, %68 ], [ %70, %75 ]
  %78 = phi ptr [ %71, %73 ], [ %69, %68 ], [ %71, %75 ]
  %79 = getelementptr i8, ptr %69, i32 1
  br label %68

80:                                               ; preds = %68
  %81 = icmp ult ptr %71, %70
  %82 = select i1 %81, ptr %69, ptr %71
  %83 = ptrtoint ptr %82 to i32
  %84 = ptrtoint ptr %70 to i32
  %85 = sub i32 %83, %84
  %86 = add i32 %85, 53
  %87 = load ptr, ptr %2, align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = add i32 %88, 3
  %90 = and i32 %89, -4
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr i8, ptr %91, i32 %86
  store ptr %92, ptr %2, align 4
  br i1 %5, label %101, label %93

93:                                               ; preds = %80
  %94 = add i32 %85, 1
  store ptr @.str.33, ptr %91, align 4
  %95 = getelementptr inbounds %struct.property, ptr %91, i32 0, i32 1
  store i32 %94, ptr %95, align 4
  %96 = getelementptr %struct.property, ptr %91, i32 1
  %97 = getelementptr inbounds %struct.property, ptr %91, i32 0, i32 2
  store ptr %96, ptr %97, align 4
  store ptr %91, ptr %67, align 4
  %98 = load ptr, ptr %97, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %98, ptr align 1 %70, i32 %85, i1 false)
  %99 = load ptr, ptr %97, align 4
  %100 = getelementptr i8, ptr %99, i32 %85
  store i8 0, ptr %100, align 1
  br label %101

101:                                              ; preds = %93, %80, %65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_first_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop_by_offset(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_next_property_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_overlaps_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_reserved(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_check_root(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr @initial_boot_params, align 4
  %3 = tail call ptr @fdt_getprop(ptr noundef %2, i32 noundef %0, ptr noundef nonnull @.str.2, ptr noundef null) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #17
  %8 = load i32, ptr @dt_root_size_cells, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load ptr, ptr @initial_boot_params, align 4
  %12 = tail call ptr @fdt_getprop(ptr noundef %11, i32 noundef %0, ptr noundef nonnull @.str.1, ptr noundef null) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #17
  %17 = load i32, ptr @dt_root_addr_cells, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load ptr, ptr @initial_boot_params, align 4
  %21 = tail call ptr @fdt_getprop(ptr noundef %20, i32 noundef %0, ptr noundef nonnull @.str.43, ptr noundef null) #17
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, i32 -22, i32 0
  br label %24

24:                                               ; preds = %19, %14, %10, %5, %1
  %25 = phi i32 [ -22, %5 ], [ -22, %1 ], [ -22, %14 ], [ -22, %10 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__reserved_mem_reserve_reg(i32 noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, ptr @dt_root_addr_cells, align 4
  %6 = load i32, ptr @dt_root_size_cells, align 4
  %7 = add i32 %6, %5
  %8 = shl i32 %7, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = load ptr, ptr @initial_boot_params, align 4
  %10 = call ptr @fdt_getprop(ptr noundef %9, i32 noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = srem i32 %13, %8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %1) #18
  br label %73

20:                                               ; preds = %15, %12
  %21 = load ptr, ptr @initial_boot_params, align 4
  %22 = call ptr @fdt_getprop(ptr noundef %21, i32 noundef %0, ptr noundef nonnull @.str.48, ptr noundef null) #17
  %23 = icmp ne ptr %22, null
  %24 = load i32, ptr %4, align 4
  %25 = icmp slt i32 %24, %8
  br i1 %25, label %73, label %26

26:                                               ; preds = %70, %20
  %27 = phi i1 [ true, %70 ], [ false, %20 ]
  %28 = phi ptr [ %44, %70 ], [ %10, %20 ]
  %29 = load i32, ptr @dt_root_addr_cells, align 4
  %30 = getelementptr i32, ptr %28, i32 %29
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %32, %26
  %33 = phi i32 [ %35, %32 ], [ %29, %26 ]
  %34 = phi ptr [ %36, %32 ], [ %28, %26 ]
  %35 = add i32 %33, -1
  %36 = getelementptr i32, ptr %34, i32 1
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %32

38:                                               ; preds = %32
  %39 = load i32, ptr %34, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #17
  br label %41

41:                                               ; preds = %38, %26
  %42 = phi i32 [ 0, %26 ], [ %40, %38 ]
  store i32 %42, ptr %3, align 4
  %43 = load i32, ptr @dt_root_size_cells, align 4
  %44 = getelementptr i32, ptr %30, i32 %43
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %46, %41
  %47 = phi i32 [ %49, %46 ], [ %43, %41 ]
  %48 = phi ptr [ %50, %46 ], [ %30, %41 ]
  %49 = add i32 %47, -1
  %50 = getelementptr i32, ptr %48, i32 1
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %52, label %46

52:                                               ; preds = %46
  %53 = load i32, ptr %48, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = call i32 @llvm.bswap.i32(i32 %53) #17
  %57 = call fastcc i32 @early_init_dt_reserve_memory_arch(i32 noundef %42, i32 noundef %56, i1 noundef zeroext %23) #20
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %52, %41
  %60 = phi i32 [ 0, %52 ], [ %56, %55 ], [ 0, %41 ]
  %61 = lshr i32 %60, 20
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %61) #18
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %60, %59 ], [ %56, %55 ]
  %65 = load i32, ptr %4, align 4
  %66 = sub i32 %65, %8
  store i32 %66, ptr %4, align 4
  br i1 %27, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, ptr %3, align 4
  call void @fdt_reserved_mem_save_node(i32 noundef %0, ptr noundef %1, i32 noundef %68, i32 noundef %64) #17
  %69 = load i32, ptr %4, align 4
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i32 [ %69, %67 ], [ %66, %63 ]
  %72 = icmp slt i32 %71, %8
  br i1 %72, label %73, label %26

73:                                               ; preds = %70, %20, %18, %2
  %74 = phi i32 [ -22, %18 ], [ -2, %2 ], [ 0, %20 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fdt_reserved_mem_save_node(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @of_fdt_raw_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef writeonly %3, i64 noundef %4, i32 noundef returned %5) #16 {
  %7 = load ptr, ptr @initial_boot_params, align 4
  %8 = trunc i64 %4 to i32
  %9 = getelementptr i8, ptr %7, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %9, i32 %5, i1 false)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nofree nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { cold noreturn nounwind }

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
!10 = !{i64 2147810438, i64 2147810461, i64 2147810493, i64 2147810525, i64 2147810563, i64 2147810593}
!11 = !{i64 2147811224, i64 2147811247, i64 2147811279, i64 2147811311, i64 2147811349, i64 2147811379}
