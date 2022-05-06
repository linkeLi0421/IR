; ModuleID = '/llk/IR/drivers/misc/sram.c_pt.bc'
source_filename = "../drivers/misc/sram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.sram_config = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sram_dev = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, i32 }
%struct.sram_reserve = type { %struct.list_head, i32, i32, %struct.resource, i8, i8, i8, ptr }
%struct.sram_partition = type { ptr, ptr, %struct.bin_attribute, %struct.mutex, %struct.list_head }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__initcall__kmod_sram__166_475_sram_init2 = internal global ptr @sram_init, section ".initcall2.init", align 4
@sram_driver = internal global %struct.platform_driver { ptr @sram_probe, ptr @sram_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sram_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@sram_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmio-sram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-securam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_securam_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sysram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sysram_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sysram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sysram_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra234-sysram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sysram_config }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"no-memory-wc\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not map SRAM registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"could not get address for node %pOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"reserved block %pOF outside the sram area\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"protect-exec\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%pOF has invalid label name\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"block at 0x%x starts after current offset 0x%lx\0A\00", align 1
@sram_add_partition.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"&part->lock\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"could not map SRAM at %pr\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"failed to register subpool: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%llx.sram\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"removed pool while SRAM allocated\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"removed while SRAM allocated\0A\00", align 1
@atmel_securam_config = internal constant %struct.sram_config { ptr @atmel_securam_wait, i8 0 }, align 4
@tegra_sysram_config = internal constant %struct.sram_config { ptr null, i8 1 }, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"atmel,sama5d2-secumod\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_sram__166_475_sram_init2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sram_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sram_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sram_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca ptr, align 4
  %4 = alloca %struct.resource, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %5) #10
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 32, i32 noundef 3520) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %374, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 1
  store ptr %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef null) #10
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 3
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 4
  store ptr %6, ptr %7, align 4
  %17 = icmp eq ptr %6, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.sram_config, ptr %6, i32 0, i32 1
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %18, %9
  %23 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %24 = load i8, ptr %15, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %23) #10
  br label %30

28:                                               ; preds = %22
  %29 = tail call ptr @devm_ioremap_resource_wc(ptr noundef %5, ptr noundef %23) #10
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %29, %28 ], [ %27, %26 ]
  %32 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #11
  %35 = load ptr, ptr %32, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %374

37:                                               ; preds = %30
  %38 = load ptr, ptr %10, align 4
  %39 = tail call ptr @devm_gen_pool_create(ptr noundef %38, i32 noundef 5, i32 noundef -1, ptr noundef null) #10
  %40 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 4
  store ptr %39, ptr %40, align 4
  %41 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = ptrtoint ptr %39 to i32
  br label %374

44:                                               ; preds = %37, %18
  %45 = load ptr, ptr %10, align 4
  %46 = tail call ptr @devm_clk_get(ptr noundef %45, ptr noundef null) #10
  %47 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 5
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store ptr null, ptr %47, align 4
  br label %57

50:                                               ; preds = %44
  %51 = tail call i32 @clk_prepare(ptr noundef %46) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = tail call i32 @clk_enable(ptr noundef %46) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @clk_unprepare(ptr noundef %46) #10
  br label %57

57:                                               ; preds = %56, %53, %50, %49
  %58 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %59 = load ptr, ptr %10, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 25
  %61 = load ptr, ptr %60, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  store volatile ptr %2, ptr %2, align 8
  %62 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %62, align 4
  %63 = getelementptr inbounds %struct.resource, ptr %58, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i32, ptr %58, align 4
  %66 = add i32 %64, 1
  %67 = sub i32 %66, %65
  %68 = icmp eq ptr %61, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %57
  %70 = call ptr @of_get_next_available_child(ptr noundef nonnull %61, ptr noundef null) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ %75, %72 ], [ 0, %69 ]
  %74 = phi ptr [ %76, %72 ], [ %70, %69 ]
  %75 = add i32 %73, 1
  %76 = call ptr @of_get_next_available_child(ptr noundef nonnull %61, ptr noundef nonnull %74) #10
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %72

78:                                               ; preds = %72, %69
  %79 = phi i32 [ 0, %69 ], [ %75, %72 ]
  %80 = add i32 %79, 1
  br label %81

