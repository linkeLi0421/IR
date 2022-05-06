; ModuleID = '/llk/IR/drivers/usb/misc/brcmstb-usb-pinmap.c_pt.bc'
source_filename = "../drivers/usb/misc/brcmstb-usb-pinmap.c"
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
%struct.brcmstb_usb_pinmap_data = type { ptr, i32, ptr, i32, ptr }
%struct.in_pin = type { i32, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.out_pin = type { i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_brcmstb_usb_pinmap__170_352_brcmstb_usb_pinmap_init6 = internal global ptr @brcmstb_usb_pinmap_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author171 = internal constant [58 x i8] c"brcmstb_usb_pinmap.author=Al Cooper <alcooperx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [58 x i8] c"brcmstb_usb_pinmap.description=Broadcom USB Pinmap Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [60 x i8] c"brcmstb_usb_pinmap.file=drivers/usb/misc/brcmstb-usb-pinmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [31 x i8] c"brcmstb_usb_pinmap.license=GPL\00", section ".modinfo", align 1
@brcmstb_usb_pinmap_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_usb_pinmap_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"brcm-usb-pinmap\00", align 1
@brcmstb_usb_pinmap_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,usb-pinmap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Error requesting IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error getting IRQ for %s pin\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error requesting IRQ for %s pin\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"brcm,in-functions\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"brcm,out-functions\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Error getting gpio %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Error getting brcm,in-functions for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"brcm,in-masks\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Error getting 1st brcm,in-masks for %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Error getting 2nd brcm,in-masks for %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Error getting brcm,out-functions for %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"brcm,out-masks\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"Error getting 1st brcm,out-masks for %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"Error getting 2nd brcm,out-masks for %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Error getting 3rd brcm,out-masks for %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Error getting 4th out-masks for %s\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__initcall__kmod_brcmstb_usb_pinmap__170_352_brcmstb_usb_pinmap_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmstb_usb_pinmap_driver, ptr noundef nonnull @brcmstb_usb_pinmap_probe, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @of_property_read_string_helper(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @of_property_read_string_helper(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  %9 = icmp slt i32 %8, 0
  %10 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %11 = select i1 %9, i32 0, i32 %5
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 0, %1 ], [ %10, %7 ]
  %14 = phi i32 [ 0, %1 ], [ %11, %7 ]
  %15 = sub nsw i32 0, %13
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %250, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %250, label %20

20:                                               ; preds = %17
  %21 = mul i32 %14, 20
  %22 = mul i32 %13, 24
  %23 = add i32 %22, 20
  %24 = add i32 %23, %21
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %24, i32 noundef 3520) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %250, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %25, i32 0, i32 1
  store i32 %14, ptr %28, align 4
  %29 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %25, i32 0, i32 3
  store i32 %13, ptr %29, align 4
  %30 = getelementptr %struct.brcmstb_usb_pinmap_data, ptr %25, i32 1
  %31 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %25, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = getelementptr %struct.in_pin, ptr %30, i32 %14
  %33 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %25, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  %34 = load i32, ptr %18, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 1, %34
  %38 = add i32 %37, %36
  %39 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %34, i32 noundef %38) #5
  store ptr %39, ptr %25, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %250, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %25, ptr %42, align 8
  %43 = load ptr, ptr %31, align 4
  %44 = load i32, ptr %28, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %73, %41
  %47 = phi i32 [ %77, %73 ], [ 0, %41 ]
  %48 = phi i32 [ %74, %73 ], [ 0, %41 ]
  %49 = phi ptr [ %76, %73 ], [ %43, %41 ]
  %50 = tail call ptr @devm_gpiod_get_index(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %47, i32 noundef 1) #5
  %51 = getelementptr inbounds %struct.in_pin, ptr %49, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.in_pin, ptr %49, i32 0, i32 2
  br label %133

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.in_pin, ptr %49, i32 0, i32 3
  %57 = tail call i32 @of_property_read_string_helper(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %56, i32 noundef 1, i32 noundef %47) #5
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load ptr, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %60) #6
  br label %250

