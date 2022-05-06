; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_parser.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_parser.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dp_regulator_cfg = type { i32, [4 x %struct.dp_reg_entry] }
%struct.dp_reg_entry = type { [32 x i8], i32, i32 }
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
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@sdm845_dp_reg_cfg = internal constant %struct.dp_regulator_cfg { i32 2, [4 x %struct.dp_reg_entry] [%struct.dp_reg_entry { [32 x i8] c"vdda-1p2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21800, i32 4 }, %struct.dp_reg_entry { [32 x i8] c"vdda-0p9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dp_reg_entry zeroinitializer, %struct.dp_reg_entry zeroinitializer] }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"legacy memory region not large enough\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to remap aux region: %pe\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to remap link region: %pe\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"unable to remap p0 region: %pe\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"data-lanes\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"\014[drm] Invalid property %s, default max DP lanes = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"failed to initialize power data %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"error reading clock-names %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ctrl_link\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"stream_pixel\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"clock parsing successful\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"no clocks are defined\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"no core clocks are defined\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"no ctrl clocks are defined\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"no stream (pixel) clocks are defined\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"failed to acquire DRM panel: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"failed to create panel bridge\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_parser_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 224, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 8
  store ptr @dp_parser_parse, ptr %6, align 4
  store ptr %0, ptr %3, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_parser_parse(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %255

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store ptr null, ptr %9, align 4, !annotation !8
  %15 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %9) #6
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  %18 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  br label %89

19:                                               ; preds = %12
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %20, align 4
  %24 = add i32 %22, 1
  %25 = sub i32 %24, %23
  store i32 %25, ptr %14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  %26 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %15, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store ptr null, ptr %8, align 4, !annotation !8
  %28 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %13, i32 noundef 1, ptr noundef nonnull %8) #6
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %48

30:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %31 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %28, ptr %31, align 4
  %32 = icmp eq ptr %28, inttoptr (i32 -22 to ptr)
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, ptr %14, align 4
  %35 = icmp ult i32 %34, 5120
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %255

37:                                               ; preds = %33
  store i32 512, ptr %14, align 4
  %38 = load ptr, ptr %26, align 4
  %39 = getelementptr i8, ptr %38, i32 512
  store ptr %39, ptr %31, align 4
  store i32 512, ptr %27, align 4
  %40 = getelementptr i8, ptr %38, i32 1024
  %41 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 2
  %42 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 2, i32 1
  store ptr %40, ptr %42, align 4
  store i32 3072, ptr %41, align 4
  %43 = getelementptr i8, ptr %38, i32 4096
  %44 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 3
  %45 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 3, i32 1
  store ptr %43, ptr %45, align 4
  store i32 1024, ptr %44, align 4
  br label %84

46:                                               ; preds = %30
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull %28) #6
  %47 = load ptr, ptr %31, align 4
  br label %89

48:                                               ; preds = %19
  %49 = load ptr, ptr %8, align 4
  %50 = getelementptr inbounds %struct.resource, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %49, align 4
  %53 = add i32 %51, 1
  %54 = sub i32 %53, %52
  store i32 %54, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %55 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %28, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !8
  %56 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %13, i32 noundef 2, ptr noundef nonnull %7) #6
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %59 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 2, i32 1
  store ptr %56, ptr %59, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull %56) #6
  %60 = load ptr, ptr %59, align 4
  br label %89

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 2
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %63, align 4
  %67 = add i32 %65, 1
  %68 = sub i32 %67, %66
  store i32 %68, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  %69 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 2, i32 1
  store ptr %56, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !8
  %70 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %13, i32 noundef 3, ptr noundef nonnull %6) #6
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %81, label %72

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 3
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr inbounds %struct.resource, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %74, align 4
  %78 = add i32 %76, 1
  %79 = sub i32 %78, %77
  store i32 %79, ptr %73, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %80 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 3, i32 1
  store ptr %70, ptr %80, align 4
  br label %84

81:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %82 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 0, i32 3, i32 1
  store ptr %70, ptr %82, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, ptr noundef nonnull %70) #6
  %83 = load ptr, ptr %82, align 4
  br label %89

84:                                               ; preds = %72, %37
  %85 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %86 = call ptr @devm_phy_get(ptr noundef %85, ptr noundef nonnull @.str.5) #6
  %87 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 3, i32 1
  store ptr %86, ptr %87, align 4
  %88 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %93

89:                                               ; preds = %84, %81, %58, %46, %17
  %90 = phi ptr [ %15, %17 ], [ %47, %46 ], [ %60, %58 ], [ %83, %81 ], [ %86, %84 ]
  %91 = ptrtoint ptr %90 to i32
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %255

93:                                               ; preds = %89, %84
  %94 = load ptr, ptr %0, align 4
  %95 = getelementptr inbounds %struct.platform_device, ptr %94, i32 0, i32 3, i32 25
  %96 = load ptr, ptr %95, align 8
  %97 = call i32 @of_property_count_elems_of_size(ptr noundef %96, ptr noundef nonnull @.str.6, i32 noundef 4) #6
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef 4) #7
  br label %101

