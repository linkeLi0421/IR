; ModuleID = '/llk/IR/drivers/memory/ti-aemif.c_pt.bc'
source_filename = "../drivers/memory/ti-aemif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aemif_device = type { ptr, ptr, i32, i8, i32, [4 x %struct.aemif_cs_data] }
%struct.aemif_cs_data = type { i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.aemif_platform_data = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.aemif_abus_data = type { i32 }

@__initcall__kmod_ti_aemif__162_449_aemif_driver_init6 = internal global ptr @aemif_driver_init, section ".initcall6.init", align 4
@aemif_driver = internal global %struct.platform_driver { ptr @aemif_probe, ptr @aemif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aemif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_aemif_driver_exit = internal global ptr @aemif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [55 x i8] c"ti_aemif.author=Murali Karicheri <m-karicheri2@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author164 = internal constant [57 x i8] c"ti_aemif.author=Ivan Khoronzhuk <ivan.khoronzhuk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description165 = internal constant [52 x i8] c"ti_aemif.description=Texas Instruments AEMIF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file166 = internal constant [38 x i8] c"ti_aemif.file=drivers/memory/ti-aemif\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [24 x i8] c"ti_aemif.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias168 = internal constant [33 x i8] c"ti_aemif.alias=platform:ti_aemif\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"ti-aemif\00", align 1
@aemif_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,davinci-aemif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da850-aemif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot get clock 'aemif'\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ti,da850-aemif\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Error configuring chip select %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Error register sub device %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ti,cs-chipselect\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"ti,cs-min-turnaround-ns\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ti,cs-read-hold-ns\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ti,cs-read-strobe-ns\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ti,cs-read-setup-ns\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ti,cs-write-hold-ns\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"ti,cs-write-strobe-ns\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ti,cs-write-setup-ns\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"ti,cs-bus-width\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"ti,cs-extended-wait-mode\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"ti,cs-select-strobe-mode\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"%s: cannot get suitable timings\0A\00", align 1
@__func__.aemif_config_abus = private unnamed_addr constant [18 x i8] c"aemif_config_abus\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias168, ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_author164, ptr @__UNIQUE_ID_description165, ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__exitcall_aemif_driver_exit, ptr @__initcall__kmod_ti_aemif__162_449_aemif_driver_init6, ptr @aemif_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aemif_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @aemif_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aemif_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @aemif_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aemif_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 76, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %502, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %17, align 8
  %18 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #5
  %19 = getelementptr inbounds %struct.aemif_device, ptr %7, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  %22 = load ptr, ptr %19, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %502

24:                                               ; preds = %15
  %25 = tail call i32 @clk_prepare(ptr noundef %18) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %502

27:                                               ; preds = %24
  %28 = tail call i32 @clk_enable(ptr noundef %18) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %502

31:                                               ; preds = %27
  %32 = load ptr, ptr %19, align 4
  %33 = tail call i32 @clk_get_rate(ptr noundef %32) #5
  %34 = udiv i32 %33, 1000
  %35 = getelementptr inbounds %struct.aemif_device, ptr %7, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = icmp eq ptr %6, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %6, ptr noundef nonnull @.str.2) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %31
  br i1 %12, label %47, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.aemif_platform_data, ptr %11, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %43, %41 ], [ 2, %37 ]
  %46 = getelementptr inbounds %struct.aemif_device, ptr %7, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %49 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %48) #5
  store ptr %49, ptr %7, align 4
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %49 to i32
  br label %499

53:                                               ; preds = %47
  br i1 %36, label %220, label %54

54:                                               ; preds = %53
  %55 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %6, ptr noundef null) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %313, label %57

57:                                               ; preds = %209, %54
  %58 = phi ptr [ %218, %209 ], [ %55, %54 ]
  %59 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %208

62:                                               ; preds = %57
  %63 = load i32, ptr %2, align 4
  %64 = getelementptr inbounds %struct.aemif_device, ptr %59, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 %63, %65
  %67 = icmp ugt i32 %66, 3
  %68 = icmp ult i32 %63, %65
  %69 = or i1 %68, %67
  br i1 %69, label %208, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.aemif_device, ptr %59, i32 0, i32 3
  %72 = load i8, ptr %71, align 4
  %73 = icmp ugt i8 %72, 3
  br i1 %73, label %208, label %74