61:                                               ; preds = %55
  %62 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %48, ptr noundef %49) #5
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load ptr, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, ptr noundef %65) #6
  br label %250

66:                                               ; preds = %61
  %67 = or i32 %48, 1
  %68 = getelementptr inbounds %struct.in_pin, ptr %49, i32 0, i32 1
  %69 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %67, ptr noundef %68) #5
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load ptr, ptr %56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef %72) #6
  br label %250

73:                                               ; preds = %66
  %74 = add nuw i32 %48, 2
  %75 = getelementptr inbounds %struct.in_pin, ptr %49, i32 0, i32 4
  store ptr %25, ptr %75, align 4
  %76 = getelementptr %struct.in_pin, ptr %49, i32 1
  %77 = add nuw nsw i32 %47, 1
  %78 = load i32, ptr %28, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %46, label %80

80:                                               ; preds = %73, %41
  %81 = phi ptr [ %43, %41 ], [ %76, %73 ]
  %82 = load i32, ptr %29, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %178

84:                                               ; preds = %80
  %85 = load ptr, ptr %33, align 4
  br label %86

86:                                               ; preds = %127, %84
  %87 = phi i32 [ %130, %127 ], [ 0, %84 ]
  %88 = phi i32 [ %128, %127 ], [ 0, %84 ]
  %89 = phi ptr [ %129, %127 ], [ %85, %84 ]
  %90 = tail call ptr @devm_gpiod_get_index(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %87, i32 noundef 7) #5
  %91 = getelementptr inbounds %struct.out_pin, ptr %89, i32 0, i32 4
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.out_pin, ptr %89, i32 0, i32 4
  br label %133

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.out_pin, ptr %89, i32 0, i32 5
  %97 = tail call i32 @of_property_read_string_helper(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %96, i32 noundef 1, i32 noundef %87) #5
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef %100) #6
  br label %250

101:                                              ; preds = %95
  %102 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %88, ptr noundef %89) #5
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef %105) #6
  br label %250

106:                                              ; preds = %101
  %107 = or i32 %88, 1
  %108 = getelementptr inbounds %struct.out_pin, ptr %89, i32 0, i32 1
  %109 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %107, ptr noundef %108) #5
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %112) #6
  br label %250

113:                                              ; preds = %106
  %114 = or i32 %88, 2
  %115 = getelementptr inbounds %struct.out_pin, ptr %89, i32 0, i32 2
  %116 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %114, ptr noundef %115) #5
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef %119) #6
  br label %250

120:                                              ; preds = %113
  %121 = or i32 %88, 3
  %122 = getelementptr inbounds %struct.out_pin, ptr %89, i32 0, i32 3
  %123 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %121, ptr noundef %122) #5
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef %126) #6
  br label %250

127:                                              ; preds = %120
  %128 = add i32 %88, 4
  %129 = getelementptr %struct.out_pin, ptr %89, i32 1
  %130 = add nuw nsw i32 %87, 1
  %131 = load i32, ptr %29, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %86, label %143

133:                                              ; preds = %93, %53
  %134 = phi ptr [ %49, %53 ], [ %81, %93 ]
  %135 = phi ptr [ %54, %53 ], [ %94, %93 ]
  %136 = getelementptr inbounds %struct.in_pin, ptr %134, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %137) #6
  %138 = load ptr, ptr %135, align 4
  %139 = ptrtoint ptr %138 to i32
  %140 = icmp eq ptr %138, null
  br i1 %140, label %141, label %250

141:                                              ; preds = %133
  %142 = load i32, ptr %29, align 4
  br label %143

143:                                              ; preds = %141, %127
  %144 = phi i32 [ %142, %141 ], [ %131, %127 ]
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %178

