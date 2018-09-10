source_filename = "test"
target datalayout = "e-p:32:32:32-f80:32:32"

%_IO_FILE = type { i32 }
%timeval = type { i32, i32 }
%timezone = type { i32, i32 }

@a2 = internal unnamed_addr global i32 0
@a3 = internal unnamed_addr global i32 0
@fp = internal unnamed_addr global i32 0
@ra = internal unnamed_addr global i32 0
@f20 = internal unnamed_addr global float 0.000000e+00
@f21 = internal unnamed_addr global float 0.000000e+00
@fd0 = internal unnamed_addr global double 0.000000e+00
@fd12 = internal unnamed_addr global double 0.000000e+00
@fd14 = internal unnamed_addr global double 0.000000e+00
@global_var_4013ac.44 = constant i32 0
@global_var_401328.45 = constant [21 x i8] c"no!!! guess it!!!!!!\00"
@global_var_401340.46 = constant [25 x i8] c"\0A\0A%.0lf sec, %.0lf usec\0A\00"
@global_var_40135c.49 = constant [8 x i8] c"... go!\00"
@global_var_4013d0.51 = constant [7 x i8] c" %c%*c\00"
@0 = external global i32
@global_var_4114a4.25 = local_unnamed_addr global %_IO_FILE* null
@global_var_4114a0.26 = local_unnamed_addr global %_IO_FILE* null

define i32 @function_400a00() local_unnamed_addr {
dec_label_pc_400a00:
  %v3_400a14 = load %_IO_FILE*, %_IO_FILE** @global_var_4114a4.25, align 4
  %v11_400a2c = call i32 @setvbuf(%_IO_FILE* %v3_400a14, i8* null, i32 2, i32 0)
  %v3_400a34 = load %_IO_FILE*, %_IO_FILE** @global_var_4114a0.26, align 4
  %v9_400a4c = call i32 @setvbuf(%_IO_FILE* %v3_400a34, i8* null, i32 2, i32 0)
  %v5_400a60 = call void (i32)* @signal(i32 14, void (i32)* inttoptr (i32 4196832 to void (i32)*))
  %v2_400a6c = call i32 @alarm(i32 30)
  ret i32 %v2_400a6c

; uselistorder directives
  uselistorder i32 (%_IO_FILE*, i8*, i32, i32)* @setvbuf, { 1, 0 }
}

define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_400ac0:
  %fp.global-to-local = alloca i32, align 4
  %tmp147 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-16 = alloca i32, align 4
  %stack_var_-40 = alloca i32, align 4
  %v2_400ac0 = ptrtoint i32* %stack_var_-40 to i32
  %v0_400ac8 = load i32, i32* %fp.global-to-local, align 4
  store i32 %v2_400ac0, i32* @fp, align 4
  %v1_400ad4 = call i32 @function_400a00()
  %tmp152 = bitcast i32* %stack_var_-16 to %timeval*
  br label %dec_label_pc_400ad8

dec_label_pc_400ad8:                              ; preds = %dec_label_pc_400ad8, %dec_label_pc_400ac0
  %v7_400ae8 = call i32 @gettimeofday(%timeval* %tmp152, %timezone* null)
  call void @srand(i32 %tmp147)
  %v1_400b00 = call i32 @function_400c30()
  %v1_400b08 = call i32 @function_40111c()
  %v2_400b14 = icmp eq i32 %v1_400b08, 1
  br i1 %v2_400b14, label %dec_label_pc_400ad8, label %dec_label_pc_400b1c

dec_label_pc_400b1c:                              ; preds = %dec_label_pc_400ad8
  store i32 %v0_400ac8, i32* %fp.global-to-local, align 4
  ret i32 0

; uselistorder directives
  uselistorder i32* %fp.global-to-local, { 1, 0 }
}

