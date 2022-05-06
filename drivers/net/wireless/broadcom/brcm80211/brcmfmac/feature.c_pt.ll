; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmf_feat_fwcap = type { i32, ptr }
%struct.brcmf_feat_fwfeat = type { ptr, i32 }
%struct.brcmf_pno_macaddr_le = type { i8, i8, [6 x i8] }
%struct.brcmf_gscan_config = type { i16, i8, i8, i8, i8, i8, i8, i16, [1 x %struct.brcmf_gscan_bucket_config] }
%struct.brcmf_gscan_bucket_config = type { i8, i8, i8, i8, i16, i16 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.114, i8, ptr, ptr, i8, i8, [10 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type {}
%struct.anon.114 = type { i64, i64, i8 }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.40 }
%union.anon.40 = type { [4 x i32] }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.118 }
%union.anon.118 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }

@.str = private unnamed_addr constant [14 x i8] c"pfn_gscan_cfg\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"wowl\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"wowl_cap\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"rsdb_mode\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"tdls_enable\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"mfp\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pfn_macaddr\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sup_wpa\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"%s: could not get firmware cap (%d)\0A\00", align 1
@__func__.brcmf_feat_firmware_capabilities = private unnamed_addr constant [33 x i8] c"brcmf_feat_firmware_capabilities\00", align 1
@brcmf_fwcap_map = internal unnamed_addr constant [9 x %struct.brcmf_feat_fwcap] [%struct.brcmf_feat_fwcap { i32 0, ptr @.str.13 }, %struct.brcmf_feat_fwcap { i32 1, ptr @.str.14 }, %struct.brcmf_feat_fwcap { i32 4, ptr @.str.15 }, %struct.brcmf_feat_fwcap { i32 14, ptr @.str.16 }, %struct.brcmf_feat_fwcap { i32 15, ptr @.str.17 }, %struct.brcmf_feat_fwcap { i32 16, ptr @.str.17 }, %struct.brcmf_feat_fwcap { i32 18, ptr @.str.18 }, %struct.brcmf_feat_fwcap { i32 19, ptr @.str.19 }, %struct.brcmf_feat_fwcap { i32 20, ptr @.str.20 }], align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"mbss\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"mchan\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"p2p\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"rtap\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"802.11h\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"sae\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"idauth\00", align 1
@brcmf_feat_fwfeat_map = internal unnamed_addr constant [4 x %struct.brcmf_feat_fwfeat] [%struct.brcmf_feat_fwfeat { ptr @.str.21, i32 16384 }, %struct.brcmf_feat_fwfeat { ptr @.str.22, i32 16384 }, %struct.brcmf_feat_fwfeat { ptr @.str.23, i32 131072 }, %struct.brcmf_feat_fwfeat { ptr @.str.24, i32 131072 }], align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"01-6cb8e269\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"01-c47a91a4\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"01-801fb449\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"01-d2cbb8fd\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_feat_attach(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [768 x i8], align 1
  %9 = alloca %struct.brcmf_pno_macaddr_le, align 8
  %10 = alloca %struct.brcmf_gscan_config, align 2
  %11 = alloca i32, align 4
  %12 = tail call ptr @brcmf_get_ifp(ptr noundef %0, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  store i64 0, ptr %9, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(18) %10, i8 0, i32 18, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4, !annotation !8
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(768) %8, i8 0, i32 768, i1 false) #8, !annotation !8
  %14 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull %8, i32 noundef 768) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = call i32 @net_ratelimit() #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.brcmf_pub, ptr %13, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.brcmf_feat_firmware_capabilities, i32 noundef %14) #9
  br label %40

23:                                               ; preds = %37, %1
  %24 = phi i32 [ %38, %37 ], [ 0, %1 ]
  %25 = getelementptr [9 x %struct.brcmf_feat_fwcap], ptr @brcmf_fwcap_map, i32 0, i32 %24, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr @strnstr(ptr noundef nonnull %8, ptr noundef %26, i32 noundef 768) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = getelementptr [9 x %struct.brcmf_feat_fwcap], ptr @brcmf_fwcap_map, i32 0, i32 %24
  %31 = load i32, ptr %30, align 4
  %32 = shl nuw i32 1, %31
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr inbounds %struct.brcmf_pub, ptr %33, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %29, %23
  %38 = add nuw nsw i32 %24, 1
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %40, label %23

40:                                               ; preds = %37, %19, %16
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(18) %10, i8 0, i32 18, i1 false)
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.brcmf_bus, ptr %41, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %44 [
    i32 43430, label %53
    i32 17221, label %53
  ]

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 15
  store i8 1, ptr %45, align 1
  %46 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull %10, i32 noundef 18) #8
  %47 = icmp eq i32 %46, -23
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr inbounds %struct.brcmf_pub, ptr %49, i32 0, i32 16
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 4096
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %48, %44, %40, %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %54 = getelementptr inbounds %struct.brcmf_if, ptr %12, i32 0, i32 15
  store i8 1, ptr %54, align 1
  %55 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull %7) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load ptr, ptr %12, align 4
  %59 = getelementptr inbounds %struct.brcmf_pub, ptr %58, i32 0, i32 16
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 4
  store i32 %61, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %53
  store i8 0, ptr %54, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.brcmf_bus, ptr %63, i32 0, i32 10
  %65 = load i8, ptr %64, align 1, !range !9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  store i8 1, ptr %54, align 1
  %68 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load ptr, ptr %12, align 4
  %72 = getelementptr inbounds %struct.brcmf_pub, ptr %71, i32 0, i32 16
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 8
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %70, %67
  store i8 0, ptr %54, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %76

