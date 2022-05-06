; ModuleID = '/llk/IR/drivers/gpu/drm/drm_hdcp.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_hdcp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_hdcp_check_ksvs_revoked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_hdcp_check_ksvs_revoked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_hdcp_check_ksvs_revoked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_connector_attach_content_protection_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_connector_attach_content_protection_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_connector_attach_content_protection_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_hdcp_update_content_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_hdcp_update_content_protection\22\09\09\09\09\09"
module asm "__kstrtabns_drm_hdcp_update_content_protection:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.66 = type { i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.hdcp_srm_header = type <{ i8, i8, i16, i8 }>
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.67 }
%union.anon.67 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Revoked KSV is \00", align 1
@__kstrtab_drm_hdcp_check_ksvs_revoked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_hdcp_check_ksvs_revoked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_hdcp_check_ksvs_revoked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_hdcp_check_ksvs_revoked to i32), ptr @__kstrtab_drm_hdcp_check_ksvs_revoked, ptr @__kstrtabns_drm_hdcp_check_ksvs_revoked }, section "___ksymtab_gpl+drm_hdcp_check_ksvs_revoked", align 4
@drm_cp_enum_list = internal global [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.14 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.15 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.16 }], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@drm_hdcp_content_type_enum_list = internal global [2 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.17 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.18 }], align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Content Protection\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"HDCP Content Type\00", align 1
@__kstrtab_drm_connector_attach_content_protection_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_connector_attach_content_protection_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_connector_attach_content_protection_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_connector_attach_content_protection_property to i32), ptr @__kstrtab_drm_connector_attach_content_protection_property, ptr @__kstrtabns_drm_connector_attach_content_protection_property }, section "___ksymtab+drm_connector_attach_content_protection_property", align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_hdcp.c\00", align 1
@__kstrtab_drm_hdcp_update_content_protection = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_hdcp_update_content_protection = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_hdcp_update_content_protection = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_hdcp_update_content_protection to i32), ptr @__kstrtab_drm_hdcp_update_content_protection, ptr @__kstrtabns_drm_hdcp_update_content_protection }, section "___ksymtab+drm_hdcp_update_content_protection", align 4
@__const.drm_hdcp_request_srm.fw_name = private unnamed_addr constant [36 x i8] c"display_hdcp_srm.bin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid blob length\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"SRM ID: 0x%x, SRM Ver: 0x%x, SRM Gen No: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Invalid blob length or vrl length\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"No vrl found\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Revoked KSV count is 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"vrl: %d, Revoked KSVs: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Revoked KSVs: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\09%#02x, %#02x, %#02x, %#02x, %#02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Undesired\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Desired\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"HDCP Type0\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"HDCP Type1\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_drm_connector_attach_content_protection_property, ptr @__ksymtab_drm_hdcp_check_ksvs_revoked, ptr @__ksymtab_drm_hdcp_update_content_protection], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_hdcp_check_ksvs_revoked(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [36 x i8], align 1
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(36) %4, ptr noundef nonnull align 1 dereferenceable(36) @__const.drm_hdcp_request_srm.fw_name, i32 36, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @request_firmware_direct(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %7) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %168, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %164, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %164, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %12, 5
  br i1 %19, label %161, label %20

20:                                               ; preds = %18
  %21 = load i8, ptr %16, align 1
  switch i8 %21, label %161 [
    i8 -128, label %22
    i8 -111, label %106
  ]

22:                                               ; preds = %20
  %23 = icmp ult i32 %12, 48
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #8
  br label %161

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hdcp_srm_header, ptr %16, i32 0, i32 2
  %27 = load i16, ptr %26, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27) #8
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.hdcp_srm_header, ptr %16, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 128, i32 noundef %29, i32 noundef %32) #8
  %33 = getelementptr inbounds %struct.hdcp_srm_header, ptr %16, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36, !prof !9

36:                                               ; preds = %25
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 103, i32 noundef 9, ptr noundef null) #8
  br label %37

37:                                               ; preds = %36, %25
  %38 = getelementptr i8, ptr %16, i32 5
  %39 = getelementptr i8, ptr %16, i32 7
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %16, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  %46 = or i32 %45, %41
  %47 = load i8, ptr %38, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 16
  %50 = or i32 %46, %49
  %51 = add nuw nsw i32 %50, 5
  %52 = icmp ugt i32 %51, %12
  %53 = icmp ult i32 %50, 43
  %54 = or i1 %53, %52
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %161

56:                                               ; preds = %37
  %57 = add nsw i32 %50, -43
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  br label %161

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %16, i32 8
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i32 [ %68, %62 ], [ 0, %60 ]
  %64 = phi i32 [ %72, %62 ], [ 0, %60 ]
  %65 = phi ptr [ %71, %62 ], [ %61, %60 ]
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add i32 %63, %67
  %69 = mul nuw nsw i32 %67, 5
  %70 = add nuw nsw i32 %69, 1
  %71 = getelementptr i8, ptr %65, i32 %70
  %72 = add i32 %70, %64
  %73 = icmp ult i32 %72, %57
  br i1 %73, label %62, label %74