101:                                              ; preds = %99, %93
  %102 = phi i32 [ 4, %99 ], [ %97, %93 ]
  %103 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 6
  store i32 %102, ptr %103, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !8
  %104 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %105 = getelementptr inbounds %struct.platform_device, ptr %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 1
  %107 = getelementptr %struct.dp_parser, ptr %0, i32 0, i32 1, i32 1
  %108 = getelementptr %struct.dp_parser, ptr %0, i32 0, i32 1, i32 2
  %109 = getelementptr inbounds %struct.platform_device, ptr %104, i32 0, i32 3, i32 25
  %110 = load ptr, ptr %109, align 8
  %111 = call i32 @of_property_read_string_helper(ptr noundef %110, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %164

114:                                              ; preds = %122, %101
  %115 = phi i32 [ %135, %122 ], [ 0, %101 ]
  %116 = phi i32 [ %131, %122 ], [ 0, %101 ]
  %117 = phi i32 [ %127, %122 ], [ 0, %101 ]
  %118 = phi i32 [ %136, %122 ], [ 0, %101 ]
  %119 = load ptr, ptr %109, align 8
  %120 = call i32 @of_property_read_string_helper(ptr noundef %119, ptr noundef nonnull @.str.9, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %118) #6
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %164, label %122

122:                                              ; preds = %114
  %123 = load ptr, ptr %4, align 4
  %124 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.11, ptr noundef %123, i32 noundef 4) #6
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = add i32 %117, %126
  %128 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef %123, i32 noundef 4) #6
  %129 = icmp eq i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = add i32 %116, %130
  %132 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.12, ptr noundef %123, i32 noundef 6) #6
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = add i32 %115, %134
  %136 = add nuw nsw i32 %118, 1
  %137 = icmp eq i32 %136, %111
  br i1 %137, label %138, label %114

138:                                              ; preds = %122
  %139 = icmp eq i32 %127, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %138
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #6
  br label %164

141:                                              ; preds = %138
  store i32 %127, ptr %106, align 4
  %142 = mul i32 %127, 48
  %143 = call noalias ptr @devm_kmalloc(ptr noundef %105, i32 noundef %142, i32 noundef 3520) #6
  %144 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %143, ptr %144, align 4
  %145 = icmp eq ptr %143, null
  br i1 %145, label %164, label %146

146:                                              ; preds = %141
  %147 = icmp eq i32 %131, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #6
  br label %164

149:                                              ; preds = %146
  store i32 %131, ptr %107, align 4
  %150 = mul i32 %131, 48
  %151 = call noalias ptr @devm_kmalloc(ptr noundef %105, i32 noundef %150, i32 noundef 3520) #6
  %152 = getelementptr %struct.dp_parser, ptr %0, i32 0, i32 1, i32 1, i32 1
  store ptr %151, ptr %152, align 4
  %153 = icmp eq ptr %151, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, ptr %107, align 4
  br label %164

155:                                              ; preds = %149
  %156 = icmp eq i32 %135, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %155
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #6
  br label %164

158:                                              ; preds = %155
  store i32 %135, ptr %108, align 4
  %159 = mul i32 %135, 48
  %160 = call noalias ptr @devm_kmalloc(ptr noundef %105, i32 noundef %159, i32 noundef 3520) #6
  %161 = getelementptr %struct.dp_parser, ptr %0, i32 0, i32 1, i32 2, i32 1
  store ptr %160, ptr %161, align 4
  %162 = icmp eq ptr %160, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  store i32 0, ptr %108, align 4
  br label %164

164:                                              ; preds = %163, %157, %154, %148, %141, %140, %114, %113
  %165 = phi i32 [ -22, %141 ], [ -22, %154 ], [ -22, %163 ], [ -22, %157 ], [ -22, %148 ], [ -22, %140 ], [ -22, %113 ], [ %120, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %165) #6
  br label %231

166:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %167 = load i32, ptr %106, align 4
  %168 = load i32, ptr %107, align 4
  %169 = load i32, ptr %108, align 4
  %170 = add i32 %168, %167
  %171 = add i32 %170, %169
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %233

173:                                              ; preds = %225, %166
  %174 = phi i32 [ %228, %225 ], [ 0, %166 ]
  %175 = phi i32 [ %227, %225 ], [ 0, %166 ]
  %176 = phi i32 [ %226, %225 ], [ 0, %166 ]
  %177 = phi i32 [ %229, %225 ], [ 0, %166 ]
  %178 = load ptr, ptr %109, align 8
  %179 = call i32 @of_property_read_string_helper(ptr noundef %178, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %177) #6
  %180 = icmp sgt i32 %179, -1
  br i1 %180, label %182, label %181

181:                                              ; preds = %173
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %179) #6
  br label %231