74:                                               ; preds = %70
  %75 = zext i8 %72 to i32
  %76 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75
  %77 = trunc i32 %63 to i8
  store i8 %77, ptr %76, align 2
  %78 = add nuw nsw i8 %72, 1
  store i8 %78, ptr %71, align 4
  %79 = load ptr, ptr %17, align 8
  %80 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75
  %81 = getelementptr inbounds %struct.aemif_device, ptr %79, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = load i8, ptr %80, align 2
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.aemif_device, ptr %79, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 %84, %86
  %88 = shl i32 %87, 2
  %89 = add i32 %88, 16
  %90 = load ptr, ptr %79, align 4
  %91 = getelementptr i8, ptr %90, i32 %89
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %93 = lshr i32 %92, 2
  %94 = and i32 %93, 3
  %95 = mul nuw nsw i32 %94, 1000000
  %96 = add nuw nsw i32 %95, 1000000
  %97 = udiv i32 %96, %82
  %98 = trunc i32 %97 to i8
  %99 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 7
  store i8 %98, ptr %99, align 2
  %100 = lshr i32 %92, 4
  %101 = and i32 %100, 7
  %102 = mul nuw nsw i32 %101, 1000000
  %103 = add nuw nsw i32 %102, 1000000
  %104 = udiv i32 %103, %82
  %105 = trunc i32 %104 to i8
  %106 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 6
  store i8 %105, ptr %106, align 1
  %107 = lshr i32 %92, 7
  %108 = and i32 %107, 63
  %109 = mul nuw nsw i32 %108, 1000000
  %110 = add nuw nsw i32 %109, 1000000
  %111 = udiv i32 %110, %82
  %112 = trunc i32 %111 to i16
  %113 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 2
  store i16 %112, ptr %113, align 2
  %114 = lshr i32 %92, 13
  %115 = and i32 %114, 15
  %116 = mul nuw nsw i32 %115, 1000000
  %117 = add nuw nsw i32 %116, 1000000
  %118 = udiv i32 %117, %82
  %119 = trunc i32 %118 to i8
  %120 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 5
  store i8 %119, ptr %120, align 2
  %121 = lshr i32 %92, 17
  %122 = and i32 %121, 7
  %123 = mul nuw nsw i32 %122, 1000000
  %124 = add nuw nsw i32 %123, 1000000
  %125 = udiv i32 %124, %82
  %126 = trunc i32 %125 to i8
  %127 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 4
  store i8 %126, ptr %127, align 1
  %128 = lshr i32 %92, 20
  %129 = and i32 %128, 63
  %130 = mul nuw nsw i32 %129, 1000000
  %131 = add nuw nsw i32 %130, 1000000
  %132 = udiv i32 %131, %82
  %133 = trunc i32 %132 to i16
  %134 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 1
  store i16 %133, ptr %134, align 2
  %135 = lshr i32 %92, 26
  %136 = and i32 %135, 15
  %137 = mul nuw nsw i32 %136, 1000000
  %138 = add nuw nsw i32 %137, 1000000
  %139 = udiv i32 %138, %82
  %140 = trunc i32 %139 to i8
  %141 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 3
  store i8 %140, ptr %141, align 2
  %142 = lshr i32 %92, 30
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 9
  store i8 %144, ptr %145, align 2
  %146 = lshr i32 %92, 31
  %147 = trunc i32 %146 to i8
  %148 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 8
  store i8 %147, ptr %148, align 1
  %149 = trunc i32 %92 to i8
  %150 = and i8 %149, 1
  %151 = getelementptr %struct.aemif_device, ptr %79, i32 0, i32 5, i32 %75, i32 10
  store i8 %150, ptr %151, align 1
  %152 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %158

154:                                              ; preds = %74
  %155 = load i32, ptr %3, align 4
  %156 = trunc i32 %155 to i8
  %157 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 7
  store i8 %156, ptr %157, align 2
  br label %158

158:                                              ; preds = %154, %74
  %159 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, ptr %3, align 4
  %163 = trunc i32 %162 to i8
  %164 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 6
  store i8 %163, ptr %164, align 1
  br label %165

165:                                              ; preds = %161, %158
  %166 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %167 = icmp sgt i32 %166, -1
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load i32, ptr %3, align 4
  %170 = trunc i32 %169 to i16
  %171 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 2
  store i16 %170, ptr %171, align 2
  br label %172

172:                                              ; preds = %168, %165
  %173 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, ptr %3, align 4
  %177 = trunc i32 %176 to i8
  %178 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 5
  store i8 %177, ptr %178, align 2
  br label %179

