; ModuleID = '/llk/IR/drivers/soc/atmel/soc.c_pt.bc'
source_filename = "../drivers/soc/atmel/soc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.at91_soc = type { i32, i32, i32, i32, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [43 x i8] c"\014AT91: Could not find identification node\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\014AT91: Could not find matching SoC description\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\014AT91: Could not register SoC device\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\016AT91: Detected SoC family: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\016AT91: Detected SoC: %s, revision %X\0A\00", align 1
@__initcall__kmod_soc__166_376_atmel_soc_device_init4 = internal global ptr @atmel_soc_device_init, section ".initcall4.init", align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"atmel,at91rm9200-dbgu\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"atmel,at91sam9260-dbgu\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\014AT91: Could not map DBGU iomem range\00", align 1
@at91_get_cidr_exid_from_chipid.chipids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-chipid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-chipid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@at91_soc_allowed_list = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,samv7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@socs = internal constant [32 x %struct.at91_soc] [%struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 90, ptr @.str.10, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 89, ptr @.str.12, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 83, ptr @.str.13, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 88, ptr @.str.14, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 4, ptr @.str.15, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 20, ptr @.str.15, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 18, ptr @.str.16, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 17, ptr @.str.17, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 33, ptr @.str.17, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 51, ptr @.str.18, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 50, ptr @.str.19, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 97, ptr @.str.20, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 98, ptr @.str.21, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 16, ptr @.str.22, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 32, ptr @.str.22, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 19, ptr @.str.23, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 113, ptr @.str.24, ptr @.str.11 }, %struct.at91_soc { i32 173803712, i32 2147483616, i32 31, i32 114, ptr @.str.25, ptr @.str.11 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 4473600, ptr @.str.26, ptr @.str.27 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 4276992, ptr @.str.28, ptr @.str.27 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 4276993, ptr @.str.29, ptr @.str.27 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 5784320, ptr @.str.30, ptr @.str.27 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 17153, ptr @.str.31, ptr @.str.27 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 1, ptr @.str.32, ptr @.str.33 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 2, ptr @.str.34, ptr @.str.33 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 3, ptr @.str.35, ptr @.str.33 }, %struct.at91_soc { i32 173803456, i32 2147483616, i32 31, i32 4, ptr @.str.36, ptr @.str.33 }, %struct.at91_soc { i32 1450240, i32 2147483616, i32 15, i32 3, ptr @.str.37, ptr @.str.38 }, %struct.at91_soc { i32 1450240, i32 2147483616, i32 15, i32 2, ptr @.str.39, ptr @.str.38 }, %struct.at91_soc { i32 1450240, i32 2147483616, i32 15, i32 1, ptr @.str.40, ptr @.str.38 }, %struct.at91_soc { i32 1450240, i32 2147483616, i32 15, i32 0, ptr @.str.41, ptr @.str.38 }, %struct.at91_soc zeroinitializer], section ".init.rodata", align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"sama5d21\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"sama5d2\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"sama5d22\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"sama5d225c 16MiB SiP\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"sama5d23\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"sama5d24\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"sama5d26\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"sama5d27\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"sama5d27c 128MiB SiP\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"sama5d27c 64MiB SiP\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"sama5d27c 128MiB LPDDR2 SiP\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"sama5d27c 256MiB LPDDR2 SiP\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"sama5d28\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"sama5d28c 128MiB SiP\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"sama5d28c 128MiB LPDDR2 SiP\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"sama5d28c 256MiB LPDDR2 SiP\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"sama5d31\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"sama5d3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"sama5d33\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"sama5d34\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"sama5d35\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"sama5d36\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"sama5d41\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"sama5d4\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"sama5d42\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"sama5d43\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"sama5d44\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"sama7g51\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"sama7g5\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"sama7g52\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"sama7g53\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"sama7g54\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_soc__166_376_atmel_soc_device_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @at91_soc_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call fastcc i32 @at91_get_cidr_exid_from_dbgu(ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call fastcc i32 @at91_get_cidr_exid_from_chipid(ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  switch i32 %7, label %68 [
    i32 0, label %8
    i32 -19, label %16
  ]

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.at91_soc, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %2, align 4
  %14 = icmp sgt i32 %13, -1
  %15 = load i32, ptr %3, align 4
  br label %18

16:                                               ; preds = %6
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %68

18:                                               ; preds = %30, %12
  %19 = phi ptr [ %0, %12 ], [ %31, %30 ]
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.at91_soc, ptr %19, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %13
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  br i1 %14, label %37, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.at91_soc, ptr %19, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %37, label %30

30:                                               ; preds = %26, %18
  %31 = getelementptr %struct.at91_soc, ptr %19, i32 1
  %32 = getelementptr %struct.at91_soc, ptr %19, i32 1, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %18

35:                                               ; preds = %30, %8
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %68

37:                                               ; preds = %26, %25
  %38 = getelementptr inbounds %struct.at91_soc, ptr %19, i32 0, i32 4
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 28) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %68, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.at91_soc, ptr %19, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.soc_device_attribute, ptr %40, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr inbounds %struct.soc_device_attribute, ptr %40, i32 0, i32 4
  store ptr %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.at91_soc, ptr %19, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, %13
  %51 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %50) #5
  %52 = getelementptr inbounds %struct.soc_device_attribute, ptr %40, i32 0, i32 2
  store ptr %51, ptr %52, align 8
  %53 = tail call ptr @soc_device_register(ptr noundef nonnull %40) #5
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load ptr, ptr %52, align 8
  tail call void @kfree(ptr noundef %56) #5
  tail call void @kfree(ptr noundef nonnull %40) #5
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %68

