; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2820r_c.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_c.c"
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

@cxd2820r_sleep_c.tab = internal constant [5 x %struct.reg_val_mask] [%struct.reg_val_mask { i32 255, i8 31, i8 -1 }, %struct.reg_val_mask { i32 133, i8 0, i8 -1 }, %struct.reg_val_mask { i32 136, i8 1, i8 -1 }, %struct.reg_val_mask { i32 129, i8 0, i8 -1 }, %struct.reg_val_mask { i32 128, i8 0, i8 -1 }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_set_frontend_c(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca i32, align 4
  %4 = alloca [14 x %struct.reg_val_mask], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #5
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #5
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %7, i8 0, i32 108, i1 false), !annotation !8
  store i32 128, ptr %4, align 4
  %8 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 0, i32 1
  store i8 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 0, i32 2
  store i8 -1, ptr %9, align 1
  %10 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 1
  store i32 129, ptr %10, align 4
  %11 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 1, i32 1
  store i8 5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 1, i32 2
  store i8 -1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 2
  store i32 133, ptr %13, align 4
  %14 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 2, i32 1
  store i8 7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 2, i32 2
  store i8 -1, ptr %15, align 1
  %16 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 3
  store i32 136, ptr %16, align 4
  %17 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 3, i32 1
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 3, i32 2
  store i8 -1, ptr %18, align 1
  %19 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 4
  store i32 130, ptr %19, align 4
  %20 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 4, i32 1
  store i8 32, ptr %20, align 4
  %21 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 4, i32 2
  store i8 96, ptr %21, align 1
  %22 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 5
  store i32 65898, ptr %22, align 4
  %23 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 5, i32 1
  store i8 72, ptr %23, align 4
  %24 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 5, i32 2
  store i8 -1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 6
  store i32 65701, ptr %25, align 4
  %26 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 6, i32 2
  store i8 1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 7
  store i32 65568, ptr %27, align 4
  %28 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 7, i32 1
  store i8 6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 7, i32 2
  store i8 7, ptr %29, align 1
  %30 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 8
  store i32 65625, ptr %30, align 4
  %31 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 8, i32 1
  store i8 80, ptr %31, align 4
  %32 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 8, i32 2
  store i8 -1, ptr %32, align 1
  %33 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 9
  store i32 65671, ptr %33, align 4
  %34 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 9, i32 1
  store i8 12, ptr %34, align 4
  %35 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 9, i32 2
  store i8 60, ptr %35, align 1
  %36 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 10
  store i32 65675, ptr %36, align 4
  %37 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 10, i32 1
  store i8 7, ptr %37, align 4
  %38 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 10, i32 2
  store i8 -1, ptr %38, align 1
  %39 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 11
  store i32 65567, ptr %39, align 4
  %40 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 11, i32 1
  %41 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 6
  %42 = load i8, ptr %41, align 2, !range !9
  %43 = shl nuw i8 %42, 7
  store i8 %43, ptr %40, align 4
  %44 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 11, i32 2
  store i8 -128, ptr %44, align 1
  %45 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 12
  store i32 65648, ptr %45, align 4
  %46 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 12, i32 1
  %47 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 4
  %48 = load i8, ptr %47, align 4
  store i8 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 12, i32 2
  store i8 -1, ptr %49, align 1
  %50 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 13
  store i32 65649, ptr %50, align 4
  %51 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 13, i32 1
  %52 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 5
  %53 = load i8, ptr %52, align 1, !range !9
  %54 = shl nuw nsw i8 %53, 4
  %55 = xor i8 %54, 16
  store i8 %55, ptr %51, align 4
  %56 = getelementptr inbounds %struct.reg_val_mask, ptr %4, i32 13, i32 2
  store i8 16, ptr %56, align 1
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %1
  %61 = tail call i32 %58(ptr noundef %0) #5
  br label %62

62:                                               ; preds = %60, %1
  %63 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 13
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 14) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %66, %62
  store i32 1, ptr %63, align 4
  %70 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 10
  store i8 0, ptr %70, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %104, label %74