define i32 @function_400b38(i32* %arg1, i32 %arg2) local_unnamed_addr {
dec_label_pc_400b38:
  %a0.global-to-local = alloca i32, align 4
  %a1.global-to-local = alloca i32, align 4
  %v0.global-to-local = alloca i32, align 4
  store i32 %arg2, i32* %a1.global-to-local, align 4
  %tmp13 = ptrtoint i32* %arg1 to i32
  store i32 %tmp13, i32* %a0.global-to-local, align 4
  %stack_var_-12 = alloca i8, align 1
  %stack_var_-40 = alloca i32, align 4
  %v2_400b38 = ptrtoint i32* %stack_var_-40 to i32
  %v0_400b3c = load i32, i32* @ra, align 4
  %v0_400b40 = load i32, i32* @fp, align 4
  store i32 %v2_400b38, i32* @fp, align 4
  %v0_400b48 = load i32, i32* %a0.global-to-local, align 4
  %v0_400b4c = load i32, i32* %a1.global-to-local, align 4
  store i32 %v0_400b4c, i32* %v0.global-to-local, align 4
  store i32 0, i32* %a1.global-to-local, align 4
  store i32 %v0_400b4c, i32* @a2, align 4
  %v4_400b6c = inttoptr i32 %v0_400b48 to i32*
  %v5_400b6c = call i32* @memset(i32* %v4_400b6c, i32 0, i32 %v0_400b4c)
  %v1_400be8 = add i32 %v0_400b4c, -1
  %v2_400bec3 = icmp ne i32 %v1_400be8, 0
  %v3_400bec4 = zext i1 %v2_400bec3 to i32
  store i32 %v3_400bec4, i32* %v0.global-to-local, align 4
  br i1 %v2_400bec3, label %dec_label_pc_400b80.lr.ph, label %dec_label_pc_400c04

dec_label_pc_400b80.lr.ph:                        ; preds = %dec_label_pc_400b38
  %v2_400b84 = ptrtoint i8* %stack_var_-12 to i32
  %v4_400b98 = bitcast i8* %stack_var_-12 to i32*
  br label %dec_label_pc_400b80

dec_label_pc_400b80:                              ; preds = %dec_label_pc_400b80.lr.ph, %dec_label_pc_400bc0
  %storemerge5 = phi i32 [ 0, %dec_label_pc_400b80.lr.ph ], [ %v1_400bd8, %dec_label_pc_400bc0 ]
  store i8 0, i8* %stack_var_-12, align 1
  store i32 %v2_400b84, i32* %v0.global-to-local, align 4
  store i32 0, i32* %a0.global-to-local, align 4
  store i32 %v2_400b84, i32* %a1.global-to-local, align 4
  store i32 1, i32* @a2, align 4
  %v5_400b98 = call i32 @read(i32 0, i32* %v4_400b98, i32 1)
  store i32 %v5_400b98, i32* %v0.global-to-local, align 4
  %v1_400b9c = icmp sgt i32 %v5_400b98, -1
  br i1 %v1_400b9c, label %dec_label_pc_400bb0, label %dec_label_pc_400ba4

dec_label_pc_400ba4:                              ; preds = %dec_label_pc_400b80
  store i32 0, i32* %a0.global-to-local, align 4
  call void @exit(i32 0)
  unreachable

dec_label_pc_400bb0:                              ; preds = %dec_label_pc_400b80
  %v3_400bb0 = load i8, i8* %stack_var_-12, align 1
  store i32 10, i32* %v0.global-to-local, align 4
  %v2_400bb8 = icmp eq i8 %v3_400bb0, 10
  br i1 %v2_400bb8, label %dec_label_pc_400c04, label %dec_label_pc_400bc0

dec_label_pc_400bc0:                              ; preds = %dec_label_pc_400bb0
  %v2_400bc8 = add i32 %storemerge5, %v0_400b48
  %v3_400bd0 = inttoptr i32 %v2_400bc8 to i8*
  store i8 %v3_400bb0, i8* %v3_400bd0, align 1
  %v1_400bd8 = add nuw i32 %storemerge5, 1
  %v2_400bec = icmp ult i32 %v1_400bd8, %v1_400be8
  %v3_400bec = zext i1 %v2_400bec to i32
  store i32 %v3_400bec, i32* %v0.global-to-local, align 4
  br i1 %v2_400bec, label %dec_label_pc_400b80, label %dec_label_pc_400c04

dec_label_pc_400c04:                              ; preds = %dec_label_pc_400bc0, %dec_label_pc_400bb0, %dec_label_pc_400b38
  %v2_400c10 = add i32 %v1_400be8, %v0_400b48
  store i32 %v2_400c10, i32* %v0.global-to-local, align 4
  %v1_400c14 = inttoptr i32 %v2_400c10 to i8*
  store i8 0, i8* %v1_400c14, align 1
  store i32 %v0_400b3c, i32* @ra, align 4
  store i32 %v0_400b40, i32* @fp, align 4
  %v1_400c2c = load i32, i32* %v0.global-to-local, align 4
  ret i32 %v1_400c2c

; uselistorder directives
  uselistorder i32 %storemerge5, { 1, 0 }
  uselistorder i1 %v2_400bec3, { 1, 0 }
  uselistorder i32 %v1_400be8, { 0, 2, 1 }
  uselistorder i8* %stack_var_-12, { 1, 3, 0, 2 }
  uselistorder i32* %v0.global-to-local, { 1, 2, 6, 3, 4, 5, 0, 7 }
  uselistorder i32* %a1.global-to-local, { 2, 3, 0, 1 }
  uselistorder i32* %a0.global-to-local, { 2, 3, 0, 1 }
  uselistorder i8 0, { 1, 0 }
  uselistorder label %dec_label_pc_400b80, { 1, 0 }
}

