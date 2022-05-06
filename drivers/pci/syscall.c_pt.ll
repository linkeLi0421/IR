; ModuleID = '/llk/IR/drivers/pci/syscall.c_pt.bc'
source_filename = "../drivers/pci/syscall.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@sys_pciconfig_read = dso_local alias i32 (i32, i32, i32, i32, ptr), ptr @__se_sys_pciconfig_read
@sys_pciconfig_write = dso_local alias i32 (i32, i32, i32, i32, ptr), ptr @__se_sys_pciconfig_write

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pciconfig_read(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #4
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  store i32 0, ptr %8, align 4, !annotation !8
  %10 = tail call zeroext i1 @capable(i32 noundef 21) #4
  br i1 %10, label %11, label %51

11:                                               ; preds = %5
  %12 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef %0, i32 noundef %1) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %11
  switch i32 %3, label %51 [
    i32 1, label %15
    i32 2, label %17
    i32 4, label %19
  ]

15:                                               ; preds = %14
  %16 = call i32 @pci_user_read_config_byte(ptr noundef nonnull %12, i32 noundef %2, ptr noundef nonnull %6) #4
  br label %21

17:                                               ; preds = %14
  %18 = call i32 @pci_user_read_config_word(ptr noundef nonnull %12, i32 noundef %2, ptr noundef nonnull %7) #4
  br label %21

19:                                               ; preds = %14
  %20 = call i32 @pci_user_read_config_dword(ptr noundef nonnull %12, i32 noundef %2, ptr noundef nonnull %8) #4
  br label %21

21:                                               ; preds = %19, %17, %15
  %22 = phi i32 [ %20, %19 ], [ %18, %17 ], [ %16, %15 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  switch i32 %3, label %49 [
    i32 1, label %25
    i32 2, label %33
    i32 4, label %41
  ]

25:                                               ; preds = %24
  %26 = load i8, ptr %6, align 1
  %27 = tail call ptr @llvm.thread.pointer() #4
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #5, !srcloc !9
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %32 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i8 %26, i32 -1090519041) #4, !srcloc !12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  br label %49

33:                                               ; preds = %24
  %34 = load i16, ptr %7, align 2
  %35 = tail call ptr @llvm.thread.pointer() #4
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #5, !srcloc !9
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %40 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i16 %34, i32 -1090519041) #4, !srcloc !13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  br label %49

41:                                               ; preds = %24
  %42 = load i32, ptr %8, align 4
  %43 = tail call ptr @llvm.thread.pointer() #4
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #5, !srcloc !9
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %48 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %42, i32 -1090519041) #4, !srcloc !14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  br label %49

49:                                               ; preds = %41, %33, %25, %24
  %50 = phi i32 [ -5, %24 ], [ %48, %41 ], [ %40, %33 ], [ %32, %25 ]
  call void @pci_dev_put(ptr noundef nonnull %12) #4
  br label %76

51:                                               ; preds = %21, %14, %11, %5
  %52 = phi i32 [ -5, %21 ], [ -19, %11 ], [ -1, %5 ], [ -22, %14 ]
  %53 = phi ptr [ %12, %21 ], [ null, %11 ], [ null, %5 ], [ %12, %14 ]
  switch i32 %3, label %75 [
    i32 1, label %54
    i32 2, label %61
    i32 4, label %68
  ]

54:                                               ; preds = %51
  %55 = tail call ptr @llvm.thread.pointer() #4
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %57 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %56) #5, !srcloc !9
  %58 = and i32 %57, -13
  %59 = or i32 %58, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %60 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i8 -1, i32 -1090519041) #4, !srcloc !15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  br label %75

61:                                               ; preds = %51
  %62 = tail call ptr @llvm.thread.pointer() #4
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %64 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %63) #5, !srcloc !9
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %67 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i16 -1, i32 -1090519041) #4, !srcloc !16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  br label %75

