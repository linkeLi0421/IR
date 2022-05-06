; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2820r_t.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_t.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reg_val_mask = type { i32, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cxd2820r_priv = type { [2 x ptr], [2 x ptr], ptr, %struct.dvb_frontend, i8, i8, i8, i8, i64, i64, i8, [3 x i8], %struct.gpio_chip, i32, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.73, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.73 = type { ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__const.cxd2820r_set_frontend_t.bw_params1 = private unnamed_addr constant [3 x [5 x i8]] [[5 x i8] c"\17\EA\AA\AA\AA", [5 x i8] c"\14\80\00\00\00", [5 x i8] c"\11\F0\00\00\00"], align 1
@__const.cxd2820r_set_frontend_t.bw_params2 = private unnamed_addr constant [3 x [2 x i8]] [[2 x i8] c"\1F\DC", [2 x i8] c"\12\F8", [2 x i8] c"\01\E0"], align 1
@cxd2820r_sleep_t.tab = internal global [5 x %struct.reg_val_mask] [%struct.reg_val_mask { i32 255, i8 31, i8 -1 }, %struct.reg_val_mask { i32 133, i8 0, i8 -1 }, %struct.reg_val_mask { i32 136, i8 1, i8 -1 }, %struct.reg_val_mask { i32 129, i8 0, i8 -1 }, %struct.reg_val_mask { i32 128, i8 0, i8 -1 }], align 4
@switch.table.cxd2820r_get_frontend_t = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.cxd2820r_get_frontend_t.2 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_set_frontend_t(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x [5 x i8]], align 1
  %5 = alloca [3 x [2 x i8]], align 1
  %6 = alloca [12 x %struct.reg_val_mask], align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) @__const.cxd2820r_set_frontend_t.bw_params1, i32 15, i1 false)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef nonnull align 1 dereferenceable(6) @__const.cxd2820r_set_frontend_t.bw_params2, i32 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #6
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %9, i8 0, i32 92, i1 false), !annotation !8
  store i32 128, ptr %6, align 4
  %10 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 0, i32 2
  store i8 -1, ptr %10, align 1
  %11 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 1
  store i32 129, ptr %11, align 4
  %12 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 1, i32 1
  store i8 3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 1, i32 2
  store i8 -1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 2
  store i32 133, ptr %14, align 4
  %15 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 2, i32 1
  store i8 7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 2, i32 2
  store i8 -1, ptr %16, align 1
  %17 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 3
  store i32 136, ptr %17, align 4
  %18 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 3, i32 1
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 3, i32 2
  store i8 -1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 4
  store i32 112, ptr %20, align 4
  %21 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 4, i32 1
  %22 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  store i8 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 4, i32 2
  store i8 -1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 5
  store i32 113, ptr %25, align 4
  %26 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 5, i32 1
  %27 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 5
  %28 = load i8, ptr %27, align 1, !range !9
  %29 = shl nuw nsw i8 %28, 4
  %30 = xor i8 %29, 16
  store i8 %30, ptr %26, align 4
  %31 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 5, i32 2
  store i8 16, ptr %31, align 1
  %32 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 6
  store i32 203, ptr %32, align 4
  %33 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 6, i32 1
  %34 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 6
  %35 = load i8, ptr %34, align 2, !range !9
  %36 = shl nuw nsw i8 %35, 6
  store i8 %36, ptr %33, align 4
  %37 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 6, i32 2
  store i8 64, ptr %37, align 1
  %38 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 7
  store i32 165, ptr %38, align 4
  %39 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 7, i32 2
  store i8 1, ptr %39, align 1
  %40 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 8
  store i32 130, ptr %40, align 4
  %41 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 8, i32 1
  store i8 32, ptr %41, align 4
  %42 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 8, i32 2
  store i8 96, ptr %42, align 1
  %43 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 9
  store i32 194, ptr %43, align 4
  %44 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 9, i32 1
  store i8 -61, ptr %44, align 4
  %45 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 9, i32 2
  store i8 -1, ptr %45, align 1
  %46 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 10
  store i32 362, ptr %46, align 4
  %47 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 10, i32 1
  store i8 80, ptr %47, align 4
  %48 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 10, i32 2
  store i8 -1, ptr %48, align 1
  %49 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 11
  store i32 1063, ptr %49, align 4
  %50 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 11, i32 1
  store i8 65, ptr %50, align 4
  %51 = getelementptr inbounds %struct.reg_val_mask, ptr %6, i32 11, i32 2
  store i8 -1, ptr %51, align 1
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %53 = load i32, ptr %52, align 4
  switch i32 %53, label %122 [
    i32 6000000, label %56
    i32 7000000, label %54
    i32 8000000, label %55
  ]

54:                                               ; preds = %1
  br label %56

55:                                               ; preds = %1
  br label %56