define i32 @function_400c30() local_unnamed_addr {
dec_label_pc_400dc0.lr.ph:
  %s0.global-to-local = alloca i32, align 4
  %stack_var_-48 = alloca i32, align 4
  %tmp59 = call i32 @__decompiler_undefined_function_0()
  %tmp60 = call i32 @__decompiler_undefined_function_0()
  %stack_var_-56 = alloca i32, align 4
  %stack_var_-168 = alloca i32, align 4
  %stack_var_-64 = alloca i32, align 4
  %stack_var_-100 = alloca i32, align 4
  %stack_var_-156 = alloca i8*, align 4
  %stack_var_-184 = alloca i32, align 4
  %stack_var_-216 = alloca i32, align 4
  %v2_400c30 = ptrtoint i32* %stack_var_-216 to i32
  %v0_400c38 = load i32, i32* @fp, align 4
  store i32 %v2_400c30, i32* @fp, align 4
  store i32 8, i32* %stack_var_-184, align 4
  store i8* inttoptr (i32 25943 to i8*), i8** %stack_var_-156, align 4
  %v6_400da0 = call i32* @memcpy(i32* nonnull %stack_var_-100, i32* nonnull @global_var_4013ac.44, i32 36)
  %tmp106 = bitcast i32* %stack_var_-64 to %timeval*
  %v7_400db4 = call i32 @gettimeofday(%timeval* %tmp106, %timezone* null)
  %v2_400dd8 = ptrtoint i32* %stack_var_-184 to i32
  br label %dec_label_pc_400dc0

dec_label_pc_400dc0:                              ; preds = %dec_label_pc_400dc0.lr.ph, %dec_label_pc_400dc0
  %v3_400dc0 = phi i32 [ 8, %dec_label_pc_400dc0.lr.ph ], [ %v1_400e2c, %dec_label_pc_400dc0 ]
  %v2_400dc8 = call i32 @function_401020(i32 %v3_400dc0)
  %v3_400dd0 = load i32, i32* %stack_var_-184, align 4
  %v1_400dd4 = mul i32 %v3_400dd0, 4
  %v2_400ddc = add i32 %v1_400dd4, %v2_400dd8
  %v1_400de0 = add i32 %v2_400ddc, 84
  %v2_400de0 = inttoptr i32 %v1_400de0 to i32*
  %v3_400de0 = load i32, i32* %v2_400de0, align 4
  %v1_400dec = mul i32 %v2_400dc8, 4
  %v2_400df4 = add i32 %v1_400dec, %v2_400dd8
  %v1_400df8 = add i32 %v2_400df4, 84
  %v2_400df8 = inttoptr i32 %v1_400df8 to i32*
  %v3_400df8 = load i32, i32* %v2_400df8, align 4
  store i32 %v3_400df8, i32* %v2_400de0, align 4
  store i32 %v3_400de0, i32* %v2_400df8, align 4
  %v3_400e28 = load i32, i32* %stack_var_-184, align 4
  %v1_400e2c = add i32 %v3_400e28, -1
  store i32 %v1_400e2c, i32* %stack_var_-184, align 4
  %v1_400e38 = icmp sgt i32 %v1_400e2c, 0
  br i1 %v1_400e38, label %dec_label_pc_400dc0, label %dec_label_pc_400f04.preheader

dec_label_pc_400f04.preheader:                    ; preds = %dec_label_pc_400dc0
  %v2_400e80 = ptrtoint i8** %stack_var_-156 to i32
  %tmp107 = bitcast i32* %stack_var_-168 to i8*
  br label %dec_label_pc_400e4c.preheader

dec_label_pc_400e4c:                              ; preds = %dec_label_pc_400e4c.preheader, %dec_label_pc_400eb4
  %v4_400e5c = call i32 @function_400b38(i32* nonnull %stack_var_-168, i32 9)
  %v3_400e70 = load i32, i32* %v2_400e70, align 4
  %v2_400e7c = mul i32 %v3_400e70, 6
  %v2_400e84 = add i32 %v2_400e7c, %v2_400e80
  %v1_400e90 = inttoptr i32 %v2_400e84 to i8*
  %v7_400e98 = call i32 @strcmp(i8* %tmp107, i8* %v1_400e90)
  %v1_400e9c = icmp eq i32 %v7_400e98, 0
  br i1 %v1_400e9c, label %dec_label_pc_400eb4, label %dec_label_pc_400ea4

dec_label_pc_400ea4:                              ; preds = %dec_label_pc_400e4c
  %v4_400eb0 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @global_var_401328.45, i32 0, i32 0))
  br label %dec_label_pc_400eb4