182:                                              ; preds = %173
  %183 = load ptr, ptr %5, align 4
  %184 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.11, ptr noundef %183, i32 noundef 4) #6
  %185 = icmp eq i32 %184, 0
  %186 = icmp slt i32 %176, %167
  %187 = select i1 %185, i1 %186, i1 false
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load ptr, ptr %144, align 4
  %190 = getelementptr %struct.dss_clk, ptr %189, i32 %176, i32 1
  %191 = call i32 @strlcpy(ptr noundef %190, ptr noundef %183, i32 noundef 32) #6
  %192 = getelementptr %struct.dss_clk, ptr %189, i32 %176, i32 2
  store i32 0, ptr %192, align 4
  %193 = add nsw i32 %176, 1
  br label %225

194:                                              ; preds = %182
  %195 = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.12, ptr noundef %183, i32 noundef 6) #6
  %196 = icmp eq i32 %195, 0
  %197 = icmp slt i32 %174, %169
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load ptr, ptr %161, align 4
  %201 = getelementptr %struct.dss_clk, ptr %200, i32 %174, i32 1
  %202 = call i32 @strlcpy(ptr noundef %201, ptr noundef %183, i32 noundef 32) #6
  %203 = getelementptr %struct.dss_clk, ptr %200, i32 %174, i32 2
  store i32 1, ptr %203, align 4
  %204 = add nsw i32 %174, 1
  br label %225

205:                                              ; preds = %194
  %206 = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.13, ptr noundef %183, i32 noundef 4) #6
  %207 = icmp eq i32 %206, 0
  %208 = icmp slt i32 %175, %168
  %209 = select i1 %207, i1 %208, i1 false
  br i1 %209, label %210, label %225

210:                                              ; preds = %205
  %211 = load ptr, ptr %152, align 4
  %212 = getelementptr %struct.dss_clk, ptr %211, i32 %175, i32 1
  %213 = call i32 @strlcpy(ptr noundef %212, ptr noundef %183, i32 noundef 32) #6
  %214 = add nsw i32 %175, 1
  %215 = load ptr, ptr %5, align 4
  %216 = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.14, ptr noundef %215, i32 noundef 9) #6
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %210
  %219 = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.15, ptr noundef %215, i32 noundef 12) #6
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %218, %210
  %222 = getelementptr %struct.dss_clk, ptr %211, i32 %175, i32 2
  store i32 1, ptr %222, align 4
  br label %225

223:                                              ; preds = %218
  %224 = getelementptr %struct.dss_clk, ptr %211, i32 %175, i32 2
  store i32 0, ptr %224, align 4
  br label %225

225:                                              ; preds = %223, %221, %205, %199, %188
  %226 = phi i32 [ %193, %188 ], [ %176, %199 ], [ %176, %205 ], [ %176, %223 ], [ %176, %221 ]
  %227 = phi i32 [ %175, %188 ], [ %175, %199 ], [ %175, %205 ], [ %214, %223 ], [ %214, %221 ]
  %228 = phi i32 [ %174, %188 ], [ %204, %199 ], [ %174, %205 ], [ %174, %223 ], [ %174, %221 ]
  %229 = add nuw nsw i32 %177, 1
  %230 = icmp eq i32 %229, %171
  br i1 %230, label %233, label %173

231:                                              ; preds = %181, %164
  %232 = phi i32 [ %179, %181 ], [ -22, %164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %255

233:                                              ; preds = %225, %166
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %234 = icmp eq i32 %1, 14
  br i1 %234, label %235, label %253

235:                                              ; preds = %233
  %236 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %237 = getelementptr inbounds %struct.platform_device, ptr %236, i32 0, i32 3, i32 25
  %238 = load ptr, ptr %237, align 8
  %239 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %238, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #6
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %235
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %239) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %255

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.platform_device, ptr %236, i32 0, i32 3
  %244 = load ptr, ptr %3, align 4
  %245 = call ptr @devm_drm_panel_bridge_add(ptr noundef %243, ptr noundef %244) #6
  %246 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 7
  store ptr %245, ptr %246, align 4
  %247 = icmp ugt ptr %245, inttoptr (i32 -4096 to ptr)
  br i1 %247, label %249, label %248

248:                                              ; preds = %242
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %253

249:                                              ; preds = %242
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  %250 = load ptr, ptr %246, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %252 = icmp eq ptr %250, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %249, %248, %233
  %254 = getelementptr inbounds %struct.dp_parser, ptr %0, i32 0, i32 5
  store ptr @sdm845_dp_reg_cfg, ptr %254, align 4
  br label %255

255:                                              ; preds = %253, %249, %241, %231, %89, %36, %11
  %256 = phi i32 [ 0, %253 ], [ -22, %11 ], [ %91, %89 ], [ %251, %249 ], [ -22, %36 ], [ %232, %231 ], [ %239, %241 ]
  ret i32 %256
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