74:                                               ; preds = %69
  %75 = call i32 %72(ptr noundef %0, ptr noundef nonnull %3) #5
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load i32, ptr %3, align 4
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 14
  %81 = add nuw nsw i64 %80, 20500000
  %82 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 1887103718422835785, i64 %81) #6, !srcloc !10
  %83 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1887103718422835785, i64 %81, i64 %82) #6, !srcloc !11
  %84 = lshr i64 %83, 22
  %85 = trunc i64 %84 to i32
  %86 = sub i32 16384, %85
  %87 = lshr i32 %86, 8
  %88 = trunc i32 %87 to i8
  store i8 %88, ptr %2, align 2
  %89 = trunc i32 %86 to i8
  %90 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %89, ptr %90, align 1
  %91 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 1
  %92 = getelementptr %struct.cxd2820r_priv, ptr %6, i32 0, i32 1, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 @regmap_bulk_write(ptr noundef %93, i32 noundef 66, ptr noundef nonnull %2, i32 noundef 2) #5
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %77
  %97 = load ptr, ptr %91, align 8
  %98 = call i32 @regmap_write(ptr noundef %97, i32 noundef 255, i32 noundef 8) #5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load ptr, ptr %91, align 8
  %102 = call i32 @regmap_write(ptr noundef %101, i32 noundef 254, i32 noundef 1) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100, %96, %77, %74, %69, %66
  %105 = phi i32 [ %67, %66 ], [ %75, %74 ], [ %94, %77 ], [ %98, %96 ], [ %102, %100 ], [ -22, %69 ]
  br label %106

106:                                              ; preds = %104, %100
  %107 = phi i32 [ %105, %104 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #5
  ret i32 %107
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_get_frontend_c(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !8
  %7 = getelementptr %struct.cxd2820r_priv, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 26, ptr noundef nonnull %4, i32 noundef 2) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i8, ptr %4, align 2
  %13 = and i8 %12, 15
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = mul nuw nsw i32 %19, 2500
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef 25, ptr noundef nonnull %3) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %11
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, 7
  %28 = icmp ult i32 %27, 5
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = add nuw nsw i32 %27, 1
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = lshr i32 %26, 7
  %34 = and i32 %33, 1
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %11, %2
  %37 = phi i32 [ %9, %2 ], [ %23, %11 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_read_status_c(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  %7 = getelementptr %struct.cxd2820r_priv, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 136, ptr noundef nonnull %4, i32 noundef 1) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %139

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %14 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 115, ptr noundef %13, i32 noundef 1) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %139

16:                                               ; preds = %11
  %17 = load i8, ptr %4, align 1
  %18 = and i8 %17, 1
  %19 = load i8, ptr %13, align 1
  %20 = icmp ne i8 %18, 0
  %21 = and i8 %19, 8
  %22 = icmp ne i8 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = select i1 %20, i1 true, i1 %22
  br i1 %25, label %26, label %48

26:                                               ; preds = %24, %16
  %27 = phi i32 [ 31, %16 ], [ 15, %24 ]
  store i32 %27, ptr %1, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = call i32 @regmap_bulk_read(ptr noundef %28, i32 noundef 73, ptr noundef nonnull %4, i32 noundef 2) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %139

31:                                               ; preds = %26
  %32 = load i8, ptr %4, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %13, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %33, 30
  %37 = shl nuw nsw i32 %35, 22
  %38 = or i32 %37, %36
  %39 = ashr exact i32 %38, 22
  %40 = sub nsw i32 511, %39
  store i32 %40, ptr %3, align 4
  %41 = shl nuw nsw i32 %40, 6
  %42 = lshr i32 %40, 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %45, align 1
  %46 = zext i32 %43 to i64
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %46, ptr %47, align 1
  br label %51

48:                                               ; preds = %24
  store i32 0, ptr %1, align 4
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %50, align 1
  br label %51

51:                                               ; preds = %48, %31
  %52 = load i32, ptr %1, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %90, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %7, align 4
  %57 = call i32 @regmap_read(ptr noundef %56, i32 noundef 25, ptr noundef nonnull %3) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %139