179:                                              ; preds = %175, %172
  %180 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.10, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32, ptr %3, align 4
  %184 = trunc i32 %183 to i8
  %185 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 4
  store i8 %184, ptr %185, align 1
  br label %186

186:                                              ; preds = %182, %179
  %187 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %188 = icmp sgt i32 %187, -1
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i32, ptr %3, align 4
  %191 = trunc i32 %190 to i16
  %192 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 1
  store i16 %191, ptr %192, align 2
  br label %193

193:                                              ; preds = %189, %186
  %194 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i32, ptr %3, align 4
  %198 = trunc i32 %197 to i8
  %199 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 3
  store i8 %198, ptr %199, align 2
  br label %200

200:                                              ; preds = %196, %193
  %201 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %58, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %202 = icmp sgt i32 %201, -1
  %203 = load i32, ptr %3, align 4
  %204 = icmp eq i32 %203, 16
  %205 = select i1 %202, i1 %204, i1 false
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 10
  store i8 1, ptr %207, align 1
  br label %209

208:                                              ; preds = %70, %62, %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  call void @of_node_put(ptr noundef nonnull %58) #5
  br label %499

209:                                              ; preds = %206, %200
  %210 = call ptr @of_find_property(ptr noundef nonnull %58, ptr noundef nonnull @.str.14, ptr noundef null) #5
  %211 = icmp ne ptr %210, null
  %212 = zext i1 %211 to i8
  %213 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 9
  store i8 %212, ptr %213, align 2
  %214 = call ptr @of_find_property(ptr noundef nonnull %58, ptr noundef nonnull @.str.15, ptr noundef null) #5
  %215 = icmp ne ptr %214, null
  %216 = zext i1 %215 to i8
  %217 = getelementptr %struct.aemif_device, ptr %59, i32 0, i32 5, i32 %75, i32 8
  store i8 %216, ptr %217, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %218 = call ptr @of_get_next_available_child(ptr noundef nonnull %6, ptr noundef nonnull %58) #5
  %219 = icmp eq ptr %218, null
  br i1 %219, label %313, label %57

220:                                              ; preds = %53
  br i1 %12, label %313, label %221

221:                                              ; preds = %220
  %222 = getelementptr inbounds %struct.aemif_platform_data, ptr %11, i32 0, i32 3
  %223 = load i32, ptr %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %313, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.aemif_platform_data, ptr %11, i32 0, i32 2
  %227 = getelementptr inbounds %struct.aemif_device, ptr %7, i32 0, i32 3
  br label %228