68:                                               ; preds = %51
  %69 = tail call ptr @llvm.thread.pointer() #4
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %71 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %70) #5, !srcloc !9
  %72 = and i32 %71, -13
  %73 = or i32 %72, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %74 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 -1, i32 -1090519041) #4, !srcloc !17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #4, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  br label %75

75:                                               ; preds = %68, %61, %54, %51
  call void @pci_dev_put(ptr noundef %53) #4
  br label %76

76:                                               ; preds = %75, %49
  %77 = phi i32 [ %52, %75 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  ret i32 %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pciconfig_write(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %4 to ptr
  %7 = tail call zeroext i1 @capable(i32 noundef 21) #4
  br i1 %7, label %8, label %58

8:                                                ; preds = %5
  %9 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef 0, i32 noundef %0, i32 noundef %1) #4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %8
  switch i32 %3, label %56 [
    i32 1, label %12
    i32 2, label %27
    i32 4, label %42
  ]

12:                                               ; preds = %11
  %13 = tail call ptr @llvm.thread.pointer() #4
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #5, !srcloc !9
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #4, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #4, !srcloc !18
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #4, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %12
  %22 = extractvalue { i32, i32 } %18, 1
  %23 = trunc i32 %22 to i8
  %24 = tail call i32 @pci_user_write_config_byte(ptr noundef nonnull %9, i32 noundef %2, i8 noundef zeroext %23) #4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 -5
  br label %56

27:                                               ; preds = %11
  %28 = tail call ptr @llvm.thread.pointer() #4
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #5, !srcloc !9
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #4, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %33 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #4, !srcloc !19
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #4, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = extractvalue { i32, i32 } %33, 1
  %38 = trunc i32 %37 to i16
  %39 = tail call i32 @pci_user_write_config_word(ptr noundef nonnull %9, i32 noundef %2, i16 noundef zeroext %38) #4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 -5
  br label %56

42:                                               ; preds = %11
  %43 = tail call ptr @llvm.thread.pointer() #4
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %44) #5, !srcloc !9
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #4, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #4, !srcloc !20
  %49 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #4, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #4, !srcloc !11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = extractvalue { i32, i32 } %48, 1
  %53 = tail call i32 @pci_user_write_config_dword(ptr noundef nonnull %9, i32 noundef %2, i32 noundef %52) #4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 0, i32 -5
  br label %56

56:                                               ; preds = %51, %42, %36, %27, %21, %12, %11
  %57 = phi i32 [ %49, %42 ], [ %55, %51 ], [ %34, %27 ], [ %41, %36 ], [ %19, %12 ], [ %26, %21 ], [ -22, %11 ]
  tail call void @pci_dev_put(ptr noundef nonnull %9) #4
  br label %58

58:                                               ; preds = %56, %8, %5
  %59 = phi i32 [ %57, %56 ], [ -1, %5 ], [ -19, %8 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

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
!9 = !{i64 5133630}
!10 = !{i64 5133827}
!11 = !{i64 2152619106}
!12 = !{i64 2154016792, i64 2154017072, i64 2154017406, i64 2154017740}
!13 = !{i64 2154026848, i64 2154027128, i64 2154027462, i64 2154027796}
!14 = !{i64 2154036896, i64 2154037176, i64 2154037510, i64 2154037844}
!15 = !{i64 2154041501, i64 2154041781, i64 2154042115, i64 2154042449}
!16 = !{i64 2154051553, i64 2154051833, i64 2154052167, i64 2154052501}
!17 = !{i64 2154061595, i64 2154061875, i64 2154062209, i64 2154062543}
!18 = !{i64 2154083666, i64 2154083946, i64 2154084280, i64 2154084614}
!19 = !{i64 2154098205, i64 2154098485, i64 2154098819, i64 2154099153}
!20 = !{i64 2154112752, i64 2154113032, i64 2154113366, i64 2154113700}