81:                                               ; preds = %78, %57
  %82 = phi i32 [ %80, %78 ], [ 1, %57 ]
  %83 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 56) #10
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %355, label %85, !prof !10

85:                                               ; preds = %81
  %86 = extractvalue { i32, i1 } %83, 0
  %87 = call noalias align 64 ptr @__kmalloc(i32 noundef %86, i32 noundef 3520) #12
  %88 = icmp eq ptr %87, null
  br i1 %88, label %355, label %89

89:                                               ; preds = %85
  %90 = call ptr @of_get_next_available_child(ptr noundef %61, ptr noundef null) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %172, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  br label %94

94:                                               ; preds = %166, %92
  %95 = phi ptr [ %90, %92 ], [ %170, %166 ]
  %96 = phi i32 [ 0, %92 ], [ %167, %166 ]
  %97 = phi ptr [ %87, %92 ], [ %169, %166 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #10, !annotation !9
  %98 = call i32 @of_address_to_resource(ptr noundef nonnull %95, i32 noundef 0, ptr noundef nonnull %4) #10
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %160, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %4, align 4
  %102 = load i32, ptr %58, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %160, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %93, align 4
  %106 = load i32, ptr %63, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %160, label %108

108:                                              ; preds = %104
  %109 = sub i32 %101, %102
  %110 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 1
  store i32 %109, ptr %110, align 4
  %111 = sub i32 1, %101
  %112 = add i32 %111, %105
  %113 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 2
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %114, ptr noundef nonnull align 4 dereferenceable(32) %4, i32 32, i1 false) #10
  %115 = load ptr, ptr %62, align 4
  store ptr %97, ptr %62, align 4
  store ptr %2, ptr %97, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %115, ptr %116, align 4
  store volatile ptr %97, ptr %115, align 4
  %117 = call ptr @of_find_property(ptr noundef nonnull %95, ptr noundef nonnull @.str.5, ptr noundef null) #10
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 4
  store i8 1, ptr %120, align 4
  br label %121

121:                                              ; preds = %119, %108
  %122 = call ptr @of_find_property(ptr noundef nonnull %95, ptr noundef nonnull @.str.6, ptr noundef null) #10
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 5
  store i8 1, ptr %125, align 1
  br label %126

126:                                              ; preds = %124, %121
  %127 = call ptr @of_find_property(ptr noundef nonnull %95, ptr noundef nonnull @.str.7, ptr noundef null) #10
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 6
  store i8 1, ptr %130, align 2
  br label %131

131:                                              ; preds = %129, %126
  %132 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 4
  %133 = load i8, ptr %132, align 4, !range !8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 5
  %137 = load i8, ptr %136, align 1, !range !8
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 6
  %141 = load i8, ptr %140, align 2, !range !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %166, label %143

143:                                              ; preds = %139, %135, %131
  %144 = load i32, ptr %113, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %166, label %146

146:                                              ; preds = %143
  %147 = add i32 %96, 1
  store ptr null, ptr %3, align 4
  %148 = call i32 @of_property_read_string(ptr noundef nonnull %95, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #10
  switch i32 %148, label %160 [
    i32 -22, label %149
    i32 0, label %149
  ]

149:                                              ; preds = %146, %146
  %150 = load ptr, ptr %3, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load ptr, ptr %95, align 4
  store ptr %153, ptr %3, align 4
  br label %154

154:                                              ; preds = %152, %149
  %155 = phi ptr [ %153, %152 ], [ %150, %149 ]
  %156 = load ptr, ptr %10, align 4
  %157 = call noalias ptr @devm_kstrdup(ptr noundef %156, ptr noundef %155, i32 noundef 3264) #10
  %158 = getelementptr inbounds %struct.sram_reserve, ptr %97, i32 0, i32 7
  store ptr %157, ptr %158, align 4
  %159 = icmp eq ptr %157, null
  br i1 %159, label %164, label %166

160:                                              ; preds = %146, %104, %100, %94
  %161 = phi ptr [ @.str.3, %94 ], [ @.str.4, %104 ], [ @.str.4, %100 ], [ @.str.9, %146 ]
  %162 = phi i32 [ %98, %94 ], [ -22, %104 ], [ -22, %100 ], [ %148, %146 ]
  %163 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull %161, ptr noundef nonnull %95) #11
  br label %164

