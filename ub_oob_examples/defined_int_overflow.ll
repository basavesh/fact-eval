; ModuleID = 'Module'
source_filename = "Module"

define internal i32 @addi(i32 %__v3_x, i32 %__v4_y) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = add i32 %__v3_x, %__v4_y
  ret i32 %0
}

define internal i32 @addu(i32 %__v1_x, i32 %__v2_y) {
entry:
  %__rval = alloca i32
  store i32 0, i32* %__rval
  %__rctx = alloca i1
  store i1 true, i1* %__rctx
  %0 = add i32 %__v1_x, %__v2_y
  ret i32 %0
}