58:                                               ; preds = %42
  %59 = load ptr, ptr %43, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %59) #7
  br label %63

63:                                               ; preds = %61, %58
  %64 = load ptr, ptr %38, align 4
  %65 = load i32, ptr %48, align 4
  %66 = and i32 %65, %13
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %64, i32 noundef %66) #7
  br label %68

68:                                               ; preds = %63, %55, %37, %35, %16, %6
  %69 = phi ptr [ null, %55 ], [ %53, %63 ], [ null, %35 ], [ null, %6 ], [ null, %16 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret ptr %69
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @at91_get_cidr_exid_from_dbgu(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = tail call ptr @of_iomap(ptr noundef nonnull %9, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef nonnull %9) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %19

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %10, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  store i32 %16, ptr %0, align 4
  %17 = getelementptr i8, ptr %10, i32 68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  store i32 %18, ptr %1, align 4
  tail call void @iounmap(ptr noundef nonnull %10) #5
  br label %19

19:                                               ; preds = %14, %12, %5
  %20 = phi i32 [ 0, %14 ], [ -6, %12 ], [ -19, %5 ]
  ret i32 %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @at91_get_cidr_exid_from_chipid(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @at91_get_cidr_exid_from_chipid.chipids, ptr noundef null) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @of_iomap(ptr noundef nonnull %3, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef nonnull %3) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %14

10:                                               ; preds = %5
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  store i32 %11, ptr %0, align 4
  %12 = getelementptr i8, ptr %6, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  store i32 %13, ptr %1, align 4
  tail call void @iounmap(ptr noundef nonnull %6) #5
  br label %14

14:                                               ; preds = %10, %8, %2
  %15 = phi i32 [ 0, %10 ], [ -6, %8 ], [ -19, %2 ]
  ret i32 %15
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_soc_device_init() #0 section ".init.text" {
  %1 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.9, ptr noundef null) #5
  %2 = tail call ptr @of_match_node(ptr noundef nonnull @at91_soc_allowed_list, ptr noundef %1) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @at91_soc_init(ptr noundef nonnull @socs) #6
  br label %6

6:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 372488}
!10 = !{i64 2151534599}
!11 = !{i64 2151534920}
!12 = !{i64 2151535933}
!13 = !{i64 2151536254}