74:                                               ; preds = %62
  %75 = icmp ne i32 %72, %57
  %76 = icmp eq i32 %68, 0
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %167, label %78

78:                                               ; preds = %74
  %79 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %68, i32 5) #8
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %85, label %81, !prof !10

81:                                               ; preds = %78
  %82 = extractvalue { i32, i1 } %79, 0
  %83 = call noalias align 64 ptr @__kmalloc(i32 noundef %82, i32 noundef 3520) #9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %78
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #8
  br label %161

86:                                               ; preds = %86, %81
  %87 = phi ptr [ %99, %86 ], [ %61, %81 ]
  %88 = phi i32 [ %95, %86 ], [ 0, %81 ]
  %89 = phi i32 [ %101, %86 ], [ 0, %81 ]
  %90 = phi i32 [ %98, %86 ], [ 0, %81 ]
  %91 = load i8, ptr %87, align 1
  %92 = zext i8 %91 to i32
  %93 = mul nuw nsw i32 %92, 5
  %94 = getelementptr i8, ptr %87, i32 1
  %95 = add i32 %88, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %88, i32 noundef %92) #8
  %96 = mul i32 %90, 5
  %97 = getelementptr i8, ptr %83, i32 %96
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %97, ptr align 1 %94, i32 %93, i1 false) #8
  %98 = add i32 %90, %92
  %99 = getelementptr i8, ptr %94, i32 %93
  %100 = add nuw i32 %89, 1
  %101 = add i32 %100, %93
  %102 = icmp ult i32 %101, %57
  br i1 %102, label %86, label %103

103:                                              ; preds = %86
  %104 = icmp eq i32 %98, %68
  br i1 %104, label %170, label %105

105:                                              ; preds = %103
  call void @kfree(ptr noundef nonnull %83) #8
  br label %161

106:                                              ; preds = %20
  %107 = icmp ult i32 %12, 392
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #8
  br label %161

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.hdcp_srm_header, ptr %16, i32 0, i32 2
  %111 = load i16, ptr %110, align 1
  %112 = call i16 @llvm.bswap.i16(i16 %111) #8
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.hdcp_srm_header, ptr %16, i32 0, i32 3
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 144, i32 noundef %113, i32 noundef %116) #8
  %117 = getelementptr inbounds %struct.hdcp_srm_header, ptr %16, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %161

120:                                              ; preds = %109
  %121 = getelementptr i8, ptr %16, i32 5
  %122 = getelementptr i8, ptr %16, i32 7
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = getelementptr i8, ptr %16, i32 6
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = or i32 %128, %124
  %130 = load i8, ptr %121, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %131, 16
  %133 = or i32 %129, %132
  %134 = add nuw nsw i32 %133, 5
  %135 = icmp ugt i32 %134, %12
  %136 = icmp ult i32 %133, 387
  %137 = or i1 %136, %135
  br i1 %137, label %138, label %139

138:                                              ; preds = %120
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %161

139:                                              ; preds = %120
  %140 = icmp eq i32 %133, 387
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  br label %161

142:                                              ; preds = %139
  %143 = getelementptr i8, ptr %16, i32 8
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 2
  %147 = getelementptr i8, ptr %16, i32 9
  %148 = load i8, ptr %147, align 1
  %149 = lshr i8 %148, 6
  %150 = zext i8 %149 to i32
  %151 = or i32 %146, %150
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %167, label %153

153:                                              ; preds = %142
  %154 = mul nuw nsw i32 %151, 5
  %155 = call noalias align 64 ptr @__kmalloc(i32 noundef %154, i32 noundef 3520) #9
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #8
  br label %161

158:                                              ; preds = %153
  %159 = getelementptr i8, ptr %16, i32 12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %151) #8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %155, ptr align 1 %159, i32 %154, i1 false) #8
  %160 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %160) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  br label %173

161:                                              ; preds = %157, %141, %138, %109, %108, %105, %85, %59, %55, %24, %20, %18
  %162 = phi i32 [ -22, %20 ], [ -22, %109 ], [ -22, %141 ], [ -12, %157 ], [ -22, %138 ], [ -22, %108 ], [ -22, %59 ], [ -12, %85 ], [ -22, %105 ], [ -22, %55 ], [ -22, %24 ], [ -22, %18 ]
  %163 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %163) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  br label %217

164:                                              ; preds = %14, %10
  %165 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %165) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  %166 = icmp eq i32 %8, 0
  br i1 %166, label %214, label %217

167:                                              ; preds = %142, %74
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #8
  br label %168

168:                                              ; preds = %167, %3
  %169 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %169) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  br label %214

170:                                              ; preds = %103
  %171 = load ptr, ptr %5, align 4
  call void @release_firmware(ptr noundef %171) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #8
  %172 = icmp eq i32 %68, 0
  br i1 %172, label %214, label %173

173:                                              ; preds = %170, %158
  %174 = phi ptr [ %155, %158 ], [ %83, %170 ]
  %175 = phi i32 [ %151, %158 ], [ %68, %170 ]
  %176 = icmp eq i32 %2, 0
  br label %177