dec_label_pc_400eb4:                              ; preds = %dec_label_pc_400ea4, %dec_label_pc_400e4c
  %v3_400ec4 = load i32, i32* %v2_400e70, align 4
  %v2_400ed0 = mul i32 %v3_400ec4, 6
  %v2_400ed8 = add i32 %v2_400ed0, %v2_400e80
  %v1_400ee4 = inttoptr i32 %v2_400ed8 to i8*
  %v7_400eec = call i32 @strcmp(i8* %tmp107, i8* %v1_400ee4)
  %v1_400ef0 = icmp eq i32 %v7_400eec, 0
  br i1 %v1_400ef0, label %dec_label_pc_400ef8, label %dec_label_pc_400e4c

dec_label_pc_400ef8:                              ; preds = %dec_label_pc_400eb4
  %v1_400efc = add nuw nsw i32 %storemerge9, 1
  %v1_400f08 = icmp slt i32 %v1_400efc, 9
  br i1 %v1_400f08, label %dec_label_pc_400e4c.preheader, label %dec_label_pc_400f14

dec_label_pc_400e4c.preheader:                    ; preds = %dec_label_pc_400f04.preheader, %dec_label_pc_400ef8
  %storemerge9 = phi i32 [ 0, %dec_label_pc_400f04.preheader ], [ %v1_400efc, %dec_label_pc_400ef8 ]
  %v1_400e64 = mul i32 %storemerge9, 4
  %v2_400e6c = add i32 %v1_400e64, %v2_400dd8
  %v1_400e70 = add i32 %v2_400e6c, 84
  %v2_400e70 = inttoptr i32 %v1_400e70 to i32*
  br label %dec_label_pc_400e4c