146:                                              ; preds = %143
  %147 = load ptr, ptr %33, align 4
  br label %148

148:                                              ; preds = %148, %146
  %149 = phi ptr [ %174, %148 ], [ %147, %146 ]
  %150 = phi i32 [ %175, %148 ], [ 0, %146 ]
  %151 = load ptr, ptr %25, align 4
  %152 = load i32, ptr %149, align 4
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %154 = or i32 %153, %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %154) #5, !srcloc !11
  %155 = load ptr, ptr %25, align 4
  %156 = getelementptr inbounds %struct.out_pin, ptr %149, i32 0, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %159 = or i32 %158, %157
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %159) #5, !srcloc !11
  %160 = load ptr, ptr %25, align 4
  %161 = load i32, ptr %156, align 4
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %163 = xor i32 %161, -1
  %164 = and i32 %162, %163
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %164) #5, !srcloc !11
  %165 = load ptr, ptr %25, align 4
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %167 = getelementptr inbounds %struct.out_pin, ptr %149, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, %166
  %170 = getelementptr inbounds %struct.out_pin, ptr %149, i32 0, i32 4
  %171 = load ptr, ptr %170, align 4
  %172 = icmp ne i32 %169, 0
  %173 = zext i1 %172 to i32
  tail call void @gpiod_set_value(ptr noundef %171, i32 noundef %173) #5
  %174 = getelementptr %struct.out_pin, ptr %149, i32 1
  %175 = add nuw nsw i32 %150, 1
  %176 = load i32, ptr %29, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %148, label %178

178:                                              ; preds = %148, %143, %80
  %179 = load i32, ptr %28, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %210

181:                                              ; preds = %178
  %182 = load ptr, ptr %31, align 4
  br label %183

183:                                              ; preds = %201, %181
  %184 = phi ptr [ %206, %201 ], [ %182, %181 ]
  %185 = phi i32 [ %207, %201 ], [ 0, %181 ]
  %186 = getelementptr inbounds %struct.in_pin, ptr %184, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = tail call i32 @gpiod_get_value(ptr noundef %187) #5
  %189 = icmp eq i32 %188, 0
  %190 = getelementptr inbounds %struct.in_pin, ptr %184, i32 0, i32 4
  %191 = load ptr, ptr %190, align 4
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.in_pin, ptr %184, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  br i1 %189, label %198, label %196

196:                                              ; preds = %183
  %197 = or i32 %195, %194
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %197) #5, !srcloc !11
  br label %201

198:                                              ; preds = %183
  %199 = xor i32 %194, -1
  %200 = and i32 %195, %199
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %200) #5, !srcloc !11
  br label %201

201:                                              ; preds = %198, %196
  %202 = load ptr, ptr %25, align 4
  %203 = load i32, ptr %184, align 4
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %205 = or i32 %204, %203
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %205) #5, !srcloc !11
  %206 = getelementptr %struct.in_pin, ptr %184, i32 1
  %207 = add nuw nsw i32 %185, 1
  %208 = load i32, ptr %28, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %183, label %210

210:                                              ; preds = %201, %178
  %211 = phi i32 [ %179, %178 ], [ %208, %201 ]
  %212 = icmp eq i32 %13, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %210
  %214 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %250, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr %0, align 8
  %218 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %214, ptr noundef nonnull @brcmstb_usb_pinmap_ovr_isr, ptr noundef null, i32 noundef 1, ptr noundef %217, ptr noundef nonnull %25) #5
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = load i32, ptr %28, align 4
  br label %223

222:                                              ; preds = %216
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %250

223:                                              ; preds = %220, %210
  %224 = phi i32 [ %221, %220 ], [ %211, %210 ]
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %250

226:                                              ; preds = %223
  %227 = load ptr, ptr %31, align 4
  br label %228