228:                                              ; preds = %228, %225
  %229 = phi i32 [ 0, %225 ], [ %308, %228 ]
  %230 = load ptr, ptr %226, align 4
  %231 = getelementptr %struct.aemif_abus_data, ptr %230, i32 %229
  %232 = load i32, ptr %231, align 4
  %233 = trunc i32 %232 to i8
  %234 = getelementptr %struct.aemif_device, ptr %7, i32 0, i32 5, i32 %229
  store i8 %233, ptr %234, align 2
  %235 = load ptr, ptr %17, align 8
  %236 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229
  %237 = getelementptr inbounds %struct.aemif_device, ptr %235, i32 0, i32 2
  %238 = load i32, ptr %237, align 4
  %239 = load i8, ptr %236, align 2
  %240 = zext i8 %239 to i32
  %241 = getelementptr inbounds %struct.aemif_device, ptr %235, i32 0, i32 4
  %242 = load i32, ptr %241, align 4
  %243 = sub i32 %240, %242
  %244 = shl i32 %243, 2
  %245 = add i32 %244, 16
  %246 = load ptr, ptr %235, align 4
  %247 = getelementptr i8, ptr %246, i32 %245
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %249 = lshr i32 %248, 2
  %250 = and i32 %249, 3
  %251 = mul nuw nsw i32 %250, 1000000
  %252 = add nuw nsw i32 %251, 1000000
  %253 = udiv i32 %252, %238
  %254 = trunc i32 %253 to i8
  %255 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 7
  store i8 %254, ptr %255, align 2
  %256 = lshr i32 %248, 4
  %257 = and i32 %256, 7
  %258 = mul nuw nsw i32 %257, 1000000
  %259 = add nuw nsw i32 %258, 1000000
  %260 = udiv i32 %259, %238
  %261 = trunc i32 %260 to i8
  %262 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 6
  store i8 %261, ptr %262, align 1
  %263 = lshr i32 %248, 7
  %264 = and i32 %263, 63
  %265 = mul nuw nsw i32 %264, 1000000
  %266 = add nuw nsw i32 %265, 1000000
  %267 = udiv i32 %266, %238
  %268 = trunc i32 %267 to i16
  %269 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 2
  store i16 %268, ptr %269, align 2
  %270 = lshr i32 %248, 13
  %271 = and i32 %270, 15
  %272 = mul nuw nsw i32 %271, 1000000
  %273 = add nuw nsw i32 %272, 1000000
  %274 = udiv i32 %273, %238
  %275 = trunc i32 %274 to i8
  %276 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 5
  store i8 %275, ptr %276, align 2
  %277 = lshr i32 %248, 17
  %278 = and i32 %277, 7
  %279 = mul nuw nsw i32 %278, 1000000
  %280 = add nuw nsw i32 %279, 1000000
  %281 = udiv i32 %280, %238
  %282 = trunc i32 %281 to i8
  %283 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 4
  store i8 %282, ptr %283, align 1
  %284 = lshr i32 %248, 20
  %285 = and i32 %284, 63
  %286 = mul nuw nsw i32 %285, 1000000
  %287 = add nuw nsw i32 %286, 1000000
  %288 = udiv i32 %287, %238
  %289 = trunc i32 %288 to i16
  %290 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 1
  store i16 %289, ptr %290, align 2
  %291 = lshr i32 %248, 26
  %292 = and i32 %291, 15
  %293 = mul nuw nsw i32 %292, 1000000
  %294 = add nuw nsw i32 %293, 1000000
  %295 = udiv i32 %294, %238
  %296 = trunc i32 %295 to i8
  %297 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 3
  store i8 %296, ptr %297, align 2
  %298 = lshr i32 %248, 30
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 9
  store i8 %300, ptr %301, align 2
  %302 = lshr i32 %248, 31
  %303 = trunc i32 %302 to i8
  %304 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 8
  store i8 %303, ptr %304, align 1
  %305 = trunc i32 %248 to i8
  %306 = and i8 %305, 1
  %307 = getelementptr %struct.aemif_device, ptr %235, i32 0, i32 5, i32 %229, i32 10
  store i8 %306, ptr %307, align 1
  %308 = add nuw i32 %229, 1
  %309 = load i8, ptr %227, align 4
  %310 = add i8 %309, 1
  store i8 %310, ptr %227, align 4
  %311 = load i32, ptr %222, align 4
  %312 = icmp ult i32 %308, %311
  br i1 %312, label %228, label %313

313:                                              ; preds = %228, %221, %220, %209, %54
  %314 = getelementptr inbounds %struct.aemif_device, ptr %7, i32 0, i32 3
  %315 = load i8, ptr %314, align 4
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %464, label %317

