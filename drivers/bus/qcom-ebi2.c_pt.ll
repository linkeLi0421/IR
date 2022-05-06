; ModuleID = '/llk/IR/drivers/bus/qcom-ebi2.c_pt.bc'
source_filename = "../drivers/bus/qcom-ebi2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cs_data = type { i32, i16, i16 }
%struct.ebi2_xmem_prop = type { ptr, i32, i8, i16 }
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

@__initcall__kmod_qcom_ebi2__166_403_qcom_ebi2_driver_init6 = internal global ptr @qcom_ebi2_driver_init, section ".initcall6.init", align 4
@qcom_ebi2_driver = internal global %struct.platform_driver { ptr @qcom_ebi2_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_ebi2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_qcom_ebi2_driver_exit = internal global ptr @qcom_ebi2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [58 x i8] c"qcom_ebi2.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [43 x i8] c"qcom_ebi2.description=Qualcomm EBI2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [37 x i8] c"qcom_ebi2.file=drivers/bus/qcom-ebi2\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [22 x i8] c"qcom_ebi2.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"qcom-ebi2\00", align 1
@qcom_ebi2_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8660-ebi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,apq8060-ebi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ebi2x\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"could not enable EBI2X clk (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ebi2\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"could not enable EBI2 clk\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"invalid chipselect %u, we only support 0-5\0A\00", align 1
@cs_info = internal unnamed_addr constant [6 x %struct.cs_data] [%struct.cs_data { i32 3, i16 8, i16 40 }, %struct.cs_data { i32 12, i16 12, i16 44 }, %struct.cs_data { i32 16, i16 16, i16 48 }, %struct.cs_data { i32 32, i16 20, i16 52 }, %struct.cs_data { i32 192, i16 24, i16 56 }, %struct.cs_data { i32 768, i16 28, i16 60 }], align 4
@xmem_props = internal unnamed_addr constant [9 x %struct.ebi2_xmem_prop] [%struct.ebi2_xmem_prop { ptr @.str.9, i32 15, i8 1, i16 28 }, %struct.ebi2_xmem_prop { ptr @.str.10, i32 15, i8 1, i16 24 }, %struct.ebi2_xmem_prop { ptr @.str.11, i32 255, i8 1, i16 16 }, %struct.ebi2_xmem_prop { ptr @.str.12, i32 255, i8 1, i16 8 }, %struct.ebi2_xmem_prop { ptr @.str.13, i32 15, i8 1, i16 4 }, %struct.ebi2_xmem_prop { ptr @.str.14, i32 15, i8 1, i16 0 }, %struct.ebi2_xmem_prop { ptr @.str.15, i32 1, i8 0, i16 5 }, %struct.ebi2_xmem_prop { ptr @.str.16, i32 3, i8 0, i16 16 }, %struct.ebi2_xmem_prop { ptr @.str.17, i32 15, i8 0, i16 24 }], align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"too high value for %s: %u, capped at %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"CS%u: SLOW CFG 0x%08x, FAST CFG 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"qcom,xmem-recovery-cycles\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"qcom,xmem-write-hold-cycles\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"qcom,xmem-write-delta-cycles\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"qcom,xmem-read-delta-cycles\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"qcom,xmem-write-wait-cycles\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"qcom,xmem-read-wait-cycles\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"qcom,xmem-address-hold-enable\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"qcom,xmem-adv-to-oe-recovery-cycles\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"qcom,xmem-read-hold-cycles\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_qcom_ebi2_driver_exit, ptr @__initcall__kmod_qcom_ebi2__166_403_qcom_ebi2_driver_init6, ptr @qcom_ebi2_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @qcom_ebi2_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_ebi2_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @qcom_ebi2_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_ebi2_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_ebi2_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.1) #5
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = ptrtoint ptr %7 to i32
  br label %128

11:                                               ; preds = %1
  %12 = tail call i32 @clk_prepare(ptr noundef %7) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call i32 @clk_enable(ptr noundef %7) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ %15, %17 ], [ %12, %11 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %19) #6
  br label %128

20:                                               ; preds = %14
  %21 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.3) #5
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  br label %126

25:                                               ; preds = %20
  %26 = tail call i32 @clk_prepare(ptr noundef %21) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = tail call i32 @clk_enable(ptr noundef %21) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %29, %31 ], [ %26, %25 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #6
  br label %126

34:                                               ; preds = %28
  %35 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %36 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %35) #5
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %123, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #5
  %40 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %39) #5
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %123, label %42

42:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #5, !srcloc !9
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %44 = and i32 %43, -1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %44) #5, !srcloc !9
  %45 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %128, label %47

47:                                               ; preds = %117, %42
  %48 = phi ptr [ %118, %117 ], [ %45, %42 ]
  %49 = phi i1 [ true, %117 ], [ false, %42 ]
  br label %50