228:                                              ; preds = %245, %226
  %229 = phi i32 [ %246, %245 ], [ 0, %226 ]
  %230 = phi ptr [ %247, %245 ], [ %227, %226 ]
  %231 = getelementptr inbounds %struct.in_pin, ptr %230, i32 0, i32 2
  %232 = load ptr, ptr %231, align 4
  %233 = tail call i32 @gpiod_to_irq(ptr noundef %232) #5
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.in_pin, ptr %230, i32 0, i32 3
  %237 = load ptr, ptr %236, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %237) #6
  br label %250

238:                                              ; preds = %228
  %239 = load ptr, ptr %0, align 8
  %240 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %233, ptr noundef nonnull @brcmstb_usb_pinmap_gpio_isr, ptr noundef null, i32 noundef 131, ptr noundef %239, ptr noundef %230) #5
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.in_pin, ptr %230, i32 0, i32 3
  %244 = load ptr, ptr %243, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %244) #6
  br label %250

245:                                              ; preds = %238
  %246 = add nuw nsw i32 %229, 1
  %247 = getelementptr %struct.in_pin, ptr %230, i32 1
  %248 = load i32, ptr %28, align 4
  %249 = icmp slt i32 %246, %248
  br i1 %249, label %228, label %250

250:                                              ; preds = %245, %242, %235, %223, %222, %213, %133, %125, %118, %111, %104, %99, %71, %64, %59, %27, %20, %17, %12
  %251 = phi i32 [ %218, %222 ], [ %233, %235 ], [ %240, %242 ], [ -22, %12 ], [ -22, %17 ], [ -12, %20 ], [ -12, %27 ], [ %139, %133 ], [ %214, %213 ], [ %123, %125 ], [ %116, %118 ], [ %109, %111 ], [ %102, %104 ], [ %97, %99 ], [ %69, %71 ], [ %62, %64 ], [ %57, %59 ], [ 0, %223 ], [ 0, %245 ]
  ret i32 %251
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_ovr_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.brcmstb_usb_pinmap_data, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.out_pin, ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.out_pin, ptr %8, i32 0, i32 3
  %11 = getelementptr inbounds %struct.out_pin, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.out_pin, ptr %8, i32 0, i32 4
  br label %13

13:                                               ; preds = %35, %6
  %14 = phi i32 [ 0, %6 ], [ %36, %35 ]
  %15 = load ptr, ptr %1, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %17 = load i32, ptr %9, align 4
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %1, align 4
  %22 = load i32, ptr %10, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %24 = or i32 %23, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %24) #5, !srcloc !11
  %25 = load ptr, ptr %1, align 4
  %26 = load i32, ptr %10, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %28 = xor i32 %26, -1
  %29 = and i32 %27, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %29) #5, !srcloc !11
  %30 = load i32, ptr %11, align 4
  %31 = and i32 %30, %16
  %32 = load ptr, ptr %12, align 4
  %33 = icmp ne i32 %31, 0
  %34 = zext i1 %33 to i32
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef %34) #5
  br label %35

35:                                               ; preds = %20, %13
  %36 = add nuw nsw i32 %14, 1
  %37 = load i32, ptr %3, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %13, label %39

39:                                               ; preds = %35, %2
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_usb_pinmap_gpio_isr(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.in_pin, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @gpiod_get_value(ptr noundef %4) #5
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.in_pin, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.in_pin, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  br i1 %6, label %15, label %13

13:                                               ; preds = %2
  %14 = or i32 %12, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #5, !srcloc !11
  br label %18

15:                                               ; preds = %2
  %16 = xor i32 %11, -1
  %17 = and i32 %12, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %17) #5, !srcloc !11
  br label %18

18:                                               ; preds = %15, %13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3714594}
!9 = !{i64 2151654676}
!10 = !{i64 2151654847}
!11 = !{i64 3714176}
!12 = !{i64 2151655254}
!13 = !{i64 2151655425}
!14 = !{i64 2151664701}
!15 = !{i64 2151656757}