317:                                              ; preds = %416, %313
  %318 = phi i32 [ %460, %416 ], [ 0, %313 ]
  %319 = load ptr, ptr %17, align 8
  %320 = getelementptr inbounds %struct.aemif_device, ptr %319, i32 0, i32 2
  %321 = load i32, ptr %320, align 4
  %322 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 7
  %323 = load i8, ptr %322, align 2
  %324 = zext i8 %323 to i32
  %325 = mul i32 %321, %324
  %326 = add i32 %325, 999999
  %327 = icmp ult i32 %326, 1000000
  %328 = udiv i32 %326, 1000000
  %329 = add nsw i32 %328, -1
  %330 = icmp ugt i32 %326, 4999999
  %331 = select i1 %330, i32 -22, i32 %329
  %332 = select i1 %327, i32 0, i32 %331
  %333 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 6
  %334 = load i8, ptr %333, align 1
  %335 = zext i8 %334 to i32
  %336 = mul i32 %321, %335
  %337 = add i32 %336, 999999
  %338 = icmp ult i32 %337, 1000000
  %339 = udiv i32 %337, 1000000
  %340 = add nsw i32 %339, -1
  %341 = icmp ugt i32 %337, 8999999
  %342 = select i1 %341, i32 -22, i32 %340
  %343 = select i1 %338, i32 0, i32 %342
  %344 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 2
  %345 = load i16, ptr %344, align 2
  %346 = zext i16 %345 to i32
  %347 = mul i32 %321, %346
  %348 = add i32 %347, 999999
  %349 = icmp ult i32 %348, 1000000
  %350 = udiv i32 %348, 1000000
  %351 = add nsw i32 %350, -1
  %352 = icmp ugt i32 %348, 64999999
  %353 = select i1 %352, i32 -22, i32 %351
  %354 = select i1 %349, i32 0, i32 %353
  %355 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 5
  %356 = load i8, ptr %355, align 2
  %357 = zext i8 %356 to i32
  %358 = mul i32 %321, %357
  %359 = add i32 %358, 999999
  %360 = icmp ult i32 %359, 1000000
  %361 = udiv i32 %359, 1000000
  %362 = add nsw i32 %361, -1
  %363 = icmp ugt i32 %359, 16999999
  %364 = select i1 %363, i32 -22, i32 %362
  %365 = select i1 %360, i32 0, i32 %364
  %366 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 4
  %367 = load i8, ptr %366, align 1
  %368 = zext i8 %367 to i32
  %369 = mul i32 %321, %368
  %370 = add i32 %369, 999999
  %371 = icmp ult i32 %370, 1000000
  %372 = udiv i32 %370, 1000000
  %373 = add nsw i32 %372, -1
  %374 = icmp ugt i32 %370, 8999999
  %375 = select i1 %374, i32 -22, i32 %373
  %376 = select i1 %371, i32 0, i32 %375
  %377 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 1
  %378 = load i16, ptr %377, align 2
  %379 = zext i16 %378 to i32
  %380 = mul i32 %321, %379
  %381 = add i32 %380, 999999
  %382 = icmp ult i32 %381, 1000000
  %383 = udiv i32 %381, 1000000
  %384 = add nsw i32 %383, -1
  %385 = icmp ugt i32 %381, 64999999
  %386 = select i1 %385, i32 -22, i32 %384
  %387 = select i1 %382, i32 0, i32 %386
  %388 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 3
  %389 = load i8, ptr %388, align 2
  %390 = zext i8 %389 to i32
  %391 = mul i32 %321, %390
  %392 = add i32 %391, 999999
  %393 = icmp ult i32 %392, 1000000
  %394 = udiv i32 %392, 1000000
  %395 = add nsw i32 %394, -1
  %396 = icmp ugt i32 %392, 16999999
  %397 = select i1 %396, i32 -22, i32 %395
  %398 = select i1 %393, i32 0, i32 %397
  %399 = icmp slt i32 %332, 0
  %400 = icmp slt i32 %343, 0
  %401 = select i1 %399, i1 true, i1 %400
  %402 = icmp slt i32 %354, 0
  %403 = select i1 %401, i1 true, i1 %402
  %404 = icmp slt i32 %365, 0
  %405 = select i1 %403, i1 true, i1 %404
  %406 = icmp slt i32 %376, 0
  %407 = select i1 %405, i1 true, i1 %406
  %408 = icmp slt i32 %387, 0
  %409 = select i1 %407, i1 true, i1 %408
  %410 = icmp slt i32 %398, 0
  %411 = select i1 %409, i1 true, i1 %410
  br i1 %411, label %412, label %416

412:                                              ; preds = %317
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.aemif_config_abus) #6
  %413 = getelementptr %struct.aemif_device, ptr %7, i32 0, i32 5, i32 %318
  %414 = load i8, ptr %413, align 2
  %415 = zext i8 %414 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %415) #6
  br label %499

416:                                              ; preds = %317
  %417 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318
  %418 = load i8, ptr %417, align 2
  %419 = zext i8 %418 to i32
  %420 = getelementptr inbounds %struct.aemif_device, ptr %319, i32 0, i32 4
  %421 = load i32, ptr %420, align 4
  %422 = sub i32 %419, %421
  %423 = shl i32 %422, 2
  %424 = add i32 %423, 16
  %425 = shl nuw nsw i32 %332, 2
  %426 = shl nuw nsw i32 %343, 4
  %427 = or i32 %426, %425
  %428 = shl nuw nsw i32 %354, 7
  %429 = or i32 %427, %428
  %430 = shl nuw nsw i32 %365, 13
  %431 = or i32 %429, %430
  %432 = shl nuw nsw i32 %376, 17
  %433 = or i32 %431, %432
  %434 = shl nuw nsw i32 %387, 20
  %435 = or i32 %433, %434
  %436 = shl nuw nsw i32 %398, 26
  %437 = or i32 %435, %436
  %438 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 10
  %439 = load i8, ptr %438, align 1
  %440 = and i8 %439, 3
  %441 = zext i8 %440 to i32
  %442 = or i32 %437, %441
  %443 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 9
  %444 = load i8, ptr %443, align 2
  %445 = icmp eq i8 %444, 0
  %446 = or i32 %442, 1073741824
  %447 = select i1 %445, i32 %442, i32 %446
  %448 = getelementptr %struct.aemif_device, ptr %319, i32 0, i32 5, i32 %318, i32 8
  %449 = load i8, ptr %448, align 1
  %450 = icmp eq i8 %449, 0
  %451 = or i32 %447, -2147483648
  %452 = select i1 %450, i32 %447, i32 %451
  %453 = load ptr, ptr %319, align 4
  %454 = getelementptr i8, ptr %453, i32 %424
  %455 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %454) #5, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %456 = and i32 %455, 2
  %457 = or i32 %452, %456
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  call void @arm_heavy_mb() #5
  %458 = load ptr, ptr %319, align 4
  %459 = getelementptr i8, ptr %458, i32 %424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %459, i32 %457) #5, !srcloc !13
  %460 = add nuw nsw i32 %318, 1
  %461 = load i8, ptr %314, align 4
  %462 = zext i8 %461 to i32
  %463 = icmp ult i32 %460, %462
  br i1 %463, label %317, label %464