dec_label_pc_400f14:                              ; preds = %dec_label_pc_400ef8
  %tmp108 = bitcast i32* %stack_var_-56 to %timeval*
  %v7_400f24 = call i32 @gettimeofday(%timeval* %tmp108, %timezone* null)
  store i32 ptrtoint ([25 x i8]* @global_var_401340.46 to i32), i32* %s0.global-to-local, align 4
  %v3_400f30 = load i32, i32* %stack_var_-64, align 4
  %v3_400f38 = load i32, i32* %stack_var_-56, align 4
  %v5_400f44 = bitcast i32 %v3_400f30 to float
  %v6_400f44 = call i32 @function_401070(float %v5_400f44, i32 %tmp60, i32 %v3_400f38, i32 %tmp59)
  %v3_400f58 = load i32, i32* %stack_var_-64, align 4
  %v3_400f60 = load i32, i32* %stack_var_-56, align 4
  %v5_400f6c = bitcast i32 %v3_400f58 to float
  %v6_400f6c = call i32 @function_401070(float %v5_400f6c, i32 %tmp60, i32 %v3_400f60, i32 %tmp59)
  %v0_400f74 = load i32, i32* %s0.global-to-local, align 4
  %v1_400f74 = inttoptr i32 %v0_400f74 to i8*
  %v4_400f84 = load double, double* @fd12, align 8
  %v5_400f84 = load double, double* @fd14, align 8
  %v6_400f84 = call i32 (i8*, ...) @printf(i8* %v1_400f74, double %v4_400f84, double %v5_400f84)
  %v3_400f88 = load i32, i32* %stack_var_-64, align 4
  %v3_400f90 = load i32, i32* %stack_var_-56, align 4
  %v5_400f9c = bitcast i32 %v3_400f88 to float
  %v6_400f9c = call i32 @function_401070(float %v5_400f9c, i32 %tmp60, i32 %v3_400f90, i32 %tmp59)
  %v0_400fa0 = load double, double* @fd0, align 8
  %v2_400fac = fmul double %v0_400fa0, 0x8DEDB5A0F7C6B03E
  %v2_400fbc = fcmp olt double %v2_400fac, 1.043467e-320
  br i1 %v2_400fbc, label %dec_label_pc_400fdc, label %dec_label_pc_401000

dec_label_pc_400fdc:                              ; preds = %dec_label_pc_400f14
  %v4_400fe8 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_40135c.49, i32 0, i32 0))
  %v4_400ffc = call i32 @function_400b38(i32* nonnull %stack_var_-48, i32 1024)
  br label %dec_label_pc_401000

dec_label_pc_401000:                              ; preds = %dec_label_pc_400f14, %dec_label_pc_400fdc
  %storemerge = phi i32 [ %v4_400ffc, %dec_label_pc_400fdc ], [ 0, %dec_label_pc_400f14 ]
  store i32 %v0_400c38, i32* @fp, align 4
  ret i32 %storemerge

; uselistorder directives
  uselistorder i32* %v2_400e70, { 1, 0 }
  uselistorder i32 %v1_400efc, { 1, 0 }
  uselistorder i32 %v1_400e2c, { 1, 2, 0 }
  uselistorder i32* %stack_var_-184, { 0, 1, 3, 2, 4 }
  uselistorder i8** %stack_var_-156, { 1, 0 }
  uselistorder i32* %stack_var_-64, { 1, 2, 3, 0 }
  uselistorder i32* %stack_var_-56, { 1, 2, 3, 0 }
  uselistorder i32 %tmp59, { 2, 1, 0 }
  uselistorder i32 (i8*)* @puts, { 1, 0 }
  uselistorder i32 (i8*, i8*)* @strcmp, { 1, 0 }
  uselistorder i32 9, { 1, 0 }
  uselistorder i32 -1, { 2, 0, 1 }
  uselistorder i32 (%timeval*, %timezone*)* @gettimeofday, { 1, 2, 0 }
  uselistorder i32* @fp, { 3, 4, 5, 0, 1, 2, 6 }
  uselistorder label %dec_label_pc_401000, { 1, 0 }
  uselistorder label %dec_label_pc_400e4c.preheader, { 1, 0 }
  uselistorder label %dec_label_pc_400dc0, { 1, 0 }
}

define i32 @function_401020(i32 %arg1) local_unnamed_addr {
dec_label_pc_401020:
  %v1_401038 = call i32 @rand()
  %v3_401044 = srem i32 %v1_401038, %arg1
  ret i32 %v3_401044
}