59:                                               ; preds = %55
  %60 = load i32, ptr %3, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 9500, i32 8750
  %64 = select i1 %62, i32 760, i32 650
  %65 = load ptr, ptr %7, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef 77, ptr noundef nonnull %3) #5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %139

68:                                               ; preds = %59
  %69 = load i32, ptr %3, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = call i32 @intlog2(i32 noundef %64) #5
  %73 = load i32, ptr %3, align 4
  %74 = call i32 @intlog2(i32 noundef %73) #5
  %75 = sub i32 %72, %74
  %76 = zext i32 %75 to i64
  %77 = zext i32 %63 to i64
  %78 = mul nuw nsw i64 %76, %77
  %79 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3196577203974196565, i64 %78) #6, !srcloc !10
  %80 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 3196577203974196565, i64 %78, i64 %79, i32 0) #6, !srcloc !12
  %81 = extractvalue { i64, i32 } %80, 0
  %82 = lshr i64 %81, 22
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %71, %68
  %85 = phi i32 [ %83, %71 ], [ 0, %68 ]
  %86 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %86, align 1
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %87, align 1
  %88 = zext i32 %85 to i64
  %89 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %88, ptr %89, align 1
  br label %93

90:                                               ; preds = %51
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %91, align 1
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %92, align 1
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, ptr %1, align 4
  %95 = and i32 %94, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %136, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 10
  %99 = load i8, ptr %98, align 8, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %120, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %7, align 4
  %103 = call i32 @regmap_bulk_read(ptr noundef %102, i32 noundef 118, ptr noundef nonnull %4, i32 noundef 3) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %139

105:                                              ; preds = %101
  %106 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = icmp sgt i8 %107, -1
  br i1 %108, label %126, label %109

109:                                              ; preds = %105
  %110 = zext i8 %107 to i32
  %111 = shl nuw nsw i32 %110, 16
  %112 = load i8, ptr %13, align 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %113, 8
  %115 = load i8, ptr %4, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %111, 983040
  %118 = or i32 %114, %117
  %119 = or i32 %118, %116
  br label %120

120:                                              ; preds = %109, %97
  %121 = phi i32 [ 0, %97 ], [ %119, %109 ]
  %122 = load ptr, ptr %7, align 4
  %123 = call i32 @regmap_write(ptr noundef %122, i32 noundef 121, i32 noundef 1) #5
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  store i8 1, ptr %98, align 8
  br label %126

126:                                              ; preds = %125, %105
  %127 = phi i32 [ %121, %125 ], [ 0, %105 ]
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.cxd2820r_priv, ptr %6, i32 0, i32 9
  %130 = load i64, ptr %129, align 8
  %131 = add i64 %130, %128
  store i64 %131, ptr %129, align 8
  %132 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %132, align 4
  %133 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %133, align 1
  %134 = load i64, ptr %129, align 8
  %135 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %134, ptr %135, align 1
  br label %139

136:                                              ; preds = %93
  %137 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %137, align 4
  %138 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %138, align 1
  br label %139

139:                                              ; preds = %136, %126, %120, %101, %59, %55, %26, %11, %2
  %140 = phi i32 [ 0, %136 ], [ %9, %2 ], [ %14, %11 ], [ 0, %126 ], [ %103, %101 ], [ %123, %120 ], [ %29, %26 ], [ %66, %59 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog2(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_init_c(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 133, i32 noundef 7) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_sleep_c(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %3, i32 0, i32 13
  store i32 0, ptr %4, align 4
  %5 = tail call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %3, ptr noundef nonnull @cxd2820r_sleep_c.tab, i32 noundef 5) #5
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2820r_get_tune_settings_c(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  store i32 500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!10 = !{i64 1127567, i64 1127594}
!11 = !{i64 1128077, i64 1128104, i64 1128138, i64 1128159}
!12 = !{i64 1128262, i64 1128289, i64 1128322, i64 1128343, i64 1128370, i64 1128396}