56:                                               ; preds = %55, %54, %1
  %57 = phi i32 [ 0, %55 ], [ 64, %54 ], [ 128, %1 ]
  %58 = phi i32 [ 2, %55 ], [ 1, %54 ], [ 0, %1 ]
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = tail call i32 %60(ptr noundef %0) #6
  br label %64

64:                                               ; preds = %62, %56
  %65 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 13
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %8, ptr noundef nonnull %6, i32 noundef 12) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %120

71:                                               ; preds = %68, %64
  store i32 3, ptr %65, align 4
  %72 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 10
  store i8 0, ptr %72, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %120, label %76

76:                                               ; preds = %71
  %77 = call i32 %74(ptr noundef %0, ptr noundef nonnull %2) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %120

79:                                               ; preds = %76
  %80 = load i32, ptr %2, align 4
  %81 = zext i32 %80 to i64
  %82 = shl nuw nsw i64 %81, 24
  %83 = add nuw nsw i64 %82, 20500000
  %84 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 1887103718422835785, i64 %83) #7, !srcloc !10
  %85 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1887103718422835785, i64 %83, i64 %84) #7, !srcloc !11
  %86 = lshr i64 %85, 22
  %87 = lshr i64 %85, 38
  %88 = trunc i64 %87 to i8
  store i8 %88, ptr %3, align 1
  %89 = lshr i64 %85, 30
  %90 = trunc i64 %89 to i8
  %91 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 %90, ptr %91, align 1
  %92 = trunc i64 %86 to i8
  %93 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds %struct.cxd2820r_priv, ptr %8, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = call i32 @regmap_bulk_write(ptr noundef %95, i32 noundef 182, ptr noundef nonnull %3, i32 noundef 3) #6
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %79
  %99 = load ptr, ptr %94, align 8
  %100 = getelementptr [3 x [5 x i8]], ptr %4, i32 0, i32 %58
  %101 = call i32 @regmap_bulk_write(ptr noundef %99, i32 noundef 159, ptr noundef %100, i32 noundef 5) #6
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load ptr, ptr %94, align 8
  %105 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 215, i32 noundef 192, i32 noundef %57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load ptr, ptr %94, align 8
  %109 = getelementptr [3 x [2 x i8]], ptr %5, i32 0, i32 %58
  %110 = call i32 @regmap_bulk_write(ptr noundef %108, i32 noundef 217, ptr noundef %109, i32 noundef 2) #6
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load ptr, ptr %94, align 8
  %114 = call i32 @regmap_write(ptr noundef %113, i32 noundef 255, i32 noundef 8) #6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load ptr, ptr %94, align 8
  %118 = call i32 @regmap_write(ptr noundef %117, i32 noundef 254, i32 noundef 1) #6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116, %112, %107, %103, %98, %79, %76, %71, %68
  %121 = phi i32 [ %69, %68 ], [ %77, %76 ], [ %96, %79 ], [ %101, %98 ], [ %105, %103 ], [ %110, %107 ], [ %114, %112 ], [ %118, %116 ], [ -22, %71 ]
  br label %122

122:                                              ; preds = %120, %116, %1
  %123 = phi i32 [ %121, %120 ], [ -22, %1 ], [ 0, %116 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %123
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_get_frontend_t(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #6
  store i16 0, ptr %4, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 47, ptr noundef nonnull %4, i32 noundef 2) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %2
  %12 = load i8, ptr %4, align 2
  %13 = lshr i8 %12, 6
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds [3 x i32], ptr @switch.table.cxd2820r_get_frontend_t, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = lshr i8 %22, 1
  %24 = and i8 %23, 3
  %25 = icmp ult i8 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = zext i8 %24 to i32
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = lshr i8 %22, 3
  %31 = and i8 %30, 3
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %32, ptr %33, align 4
  %34 = lshr i8 %12, 3
  %35 = and i8 %34, 7
  %36 = icmp ult i8 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = zext i8 %35 to i32
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = and i8 %12, 7
  %42 = icmp ult i8 %41, 5
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = zext i8 %41 to i32
  %45 = getelementptr inbounds [5 x i32], ptr @switch.table.cxd2820r_get_frontend_t.2, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = icmp ult i8 %22, -96
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = lshr i8 %22, 5
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds [5 x i32], ptr @switch.table.cxd2820r_get_frontend_t.2, i32 0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %50, %48
  %57 = load ptr, ptr %7, align 8
  %58 = call i32 @regmap_read(ptr noundef %57, i32 noundef 1990, ptr noundef nonnull %3) #6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, ptr %3, align 4
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %56, %2
  %65 = phi i32 [ %9, %2 ], [ %58, %56 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_read_status_t(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %3, i32 noundef 1) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %130

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %13 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 115, ptr noundef %12, i32 noundef 1) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %130

15:                                               ; preds = %10
  %16 = load i8, ptr %3, align 1
  %17 = and i8 %16, 7
  %18 = load i8, ptr %12, align 1
  %19 = icmp eq i8 %17, 6
  %20 = and i8 %18, 8
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = select i1 %19, i1 true, i1 %21
  br i1 %24, label %25, label %46

25:                                               ; preds = %23, %15
  %26 = phi i32 [ 31, %15 ], [ 15, %23 ]
  store i32 %26, ptr %1, align 4
  %27 = load ptr, ptr %6, align 8
  %28 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef 38, ptr noundef nonnull %3, i32 noundef 2) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %130