50:                                               ; preds = %114, %47
  %51 = phi ptr [ %115, %114 ], [ %48, %47 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !13
  %52 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %51, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %113

54:                                               ; preds = %50
  %55 = load i32, ptr %3, align 4
  %56 = icmp ugt i32 %55, 5
  br i1 %56, label %114, label %57

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %58 = getelementptr [6 x %struct.cs_data], ptr @cs_info, i32 0, i32 %55
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %60 = load i32, ptr %58, align 4
  %61 = or i32 %60, %59
  store i32 %61, ptr %2, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %61) #5, !srcloc !9
  br label %62

62:                                               ; preds = %94, %57
  %63 = phi i32 [ 0, %57 ], [ %96, %94 ]
  %64 = phi i32 [ 0, %57 ], [ %95, %94 ]
  %65 = phi i32 [ 0, %57 ], [ %97, %94 ]
  %66 = getelementptr [9 x %struct.ebi2_xmem_prop], ptr @xmem_props, i32 0, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %51, ptr noundef %67, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #5
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %94

70:                                               ; preds = %62
  %71 = getelementptr [9 x %struct.ebi2_xmem_prop], ptr @xmem_props, i32 0, i32 %65, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %65, 6
  %74 = load i32, ptr %2, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = or i32 %64, 32
  br label %94

79:                                               ; preds = %70
  %80 = icmp ugt i32 %74, %72
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %67, i32 noundef %74, i32 noundef %72) #6
  store i32 %72, ptr %2, align 4
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %72, %81 ], [ %74, %79 ]
  %84 = add nsw i32 %65, -6
  %85 = icmp ult i32 %84, 3
  %86 = getelementptr [9 x %struct.ebi2_xmem_prop], ptr @xmem_props, i32 0, i32 %65, i32 3
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = shl i32 %83, %88
  br i1 %85, label %92, label %90

90:                                               ; preds = %82
  %91 = or i32 %89, %63
  br label %94

92:                                               ; preds = %82
  %93 = or i32 %89, %64
  br label %94

94:                                               ; preds = %92, %90, %77, %62
  %95 = phi i32 [ %64, %62 ], [ %78, %77 ], [ %64, %90 ], [ %93, %92 ]
  %96 = phi i32 [ %63, %62 ], [ %63, %77 ], [ %91, %90 ], [ %63, %92 ]
  %97 = add nuw nsw i32 %65, 1
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %99, label %62

99:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %55, i32 noundef %96, i32 noundef %95) #6
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %99
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  call void @arm_heavy_mb() #5
  %102 = getelementptr [6 x %struct.cs_data], ptr @cs_info, i32 0, i32 %55, i32 1
  %103 = load i16, ptr %102, align 4
  %104 = zext i16 %103 to i32
  %105 = getelementptr i8, ptr %40, i32 %104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %96) #5, !srcloc !9
  br label %106

106:                                              ; preds = %101, %99
  %107 = icmp eq i32 %95, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %106
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %109 = getelementptr [6 x %struct.cs_data], ptr @cs_info, i32 0, i32 %55, i32 2
  %110 = load i16, ptr %109, align 2
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %40, i32 %111
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %95) #5, !srcloc !9
  br label %117

113:                                              ; preds = %50
  call void @of_node_put(ptr noundef nonnull %51) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %128

114:                                              ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %55) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %115 = call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %51) #5
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %50

117:                                              ; preds = %108, %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %118 = call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef nonnull %51) #5
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %47

120:                                              ; preds = %114
  br i1 %49, label %121, label %128

121:                                              ; preds = %120, %117
  %122 = call i32 @of_platform_default_populate(ptr noundef %6, ptr noundef null, ptr noundef %4) #5
  br label %128

123:                                              ; preds = %38, %34
  %124 = phi ptr [ %36, %34 ], [ %40, %38 ]
  %125 = ptrtoint ptr %124 to i32
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %126

126:                                              ; preds = %123, %32, %23
  %127 = phi i32 [ %24, %23 ], [ %33, %32 ], [ %125, %123 ]
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %128

128:                                              ; preds = %126, %121, %120, %113, %42, %18, %9
  %129 = phi i32 [ %10, %9 ], [ %19, %18 ], [ %127, %126 ], [ %52, %113 ], [ %122, %121 ], [ 0, %120 ], [ 0, %42 ]
  ret i32 %129
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
!8 = !{i64 2151491743}
!9 = !{i64 2915749}
!10 = !{i64 2916167}
!11 = !{i64 2151492183}
!12 = !{i64 2151493034}
!13 = !{!"auto-init"}
!14 = !{i64 2151485293}
!15 = !{i64 2151485470}
!16 = !{i64 2151489893}
!17 = !{i64 2151490235}
