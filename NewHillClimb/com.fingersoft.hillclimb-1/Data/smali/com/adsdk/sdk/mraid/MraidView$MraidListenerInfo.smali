.class Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;
.super Ljava/lang/Object;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MraidListenerInfo"
.end annotation


# instance fields
.field private mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

.field private mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

.field private mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

.field private mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

.field private mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

.field private mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    return-void
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    return-void
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    return-void
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    return-void
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    return-object v0
.end method
