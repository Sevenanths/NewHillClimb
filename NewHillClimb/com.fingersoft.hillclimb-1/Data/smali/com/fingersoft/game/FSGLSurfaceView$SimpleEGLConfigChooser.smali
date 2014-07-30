.class Lcom/fingersoft/game/FSGLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/fingersoft/game/FSGLSurfaceView$ComponentSizeChooser;
.source "FSGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/game/FSGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingersoft/game/FSGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/fingersoft/game/FSGLSurfaceView;Z)V
    .locals 8
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 981
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/fingersoft/game/FSGLSurfaceView;

    .line 982
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/fingersoft/game/FSGLSurfaceView$ComponentSizeChooser;-><init>(Lcom/fingersoft/game/FSGLSurfaceView;IIIIII)V

    .line 983
    return-void

    :cond_0
    move v6, v5

    .line 982
    goto :goto_0
.end method