177:                                              ; preds = %210, %173
  %178 = phi i32 [ 0, %173 ], [ %211, %210 ]
  %179 = phi i32 [ 0, %173 ], [ %212, %210 ]
  br i1 %176, label %210, label %180

180:                                              ; preds = %177
  %181 = mul i32 %179, 5
  %182 = getelementptr i8, ptr %174, i32 %181
  br label %183

183:                                              ; preds = %206, %180
  %184 = phi i32 [ %178, %180 ], [ %207, %206 ]
  %185 = phi i32 [ 0, %180 ], [ %208, %206 ]
  %186 = mul i32 %185, 5
  %187 = getelementptr i8, ptr %1, i32 %186
  %188 = call i32 @bcmp(ptr noundef dereferenceable(5) %187, ptr noundef dereferenceable(5) %182, i32 5)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %206

190:                                              ; preds = %183
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #8
  %191 = load i8, ptr %187, align 1
  %192 = zext i8 %191 to i32
  %193 = getelementptr i8, ptr %187, i32 1
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i32
  %196 = getelementptr i8, ptr %187, i32 2
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = getelementptr i8, ptr %187, i32 3
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = getelementptr i8, ptr %187, i32 4
  %203 = load i8, ptr %202, align 1
  %204 = zext i8 %203 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %192, i32 noundef %195, i32 noundef %198, i32 noundef %201, i32 noundef %204) #8
  %205 = add i32 %184, 1
  br label %206

206:                                              ; preds = %190, %183
  %207 = phi i32 [ %184, %183 ], [ %205, %190 ]
  %208 = add nuw i32 %185, 1
  %209 = icmp eq i32 %208, %2
  br i1 %209, label %210, label %183

210:                                              ; preds = %206, %177
  %211 = phi i32 [ %178, %177 ], [ %207, %206 ]
  %212 = add nuw i32 %179, 1
  %213 = icmp eq i32 %212, %175
  br i1 %213, label %214, label %177

214:                                              ; preds = %210, %170, %168, %164
  %215 = phi ptr [ %83, %170 ], [ null, %168 ], [ null, %164 ], [ %174, %210 ]
  %216 = phi i32 [ 0, %170 ], [ 0, %168 ], [ 0, %164 ], [ %211, %210 ]
  call void @kfree(ptr noundef %215) #8
  br label %217

217:                                              ; preds = %214, %164, %161
  %218 = phi i32 [ %216, %214 ], [ %8, %164 ], [ %162, %161 ]
  ret i32 %218
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_get_content_protection_name(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @drm_cp_enum_list, align 4
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %11, %8, %1
  %5 = phi i32 [ 0, %1 ], [ 1, %8 ], [ 2, %11 ]
  %6 = getelementptr [3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i32 0, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %14

8:                                                ; preds = %1
  %9 = load i32, ptr getelementptr inbounds ([3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i32 0, i32 1), align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %4, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr getelementptr inbounds ([3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i32 0, i32 2), align 4
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %4, label %14

14:                                               ; preds = %11, %4
  %15 = phi ptr [ %7, %4 ], [ @.str.1, %11 ]
  ret ptr %15
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_get_hdcp_content_type_name(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i32, ptr @drm_hdcp_content_type_enum_list, align 4
  %3 = icmp eq i32 %2, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %8, %1
  %5 = phi i32 [ 0, %1 ], [ 1, %8 ]
  %6 = getelementptr [2 x %struct.drm_prop_enum_list], ptr @drm_hdcp_content_type_enum_list, i32 0, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load i32, ptr getelementptr inbounds ([2 x %struct.drm_prop_enum_list], ptr @drm_hdcp_content_type_enum_list, i32 0, i32 1), align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %4, label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %7, %4 ], [ @.str.1, %8 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_connector_attach_content_protection_property(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 89
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call ptr @drm_property_create_enum(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @drm_cp_enum_list, i32 noundef 3) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  tail call void @drm_object_attach_property(ptr noundef %12, ptr noundef nonnull %11, i64 noundef 0) #8
  store ptr %11, ptr %4, align 4
  br i1 %1, label %13, label %22

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 90
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call ptr @drm_property_create_enum(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @drm_hdcp_content_type_enum_list, i32 noundef 2) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %18, %17 ], [ %15, %13 ]
  tail call void @drm_object_attach_property(ptr noundef %12, ptr noundef nonnull %21, i64 noundef 0) #8
  store ptr %21, ptr %14, align 4
  br label %22

22:                                               ; preds = %20, %17, %10, %7
  %23 = phi i32 [ 0, %20 ], [ -12, %7 ], [ 0, %10 ], [ -12, %17 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_hdcp_update_content_protection(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 1
  %7 = tail call zeroext i1 @mutex_is_locked(ptr noundef %6) #8
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 415, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.drm_connector_state, ptr %5, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = trunc i64 %1 to i32
  store i32 %15, ptr %10, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 89
  %17 = load ptr, ptr %16, align 4
  tail call void @drm_sysfs_connector_status_event(ptr noundef %0, ptr noundef %17) #8
  br label %18

18:                                               ; preds = %14, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sysfs_connector_status_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