76:                                               ; preds = %75, %62
  %77 = load ptr, ptr %12, align 4
  %78 = getelementptr inbounds %struct.brcmf_pub, ptr %77, i32 0, i32 16
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %76
  %83 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull %11) #8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load ptr, ptr %12, align 4
  %87 = getelementptr inbounds %struct.brcmf_pub, ptr %86, i32 0, i32 16
  %88 = load i32, ptr %87, align 4
  %89 = or i32 %88, 1024
  store i32 %89, ptr %87, align 4
  %90 = load i32, ptr %11, align 4
  %91 = and i32 %90, 134217728
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %85
  %94 = load ptr, ptr %12, align 4
  %95 = getelementptr inbounds %struct.brcmf_pub, ptr %94, i32 0, i32 16
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, 256
  store i32 %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %93, %85
  %99 = and i32 %90, 1024
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %12, align 4
  %103 = getelementptr inbounds %struct.brcmf_pub, ptr %102, i32 0, i32 16
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, 512
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %101, %98, %82, %76
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr inbounds %struct.brcmf_bus, ptr %107, i32 0, i32 7
  %109 = load i32, ptr %108, align 4
  switch i32 %109, label %115 [
    i32 17200, label %110
    i32 43362, label %110
  ]

110:                                              ; preds = %106, %106
  %111 = load ptr, ptr %12, align 4
  %112 = getelementptr inbounds %struct.brcmf_pub, ptr %111, i32 0, i32 16
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, -2
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %110, %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  store i8 1, ptr %54, align 1
  %116 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load ptr, ptr %12, align 4
  %120 = getelementptr inbounds %struct.brcmf_pub, ptr %119, i32 0, i32 16
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, 32
  store i32 %122, ptr %120, align 4
  br label %123

123:                                              ; preds = %118, %115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  store i8 1, ptr %54, align 1
  %124 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load ptr, ptr %12, align 4
  %128 = getelementptr inbounds %struct.brcmf_pub, ptr %127, i32 0, i32 16
  %129 = load i32, ptr %128, align 4
  %130 = or i32 %129, 64
  store i32 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %126, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  store i8 1, ptr %54, align 1
  %132 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load ptr, ptr %12, align 4
  %136 = getelementptr inbounds %struct.brcmf_pub, ptr %135, i32 0, i32 16
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %137, 2048
  store i32 %138, ptr %136, align 4
  br label %139

139:                                              ; preds = %134, %131
  store i8 0, ptr %54, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  store i8 1, ptr %9, align 8
  %140 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %12, ptr noundef nonnull @.str.7, ptr noundef nonnull %9, i32 noundef 8) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load ptr, ptr %12, align 4
  %144 = getelementptr inbounds %struct.brcmf_pub, ptr %143, i32 0, i32 16
  %145 = load i32, ptr %144, align 4
  %146 = or i32 %145, 128
  store i32 %146, ptr %144, align 4
  br label %147

147:                                              ; preds = %142, %139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  store i8 1, ptr %54, align 1
  %148 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load ptr, ptr %12, align 4
  %152 = getelementptr inbounds %struct.brcmf_pub, ptr %151, i32 0, i32 16
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 8192
  store i32 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %150, %147
  store i8 0, ptr %54, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %156 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 21
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.brcmf_mp_device, ptr %157, i32 0, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = xor i32 %159, -1
  %163 = load ptr, ptr %12, align 4
  %164 = getelementptr inbounds %struct.brcmf_pub, ptr %163, i32 0, i32 16
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, ptr %164, align 4
  br label %167

167:                                              ; preds = %161, %155
  %168 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 6
  %169 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.21, ptr noundef %168) #8
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %167
  %172 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.22, ptr noundef %168) #8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %171
  %175 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.23, ptr noundef %168) #8
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.24, ptr noundef %168) #8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177, %174, %171, %167
  %181 = phi i32 [ 0, %167 ], [ 1, %171 ], [ 2, %174 ], [ 3, %177 ]
  %182 = getelementptr [4 x %struct.brcmf_feat_fwfeat], ptr @brcmf_feat_fwfeat_map, i32 0, i32 %181, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 16
  %185 = load i32, ptr %184, align 4
  %186 = or i32 %185, %183
  store i32 %186, ptr %184, align 4
  br label %187

187:                                              ; preds = %180, %177
  %188 = load ptr, ptr %0, align 4
  %189 = getelementptr inbounds %struct.brcmf_bus, ptr %188, i32 0, i32 7
  %190 = load i32, ptr %189, align 4
  switch i32 %190, label %197 [
    i32 43236, label %192
    i32 17193, label %191
  ]

191:                                              ; preds = %187
  br label %192

192:                                              ; preds = %191, %187
  %193 = phi i32 [ 2, %191 ], [ 1, %187 ]
  %194 = getelementptr inbounds %struct.brcmf_pub, ptr %0, i32 0, i32 17
  %195 = load i32, ptr %194, align 4
  %196 = or i32 %195, %193
  store i32 %196, ptr %194, align 4
  br label %197

197:                                              ; preds = %192, %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_feat_is_enabled(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %1
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @brcmf_feat_debugfs_create(ptr nocapture noundef %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_feat_is_quirk_enabled(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %1
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
