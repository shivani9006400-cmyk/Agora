# classes13.dex

.class public Lio/agora/rtc/gl/GlRectDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/gl/GlRectDrawer$Shader;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final OES_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

.field private static final RGB_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

.field private static final VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

.field private static final YUV_FRAGMENT_SHADER_STRING:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"


# instance fields
.field private mPosCoordinate:Ljava/nio/FloatBuffer;

.field private mTexCoordinate:Ljava/nio/FloatBuffer;

.field private final shaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/agora/rtc/gl/GlRectDrawer$Shader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_1a

    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_2e

    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_1a
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_24

    .line 3
    invoke-static {v1}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_38

    .line 5
    invoke-static {v0}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 6
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    return-void

    nop

    :array_24
    .array-data 4
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_38
    .array-data 4
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        -0x40800000  # -1.0f
        -0x40800000  # -1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private ComputePosVertexAttribArray(IIII)[F
    .registers 8

    const/high16 v0, 0x40000000  # 2.0f

    const/high16 v1, -0x40800000  # -1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    if-ne p2, p4, :cond_b

    const/high16 p4, -0x40800000  # -1.0f

    goto :goto_13

    :cond_b
    sub-int p4, p2, p4

    int-to-float p4, p4

    mul-float p4, p4, v0

    int-to-float p2, p2

    div-float/2addr p4, p2

    sub-float/2addr p4, v2

    :goto_13
    if-ne p1, p3, :cond_18

    const/high16 p2, 0x3f800000  # 1.0f

    goto :goto_1e

    :cond_18
    int-to-float p2, p3

    mul-float p2, p2, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    sub-float/2addr p2, v2

    :goto_1e
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 p3, 0x0

    aput v1, p1, p3

    const/4 p3, 0x1

    aput p4, p1, p3

    const/4 p3, 0x2

    aput p2, p1, p3

    const/4 p3, 0x3

    aput p4, p1, p3

    const/4 p3, 0x4

    aput v1, p1, p3

    const/4 p3, 0x5

    aput v2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    const/4 p2, 0x7

    aput v2, p1, p2

    return-object p1
.end method