164:                                              ; preds = %160, %154
  %165 = phi i32 [ %162, %160 ], [ -12, %154 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  br label %356

166:                                              ; preds = %154, %143, %139
  %167 = phi i32 [ %147, %154 ], [ %96, %143 ], [ %96, %139 ]
  %168 = phi i32 [ %148, %154 ], [ %98, %143 ], [ %98, %139 ]
  %169 = getelementptr %struct.sram_reserve, ptr %97, i32 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  %170 = call ptr @of_get_next_available_child(ptr noundef %61, ptr noundef nonnull %95) #10
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %94

172:                                              ; preds = %166, %89
  %173 = phi i32 [ 0, %89 ], [ %167, %166 ]
  %174 = phi i32 [ 0, %89 ], [ %168, %166 ]
  %175 = add i32 %82, -1
  %176 = getelementptr %struct.sram_reserve, ptr %87, i32 %175
  %177 = getelementptr %struct.sram_reserve, ptr %87, i32 %175, i32 1
  store i32 %67, ptr %177, align 8
  %178 = getelementptr %struct.sram_reserve, ptr %87, i32 %175, i32 2
  store i32 0, ptr %178, align 4
  %179 = load ptr, ptr %62, align 4
  store ptr %176, ptr %62, align 4
  store ptr %2, ptr %176, align 8
  %180 = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  store ptr %179, ptr %180, align 4
  store volatile ptr %176, ptr %179, align 4
  call void @list_sort(ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull @sram_reserve_cmp) #10
  %181 = icmp eq i32 %173, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %172
  %183 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %173, i32 68) #10
  %184 = extractvalue { i32, i1 } %183, 1
  br i1 %184, label %185, label %187, !prof !10

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 6
  store ptr null, ptr %186, align 4
  br label %356

187:                                              ; preds = %182
  %188 = load ptr, ptr %10, align 4
  %189 = extractvalue { i32, i1 } %183, 0
  %190 = call noalias ptr @devm_kmalloc(ptr noundef %188, i32 noundef %189, i32 noundef 3520) #10
  %191 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 6
  store ptr %190, ptr %191, align 4
  %192 = icmp eq ptr %190, null
  br i1 %192, label %356, label %193

193:                                              ; preds = %187, %172
  %194 = load ptr, ptr %2, align 8
  %195 = icmp eq ptr %194, %2
  br i1 %195, label %356, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 6
  %198 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 7
  %199 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 2
  %200 = getelementptr inbounds %struct.sram_dev, ptr %7, i32 0, i32 4
  br label %201

201:                                              ; preds = %347, %196
  %202 = phi ptr [ %194, %196 ], [ %353, %347 ]
  %203 = phi i32 [ %174, %196 ], [ %349, %347 ]
  %204 = phi i32 [ 0, %196 ], [ %352, %347 ]
  %205 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = icmp ult i32 %206, %204
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.10, i32 noundef %206, i32 noundef %204) #11
  call fastcc void @sram_free_partitions(ptr noundef nonnull %7) #10
  br label %356

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 4
  %212 = load i8, ptr %211, align 4, !range !8
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 5
  %216 = load i8, ptr %215, align 1, !range !8
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 6
  %220 = load i8, ptr %219, align 2, !range !8
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %328, label %222

222:                                              ; preds = %218, %214, %210
  %223 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %328, label %226

226:                                              ; preds = %222
  %227 = load i32, ptr %58, align 4
  %228 = add i32 %227, %206
  %229 = load ptr, ptr %197, align 4
  %230 = load i32, ptr %198, align 4
  %231 = getelementptr %struct.sram_partition, ptr %229, i32 %230
  %232 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 3
  call void @__mutex_init(ptr noundef %232, ptr noundef nonnull @.str.11, ptr noundef nonnull @sram_add_partition.__key) #10
  %233 = load ptr, ptr %7, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %253, label %235

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.sram_config, ptr %233, i32 0, i32 1
  %237 = load i8, ptr %236, align 4, !range !8
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %253, label %239

239:                                              ; preds = %235
  %240 = load i8, ptr %15, align 4, !range !8
  %241 = icmp eq i8 %240, 0
  %242 = load ptr, ptr %10, align 4
  %243 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 3
  br i1 %241, label %246, label %244