464:                                              ; preds = %416, %313
  br i1 %36, label %476, label %465

465:                                              ; preds = %464
  %466 = call ptr @of_get_next_available_child(ptr noundef nonnull %6, ptr noundef null) #5
  %467 = icmp eq ptr %466, null
  br i1 %467, label %502, label %468

468:                                              ; preds = %473, %465
  %469 = phi ptr [ %474, %473 ], [ %466, %465 ]
  %470 = call i32 @of_platform_populate(ptr noundef nonnull %469, ptr noundef null, ptr noundef %16, ptr noundef %4) #5
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %468
  call void @of_node_put(ptr noundef nonnull %469) #5
  br label %499

473:                                              ; preds = %468
  %474 = call ptr @of_get_next_available_child(ptr noundef nonnull %6, ptr noundef nonnull %469) #5
  %475 = icmp eq ptr %474, null
  br i1 %475, label %502, label %468

476:                                              ; preds = %464
  br i1 %12, label %502, label %477

477:                                              ; preds = %476
  %478 = getelementptr inbounds %struct.aemif_platform_data, ptr %11, i32 0, i32 5
  %479 = load i32, ptr %478, align 4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %502, label %481

481:                                              ; preds = %477
  %482 = getelementptr inbounds %struct.aemif_platform_data, ptr %11, i32 0, i32 4
  br label %483

483:                                              ; preds = %495, %481
  %484 = phi i32 [ 0, %481 ], [ %496, %495 ]
  %485 = load ptr, ptr %482, align 4
  %486 = getelementptr %struct.platform_device, ptr %485, i32 %484, i32 3, i32 1
  store ptr %4, ptr %486, align 4
  %487 = load ptr, ptr %482, align 4
  %488 = getelementptr %struct.platform_device, ptr %487, i32 %484
  %489 = call i32 @platform_device_register(ptr noundef %488) #5
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %495, label %491

491:                                              ; preds = %483
  %492 = load ptr, ptr %482, align 4
  %493 = getelementptr %struct.platform_device, ptr %492, i32 %484
  %494 = load ptr, ptr %493, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %494) #6
  br label %495

495:                                              ; preds = %491, %483
  %496 = add nuw i32 %484, 1
  %497 = load i32, ptr %478, align 4
  %498 = icmp ult i32 %496, %497
  br i1 %498, label %483, label %502

499:                                              ; preds = %472, %412, %208, %51
  %500 = phi i32 [ %52, %51 ], [ -22, %208 ], [ -22, %412 ], [ %470, %472 ]
  %501 = load ptr, ptr %19, align 4
  call void @clk_disable(ptr noundef %501) #5
  call void @clk_unprepare(ptr noundef %501) #5
  br label %502

502:                                              ; preds = %499, %495, %477, %476, %473, %465, %30, %24, %21, %1
  %503 = phi i32 [ %23, %21 ], [ %500, %499 ], [ -12, %1 ], [ 0, %476 ], [ %28, %30 ], [ %25, %24 ], [ 0, %477 ], [ 0, %465 ], [ 0, %495 ], [ 0, %473 ]
  ret i32 %503
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aemif_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.aemif_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 1730353}
!10 = !{i64 2151377657}
!11 = !{i64 2151376281}
!12 = !{i64 2151376999}
!13 = !{i64 1729935}