define i32 @function_401070(float %arg1, i32 %arg2, i32 %arg3, i32 %arg4) local_unnamed_addr {
dec_label_pc_401070:
  %a0.global-to-local = alloca i32, align 4
  %a1.global-to-local = alloca i32, align 4
  store i32 %arg4, i32* @a3, align 4
  store i32 %arg3, i32* @a2, align 4
  store i32 %arg2, i32* %a1.global-to-local, align 4
  %tmp = bitcast float %arg1 to i32
  store i32 %tmp, i32* %a0.global-to-local, align 4
  %v0_40107c = load i32, i32* %a0.global-to-local, align 4
  %v4_40107c = bitcast i32 %v0_40107c to float
  %v0_401080 = load i32, i32* %a1.global-to-local, align 4
  %v4_401080 = bitcast i32 %v0_401080 to float
  %v0_401084 = load i32, i32* @a2, align 4
  %v4_401084 = bitcast i32 %v0_401084 to float
  %v0_401088 = load i32, i32* @a3, align 4
  %v4_401088 = bitcast i32 %v0_401088 to float
  %v1_401098 = fpext float %v4_40107c to double
  %v2_4010a4 = fmul double %v1_401098, 0x80842E41
  %v1_4010b4 = fpext float %v4_401080 to double
  %v2_4010b8 = fadd double %v2_4010a4, %v1_4010b4
  %v1_4010cc = fpext float %v4_401084 to double
  %v2_4010d8 = fmul double %v1_4010cc, 0x80842E41
  %v1_4010e8 = fpext float %v4_401088 to double
  %v2_4010ec = fadd double %v2_4010d8, %v1_4010e8
  %v2_4010fc = fsub double %v2_4010ec, %v2_4010b8
  store double %v2_4010fc, double* @fd0, align 8
  ret i32 %v0_401088
}

define i32 @function_40111c() local_unnamed_addr {
dec_label_pc_40111c:
  %stack_var_-16 = alloca i32, align 4
  %v7_401144 = load i32, i32* @a2, align 4
  %v8_401144 = inttoptr i32 %v7_401144 to i32*
  %v9_401144 = load i32, i32* @a3, align 4
  %v10_401144 = inttoptr i32 %v9_401144 to i8*
  %v11_401144 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @global_var_4013d0.51, i32 0, i32 0), i32* nonnull %stack_var_-16, i32* %v8_401144, i8* %v10_401144)
  %v3_401148 = load i32, i32* %stack_var_-16, align 4
  %v2_401150 = icmp eq i32 %v3_401148, 121
  br i1 %v2_401150, label %dec_label_pc_401178, label %dec_label_pc_401158

dec_label_pc_401158:                              ; preds = %dec_label_pc_40111c
  %v2_401160 = icmp eq i32 %v3_401148, 89
  %. = zext i1 %v2_401160 to i32
  br label %dec_label_pc_401178

dec_label_pc_401178:                              ; preds = %dec_label_pc_401158, %dec_label_pc_40111c
  %storemerge = phi i32 [ 1, %dec_label_pc_40111c ], [ %., %dec_label_pc_401158 ]
  ret i32 %storemerge

; uselistorder directives
  uselistorder i32* %stack_var_-16, { 1, 0 }
  uselistorder i32* @a3, { 0, 2, 1 }
  uselistorder i32 0, { 5, 6, 1, 9, 10, 3, 20, 7, 8, 21, 22, 12, 17, 11, 18, 4, 2, 13, 19, 0, 14, 15, 16, 23, 24, 25, 26 }
  uselistorder i32* @a2, { 0, 2, 1, 3, 4 }
  uselistorder i32 1, { 7, 11, 0, 1, 25, 18, 17, 10, 16, 15, 14, 13, 12, 6, 23, 8, 24, 20, 19, 4, 3, 2, 9, 22, 21, 5 }
}

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare i32 @read(i32, i32*, i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i32* @memcpy(i32*, i32*, i32) local_unnamed_addr

declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr

declare i32 @gettimeofday(%timeval*, %timezone*) local_unnamed_addr

declare i32 @alarm(i32) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare void @srand(i32) local_unnamed_addr

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32) local_unnamed_addr

declare i32* @memset(i32*, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare i32 @__decompiler_undefined_function_0() local_unnamed_addr