244:                                              ; preds = %239
  %245 = call ptr @devm_ioremap_resource(ptr noundef %242, ptr noundef %243) #10
  br label %248

246:                                              ; preds = %239
  %247 = call ptr @devm_ioremap_resource_wc(ptr noundef %242, ptr noundef %243) #10
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi ptr [ %245, %244 ], [ %247, %246 ]
  %250 = icmp ugt ptr %249, inttoptr (i32 -4096 to ptr)
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %252, ptr noundef nonnull @.str.12, ptr noundef %243) #11
  br label %323

253:                                              ; preds = %235, %226
  %254 = load ptr, ptr %199, align 4
  %255 = load i32, ptr %205, align 4
  %256 = getelementptr i8, ptr %254, i32 %255
  br label %257

257:                                              ; preds = %253, %248
  %258 = phi ptr [ %256, %253 ], [ %249, %248 ]
  store ptr %258, ptr %231, align 4
  %259 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 5
  %260 = load i8, ptr %259, align 1, !range !8
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %277, label %262

262:                                              ; preds = %257
  %263 = load ptr, ptr %10, align 4
  %264 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 7
  %265 = load ptr, ptr %264, align 4
  %266 = call ptr @devm_gen_pool_create(ptr noundef %263, i32 noundef 5, i32 noundef -1, ptr noundef %265) #10
  %267 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 1
  store ptr %266, ptr %267, align 4
  %268 = icmp ugt ptr %266, inttoptr (i32 -4096 to ptr)
  br i1 %268, label %323, label %269

269:                                              ; preds = %262
  %270 = load ptr, ptr %231, align 4
  %271 = ptrtoint ptr %270 to i32
  %272 = load i32, ptr %223, align 4
  %273 = call i32 @gen_pool_add_owner(ptr noundef %266, i32 noundef %271, i32 noundef %228, i32 noundef %272, i32 noundef -1, ptr noundef null) #10
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.13, i32 noundef %273) #11
  br label %326

277:                                              ; preds = %269, %257
  %278 = load i8, ptr %211, align 4, !range !8
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %295, label %280

280:                                              ; preds = %277
  %281 = load ptr, ptr %10, align 4
  %282 = zext i32 %228 to i64
  %283 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %281, i32 noundef 3264, ptr noundef nonnull @.str.14, i64 noundef %282) #10
  %284 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 2
  store ptr %283, ptr %284, align 4
  %285 = icmp eq ptr %283, null
  br i1 %285, label %326, label %286

286:                                              ; preds = %280
  %287 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 2, i32 0, i32 1
  store i16 384, ptr %287, align 4
  %288 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 2, i32 4
  store ptr @sram_read, ptr %288, align 4
  %289 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 2, i32 5
  store ptr @sram_write, ptr %289, align 4
  %290 = load i32, ptr %223, align 4
  %291 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 2, i32 1
  store i32 %290, ptr %291, align 4
  %292 = load ptr, ptr %10, align 4
  %293 = call i32 @device_create_bin_file(ptr noundef %292, ptr noundef %284) #10
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %326

295:                                              ; preds = %286, %277
  %296 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 6
  %297 = load i8, ptr %296, align 2, !range !8
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %319, label %299

299:                                              ; preds = %295
  %300 = call i32 @sram_check_protect_exec(ptr noundef nonnull %7, ptr noundef %202, ptr noundef %231) #10
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %326

302:                                              ; preds = %299
  %303 = load ptr, ptr %10, align 4
  %304 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 7
  %305 = load ptr, ptr %304, align 4
  %306 = call ptr @devm_gen_pool_create(ptr noundef %303, i32 noundef 5, i32 noundef -1, ptr noundef %305) #10
  %307 = getelementptr %struct.sram_partition, ptr %229, i32 %230, i32 1
  store ptr %306, ptr %307, align 4
  %308 = icmp ugt ptr %306, inttoptr (i32 -4096 to ptr)
  br i1 %308, label %323, label %309