.method private ComputeVertexAttribArray(IIII)[F
    .registers 21

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v1, p4

    int-to-float v1, v1

    div-float/2addr v0, v1

    move/from16 v1, p1

    int-to-float v1, v1

    move/from16 v2, p2

    int-to-float v2, v2

    div-float v3, v1, v2

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/high16 v13, 0x40000000  # 2.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000  # 1.0f

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_3d

    mul-float v2, v2, v0

    sub-float v0, v1, v2

    div-float/2addr v0, v13

    div-float/2addr v0, v1

    new-array v1, v12, [F

    aput v0, v1, v11

    aput v14, v1, v10

    sub-float v2, v15, v0

    aput v2, v1, v9

    aput v14, v1, v8

    aput v0, v1, v7

    aput v15, v1, v6

    aput v2, v1, v5

    aput v15, v1, v4

    return-object v1

    :cond_3d
    div-float/2addr v1, v0

    sub-float v0, v2, v1

    div-float/2addr v0, v13

    div-float/2addr v0, v2

    new-array v1, v12, [F

    aput v14, v1, v11

    aput v0, v1, v10

    aput v15, v1, v9

    aput v0, v1, v8

    aput v14, v1, v7

    sub-float v0, v15, v0

    aput v0, v1, v6

    aput v15, v1, v5

    aput v0, v1, v4

    return-object v1
.end method

.method private drawRectangle(IIII)V
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string p1, "glDrawArrays"

    .line 2
    invoke-static {p1}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x4

    .line 3
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 4
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    return-void
.end method

.method private prepareShader(Ljava/lang/String;[F)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    goto/16 :goto_9d

    .line 3
    :cond_14
    new-instance v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lio/agora/rtc/gl/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v3, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v3}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    const-string v3, "initShaderUniforms"

    .line 6
    invoke-static {v3}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const-string v3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_53

    .line 8
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v3, "y_tex"

    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 9
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v3, "u_tex"

    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v3, "v_tex"

    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_7a

    :cond_53
    const-string v3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 12
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v3, "rgb_tex"

    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_7a

    :cond_67
    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 14
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v3, "oes_tex"

    invoke-virtual {p1, v3}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_7a
    const-string p1, "Initialize fragment shader uniform values."

    .line 15
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const-string p1, "initVertexShaderAttrs"

    .line 17
    invoke-static {p1}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    .line 18
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    sget-object v3, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    const-string v5, "in_pos"

    invoke-virtual {p1, v5, v4, v3}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 19
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    sget-object v3, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    const-string v5, "in_tc"

    invoke-virtual {p1, v5, v4, v3}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 20
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    move-object p1, v0

    .line 21
    :goto_9d
    iget-object v0, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v0}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 22
    iget p1, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {p1, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    .line 23
    :cond_a8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown fragment shader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .registers 10

    .line 24
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    .line 25
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    goto :goto_6e

    .line 26
    :cond_14
    new-instance v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    invoke-direct {v0, p1}, Lio/agora/rtc/gl/GlRectDrawer$Shader;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v4, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v4}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    const-string v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    if-ne p1, v4, :cond_49

    .line 29
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "y_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 30
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "u_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 31
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "v_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_68

    :cond_49
    const-string v4, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_59

    .line 32
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "rgb_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_68

    :cond_59
    const-string v4, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    if-ne p1, v4, :cond_87

    .line 33
    iget-object p1, v0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "oes_tex"

    invoke-virtual {p1, v4}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_68
    const-string p1, "Initialize fragment shader uniform values."

    .line 34
    invoke-static {p1}, Lio/agora/rtc/gl/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    move-object p1, v0

    .line 35
    :goto_6e
    iget-object v0, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v0}, Lio/agora/rtc/gl/GlShader;->useProgram()V

    .line 36
    iget-object v0, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v4, "in_pos"

    invoke-virtual {v0, v4, v2, p4}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 37
    iget-object p4, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v0, "in_tc"

    invoke-virtual {p4, v0, v2, p3}, Lio/agora/rtc/gl/GlShader;->setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    .line 38
    iget p1, p1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->texMatrixLocation:I

    invoke-static {p1, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void

    .line 39
    :cond_87
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown fragment shader: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public drawOes(I[FIIIIII)V
    .registers 9

    const-string p3, "prepareShader"

    .line 1
    invoke-static {p3}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const-string p3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    .line 2
    invoke-direct {p0, p3, p2}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 3
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const p2, 0x84c0

    .line 4
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 5
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 7
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawOes(I[FIIIIIIII)V
    .registers 11

    .line 8
    invoke-direct {p0, p3, p4, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p3

    .line 9
    invoke-static {p3}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    if-ne p9, p7, :cond_14

    if-eq p10, p8, :cond_f

    goto :goto_14

    .line 10
    :cond_f
    sget-object p3, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    goto :goto_1e

    .line 11
    :cond_14
    :goto_14
    invoke-direct {p0, p7, p8, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputePosVertexAttribArray(IIII)[F

    move-result-object p3

    .line 12
    invoke-static {p3}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 13
    :goto_1e
    iget-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    iget-object p4, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    const-string p9, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-direct {p0, p9, p2, p3, p4}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 14
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 15
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 17
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .registers 9

    const-string p3, "prepareShader"

    .line 1
    invoke-static {p3}, Lio/agora/rtc/internal/ATrace;->beginSection(Ljava/lang/String;)V

    const-string p3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    .line 2
    invoke-direct {p0, p3, p2}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    .line 3
    invoke-static {}, Lio/agora/rtc/internal/ATrace;->endSection()V

    const p2, 0x84c0

    .line 4
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 5
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 7
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIIIII)V
    .registers 11

    .line 8
    invoke-direct {p0, p3, p4, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputeVertexAttribArray(IIII)[F

    move-result-object p3

    if-ne p9, p7, :cond_e

    if-eq p10, p8, :cond_9

    goto :goto_e

    .line 9
    :cond_9
    sget-object p4, Lio/agora/rtc/gl/GlRectDrawer;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object p4, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    goto :goto_18

    .line 10
    :cond_e
    :goto_e
    invoke-direct {p0, p7, p8, p9, p10}, Lio/agora/rtc/gl/GlRectDrawer;->ComputePosVertexAttribArray(IIII)[F

    move-result-object p4

    .line 11
    invoke-static {p4}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p4

    iput-object p4, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    .line 12
    :goto_18
    invoke-static {p3}, Lio/agora/rtc/gl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lio/agora/rtc/gl/GlRectDrawer;->mTexCoordinate:Ljava/nio/FloatBuffer;

    .line 13
    iget-object p4, p0, Lio/agora/rtc/gl/GlRectDrawer;->mPosCoordinate:Ljava/nio/FloatBuffer;

    const-string p9, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    invoke-direct {p0, p9, p2, p3, p4}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const p2, 0x84c0

    .line 14
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 15
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    .line 17
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawYuv([I[FIIIIII)V
    .registers 11

    const-string p3, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    .line 1
    invoke-direct {p0, p3, p2}, Lio/agora/rtc/gl/GlRectDrawer;->prepareShader(Ljava/lang/String;[F)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_7
    const/16 p4, 0xde1

    const v0, 0x84c0

    const/4 v1, 0x3

    if-ge p3, v1, :cond_1b

    add-int/2addr v0, p3

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 3
    aget v0, p1, p3

    invoke-static {p4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 4
    :cond_1b
    invoke-direct {p0, p5, p6, p7, p8}, Lio/agora/rtc/gl/GlRectDrawer;->drawRectangle(IIII)V

    const/4 p1, 0x0

    :goto_1f
    if-ge p1, v1, :cond_2c

    add-int p3, p1, v0

    .line 5
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 6
    invoke-static {p4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_2c
    return-void
.end method

.method public release()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/agora/rtc/gl/GlRectDrawer$Shader;

    .line 2
    iget-object v1, v1, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    invoke-virtual {v1}, Lio/agora/rtc/gl/GlShader;->release()V

    goto :goto_a

    .line 3
    :cond_1c
    iget-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer;->shaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