30:                                               ; preds = %25
  %31 = load i8, ptr %3, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = load i8, ptr %12, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, 3840
  %37 = or i32 %36, %35
  %38 = xor i32 %37, 4095
  %39 = shl nuw nsw i32 %38, 4
  %40 = lshr i32 %38, 8
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %43, align 1
  %44 = zext i32 %41 to i64
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %44, ptr %45, align 1
  br label %49

46:                                               ; preds = %23
  store i32 0, ptr %1, align 4
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %48, align 1
  br label %49

49:                                               ; preds = %46, %30
  %50 = load i32, ptr %1, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %6, align 8
  %55 = call i32 @regmap_bulk_read(ptr noundef %54, i32 noundef 44, ptr noundef nonnull %3, i32 noundef 2) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %130

57:                                               ; preds = %53
  %58 = load i8, ptr %3, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = load i8, ptr %12, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %60, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %57
  %66 = call i32 @intlog10(i32 noundef %63) #6
  %67 = sub nsw i32 32000, %63
  %68 = call i32 @intlog10(i32 noundef %67) #6
  %69 = add i32 %66, 55532585
  %70 = sub i32 %69, %68
  %71 = zext i32 %70 to i64
  %72 = mul nuw nsw i64 %71, 10000
  %73 = lshr i64 %72, 24
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %65, %57
  %76 = phi i32 [ %74, %65 ], [ 0, %57 ]
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %77, align 1
  %78 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %78, align 1
  %79 = zext i32 %76 to i64
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %79, ptr %80, align 1
  br label %84

81:                                               ; preds = %49
  %82 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %82, align 1
  %83 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %83, align 1
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, ptr %1, align 4
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %127, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 10
  %90 = load i8, ptr %89, align 8, !range !9
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %6, align 8
  %94 = call i32 @regmap_bulk_read(ptr noundef %93, i32 noundef 118, ptr noundef nonnull %3, i32 noundef 3) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %92
  %97 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %98 = load i8, ptr %97, align 1
  %99 = icmp sgt i8 %98, -1
  br i1 %99, label %117, label %100

100:                                              ; preds = %96
  %101 = zext i8 %98 to i32
  %102 = shl nuw nsw i32 %101, 16
  %103 = load i8, ptr %12, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 8
  %106 = load i8, ptr %3, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %102, 983040
  %109 = or i32 %105, %108
  %110 = or i32 %109, %107
  br label %111

111:                                              ; preds = %100, %88
  %112 = phi i32 [ 0, %88 ], [ %110, %100 ]
  %113 = load ptr, ptr %6, align 8
  %114 = call i32 @regmap_write(ptr noundef %113, i32 noundef 121, i32 noundef 1) #6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  store i8 1, ptr %89, align 8
  br label %117

117:                                              ; preds = %116, %96
  %118 = phi i32 [ %112, %116 ], [ 0, %96 ]
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.cxd2820r_priv, ptr %5, i32 0, i32 9
  %121 = load i64, ptr %120, align 8
  %122 = add i64 %121, %119
  store i64 %122, ptr %120, align 8
  %123 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %124, align 1
  %125 = load i64, ptr %120, align 8
  %126 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %125, ptr %126, align 1
  br label %130

127:                                              ; preds = %84
  %128 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %128, align 4
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %129, align 1
  br label %130

130:                                              ; preds = %127, %117, %111, %92, %53, %25, %10, %2
  %131 = phi i32 [ 0, %127 ], [ %8, %2 ], [ %13, %10 ], [ 0, %117 ], [ %94, %92 ], [ %114, %111 ], [ %28, %25 ], [ %55, %53 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_init_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 133, i32 noundef 7) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_sleep_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 13
  store i32 0, ptr %4, align 4
  %5 = tail call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %3, ptr noundef nonnull @cxd2820r_sleep_t.tab, i32 noundef 5) #6
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2820r_get_tune_settings_t(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  store i32 500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 1
  %6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %3, align 4
  %8 = shl i32 %7, 1
  %9 = or i32 %8, 1
  %10 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!10 = !{i64 1129245, i64 1129272}
!11 = !{i64 1129755, i64 1129782, i64 1129816, i64 1129837}