309:                                              ; preds = %302
  %310 = load ptr, ptr %231, align 4
  %311 = ptrtoint ptr %310 to i32
  %312 = load i32, ptr %223, align 4
  %313 = call i32 @gen_pool_add_owner(ptr noundef %306, i32 noundef %311, i32 noundef %228, i32 noundef %312, i32 noundef -1, ptr noundef null) #10
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %309
  %316 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %316, ptr noundef nonnull @.str.13, i32 noundef %313) #11
  br label %326

317:                                              ; preds = %309
  %318 = call i32 @sram_add_protect_exec(ptr noundef %231) #10
  br label %319

319:                                              ; preds = %317, %295
  %320 = load i32, ptr %198, align 4
  %321 = add i32 %320, 1
  store i32 %321, ptr %198, align 4
  %322 = load i32, ptr %205, align 4
  br label %328

323:                                              ; preds = %302, %262, %251
  %324 = phi ptr [ %249, %251 ], [ %266, %262 ], [ %306, %302 ]
  %325 = ptrtoint ptr %324 to i32
  br label %326

326:                                              ; preds = %323, %315, %299, %286, %280, %275
  %327 = phi i32 [ %325, %323 ], [ %313, %315 ], [ %273, %275 ], [ -12, %280 ], [ %300, %299 ], [ %293, %286 ]
  call fastcc void @sram_free_partitions(ptr noundef nonnull %7) #10
  br label %356

328:                                              ; preds = %319, %222, %218
  %329 = phi i32 [ %206, %222 ], [ %206, %218 ], [ %322, %319 ]
  %330 = phi i32 [ %203, %222 ], [ %203, %218 ], [ 0, %319 ]
  %331 = icmp eq i32 %329, %204
  br i1 %331, label %347, label %332

332:                                              ; preds = %328
  %333 = load ptr, ptr %200, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %347, label %335

335:                                              ; preds = %332
  %336 = sub i32 %329, %204
  %337 = load ptr, ptr %199, align 4
  %338 = ptrtoint ptr %337 to i32
  %339 = add i32 %204, %338
  %340 = load i32, ptr %58, align 4
  %341 = add i32 %340, %204
  %342 = call i32 @gen_pool_add_owner(ptr noundef nonnull %333, i32 noundef %339, i32 noundef %341, i32 noundef %336, i32 noundef -1, ptr noundef null) #10
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %335
  %345 = load i32, ptr %205, align 4
  br label %347

346:                                              ; preds = %335
  call fastcc void @sram_free_partitions(ptr noundef nonnull %7) #10
  br label %356

347:                                              ; preds = %344, %332, %328
  %348 = phi i32 [ %204, %328 ], [ %345, %344 ], [ %329, %332 ]
  %349 = phi i32 [ %330, %328 ], [ %342, %344 ], [ %330, %332 ]
  %350 = getelementptr inbounds %struct.sram_reserve, ptr %202, i32 0, i32 2
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %351, %348
  %353 = load ptr, ptr %202, align 4
  %354 = icmp eq ptr %353, %2
  br i1 %354, label %356, label %201

355:                                              ; preds = %85, %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %369

356:                                              ; preds = %347, %346, %326, %208, %193, %187, %185, %164
  %357 = phi i32 [ -22, %208 ], [ %327, %326 ], [ %342, %346 ], [ -12, %187 ], [ %165, %164 ], [ -12, %185 ], [ %174, %193 ], [ %349, %347 ]
  %358 = phi ptr [ null, %208 ], [ null, %326 ], [ null, %346 ], [ null, %187 ], [ %95, %164 ], [ null, %185 ], [ null, %193 ], [ null, %347 ]
  call void @of_node_put(ptr noundef %358) #10
  call void @kfree(ptr noundef nonnull %87) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %359 = icmp eq i32 %357, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %361, align 8
  br i1 %17, label %374, label %362

362:                                              ; preds = %360
  %363 = load ptr, ptr %6, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %374, label %365

365:                                              ; preds = %362
  %366 = call i32 %363() #10
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %365
  call fastcc void @sram_free_partitions(ptr noundef nonnull %7)
  br label %369

369:                                              ; preds = %368, %356, %355
  %370 = phi i32 [ %357, %356 ], [ %366, %368 ], [ -12, %355 ]
  %371 = load ptr, ptr %47, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  call void @clk_disable(ptr noundef nonnull %371) #10
  call void @clk_unprepare(ptr noundef nonnull %371) #10
  br label %374

374:                                              ; preds = %373, %369, %365, %362, %360, %42, %34, %1
  %375 = phi i32 [ %36, %34 ], [ %43, %42 ], [ -12, %1 ], [ 0, %365 ], [ 0, %362 ], [ 0, %360 ], [ %370, %373 ], [ %370, %369 ]
  ret i32 %375
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sram_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @sram_free_partitions(ptr noundef %3)
  %4 = getelementptr inbounds %struct.sram_dev, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @gen_pool_avail(ptr noundef nonnull %5) #10
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @gen_pool_size(ptr noundef %9) #10
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sram_dev, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16) #11
  br label %15

15:                                               ; preds = %12, %7, %1
  %16 = getelementptr inbounds %struct.sram_dev, ptr %3, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @clk_disable(ptr noundef nonnull %17) #10
  tail call void @clk_unprepare(ptr noundef nonnull %17) #10
  br label %20

20:                                               ; preds = %19, %15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource_wc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gen_pool_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sram_free_partitions(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sram_dev, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sram_dev, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %3, -1
  %9 = getelementptr %struct.sram_partition, ptr %7, i32 %8
  %10 = getelementptr inbounds %struct.sram_dev, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %30, %5
  %12 = phi ptr [ %9, %5 ], [ %33, %30 ]
  %13 = getelementptr inbounds %struct.sram_partition, ptr %12, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sram_partition, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %10, align 4
  tail call void @device_remove_bin_file(ptr noundef %18, ptr noundef %17) #10
  br label %19

19:                                               ; preds = %16, %11
  %20 = getelementptr inbounds %struct.sram_partition, ptr %12, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @gen_pool_avail(ptr noundef nonnull %21) #10
  %25 = load ptr, ptr %20, align 4
  %26 = tail call i32 @gen_pool_size(ptr noundef %25) #10
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15) #11
  br label %30

30:                                               ; preds = %28, %23, %19
  %31 = load i32, ptr %2, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %2, align 4
  %33 = getelementptr %struct.sram_partition, ptr %12, i32 -1
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %11

35:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sram_reserve_cmp(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #7 {
  %4 = getelementptr inbounds %struct.sram_reserve, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sram_reserve, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_check_protect_exec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_add_protect_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sram_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef returned %5) #2 {
  %7 = getelementptr i8, ptr %2, i32 -8
  %8 = getelementptr i8, ptr %2, i32 32
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = load ptr, ptr %7, align 4
  %10 = trunc i64 %4 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  tail call void @mmiocpy(ptr noundef %3, ptr noundef %11, i32 noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %8) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sram_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef returned %5) #2 {
  %7 = getelementptr i8, ptr %2, i32 -8
  %8 = getelementptr i8, ptr %2, i32 32
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = load ptr, ptr %7, align 4
  %10 = trunc i64 %4 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  tail call void @mmiocpy(ptr noundef %11, ptr noundef %3, i32 noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %8) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_avail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_securam_wait() #2 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  store i32 0, ptr %1, align 4, !annotation !9
  %2 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.17) #10
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %30, label %4

4:                                                ; preds = %0
  %5 = tail call i64 @ktime_get() #10
  %6 = add i64 %5, 500000000
  %7 = call i32 @regmap_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %1) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %18, %4
  %10 = load i32, ptr %1, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = call i64 @ktime_get() #10
  %15 = icmp sgt i64 %14, %6
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @regmap_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %1) #10
  br label %21

18:                                               ; preds = %13
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #10
  %19 = call i32 @regmap_read(ptr noundef %2, i32 noundef 20, ptr noundef nonnull %1) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %9, label %21

21:                                               ; preds = %18, %16, %9, %4
  %22 = phi i32 [ %17, %16 ], [ %7, %4 ], [ 0, %9 ], [ %19, %18 ]
  %23 = icmp ne i32 %22, 0
  %24 = load i32, ptr %1, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %23, i1 true, i1 %26
  %28 = select i1 %27, i32 0, i32 -110
  %29 = select i1 %23, i32 %22, i32 %28
  br label %30

30:                                               ; preds = %21, %0
  %31 = phi i32 [ %29, %21 ], [ -19, %0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
