.class public Lcom/applifier/impact/android/view/ApplifierImpactMainView;
.super Landroid/widget/RelativeLayout;
.source "ApplifierImpactMainView.java"

# interfaces
.implements Lcom/applifier/impact/android/webapp/IApplifierImpactWebViewListener;
.implements Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;,
        Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState:[I = null

.field private static final FILL_PARENT:I = -0x1


# instance fields
.field private _currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

.field private _listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

.field public videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

.field public webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->values()[Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    .line 46
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

    .line 47
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 59
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->init()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    .line 46
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

    .line 47
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 64
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    .line 46
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

    .line 47
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 70
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 43
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    .line 46
    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

    .line 47
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 52
    iput-object p2, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

    .line 53
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->init()V

    .line 54
    return-void
.end method

.method private createVideoPlayerView()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 174
    new-instance v0, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;-><init>(Landroid/content/Context;Lcom/applifier/impact/android/video/IApplifierImpactVideoPlayerListener;)V

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 175
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setId(I)V

    .line 177
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->addView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method private createWebView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 181
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;

    sget-object v3, Lcom/applifier/impact/android/ApplifierImpact;->instance:Lcom/applifier/impact/android/ApplifierImpact;

    invoke-direct {v2, v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;-><init>(Lcom/applifier/impact/android/webapp/IApplifierImpactWebBridgeListener;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;-><init>(Landroid/app/Activity;Lcom/applifier/impact/android/webapp/IApplifierImpactWebViewListener;Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;)V

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    .line 182
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->setId(I)V

    .line 183
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method private destroyVideoPlayerView()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "Destroying player"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->clearVideoPlayer()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->removeFromMainView(Landroid/view/View;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 171
    return-void
.end method

.method private focusToView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, 0x1

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 203
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 158
    const-string v0, "Init"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->setId(I)V

    .line 160
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->createWebView()V

    .line 161
    return-void
.end method

.method private removeFromMainView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 189
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private sendActionToListener(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_listener:Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;

    invoke-interface {v0, p1}, Lcom/applifier/impact/android/view/IApplifierImpactMainViewListener;->onMainViewAction(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public afterVideoPlaybackOperations()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->destroyVideoPlayerView()V

    .line 135
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->setViewState(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V

    .line 136
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 137
    return-void
.end method

.method public closeImpact(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 96
    .local v0, vg:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    .end local v0           #vg:Landroid/view/ViewGroup;
    :cond_0
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->destroyVideoPlayerView()V

    .line 101
    const/4 v1, 0x0

    sput-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 102
    return-void
.end method

.method public getViewState()Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 152
    invoke-direct {p0, p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public onBackButtonClicked(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Seconds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v1}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    :cond_0
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->isViewed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    if-ne v0, v1, :cond_3

    .line 224
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v0}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getSecondsUntilBackButtonAllowed()I

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->VideoPlayer:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->disableBackButtonForSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 226
    :cond_3
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->BackButtonPressed:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->sendActionToListener(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_4
    const-string v0, "Prevented back-button"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    .line 281
    const-string v2, "onCompletion"

    invoke-static {v2, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->afterVideoPlaybackOperations()V

    .line 283
    sget-object v2, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;->End:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;

    invoke-virtual {p0, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V

    .line 285
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 288
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "campaignId"

    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v3}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    iget-object v2, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v3, "videoCompleted"

    invoke-virtual {v2, v3, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 295
    sget-object v2, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoEnd:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->sendActionToListener(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 296
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Could not create JSON"

    invoke-static {v2, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onEventPositionReached(Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 275
    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignStatus()Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    move-result-object v0

    sget-object v1, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    sget-object v1, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v0, v1, p1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->sendCampaignViewProgress(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Lcom/applifier/impact/android/webapp/ApplifierImpactWebData$ApplifierVideoPosition;)Z

    .line 277
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    invoke-virtual {p0, p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->onBackButtonClicked(Landroid/view/View;)V

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoHidden()V
    .locals 6

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 353
    .restart local v2       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-eqz v3, :cond_0

    .line 354
    const-string v3, "bufferingDuration"

    iget-object v4, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v4}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getBufferingDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_0
    const-string v3, "eventValue"

    const-string v4, "hidden"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v3, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoAbort(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 359
    iget-object v3, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-eqz v3, :cond_1

    .line 360
    iget-object v3, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->setKeepScreenOn(Z)V

    .line 361
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    .line 364
    :cond_1
    sget-object v3, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {p0, v3}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->setViewState(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V

    .line 365
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 367
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 369
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "campaignId"

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    iget-object v3, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v4, "videoCompleted"

    invoke-virtual {v3, v4, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 376
    sget-object v3, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoSkipped:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v3}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->sendActionToListener(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 377
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Could not create JSON"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoPlaybackError()V
    .locals 7

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->afterVideoPlaybackOperations()V

    .line 301
    const-string v4, "onVideoPlaybackError"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    sget-object v4, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    const-string v5, "videoError"

    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4, v5, v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->sendAnalyticsRequest(Ljava/lang/String;Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;)V

    .line 304
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .local v1, errorParams:Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .local v3, spinnerParams:Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 309
    .local v2, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "textKey"

    const-string v5, "videoPlaybackError"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v4, "textKey"

    const-string v5, "buffering"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v4, "campaignId"

    sget-object v5, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v5}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    iget-object v4, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v5, "completed"

    invoke-virtual {v4, v5, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 319
    iget-object v4, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v5, "showError"

    invoke-virtual {v4, v5, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 320
    iget-object v4, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v5, "videoCompleted"

    invoke-virtual {v4, v5, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 321
    iget-object v4, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v5, "hideSpinner"

    invoke-virtual {v4, v5, v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 323
    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    sget-object v5, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;->VIEWED:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;

    invoke-virtual {v4, v5}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->setCampaignStatus(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign$ApplifierImpactCampaignStatus;)V

    .line 324
    const/4 v4, 0x0

    sput-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    .line 325
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Could not create JSON"

    invoke-static {v4, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoPlaybackStarted()V
    .locals 7

    .prologue
    .line 236
    const-string v5, "onVideoPlaybackStarted"

    invoke-static {v5, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 239
    .local v2, params:Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 242
    .local v3, spinnerParams:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "campaignId"

    sget-object v6, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v6}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v5, "textKey"

    const-string v6, "buffering"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    sget-object v5, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoStart:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v5}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->sendActionToListener(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 250
    iget-object v5, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {p0, v5}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->bringChildToFront(Landroid/view/View;)V

    .line 253
    const/4 v4, 0x6

    .line 255
    .local v4, targetOrientation:I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-ge v5, v6, :cond_0

    .line 256
    const/4 v4, 0x0

    .line 258
    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getZoneManager()Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applifier/impact/android/zone/ApplifierImpactZoneManager;->getCurrentZone()Lcom/applifier/impact/android/zone/ApplifierImpactZone;

    move-result-object v0

    .line 259
    .local v0, currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    invoke-virtual {v0}, Lcom/applifier/impact/android/zone/ApplifierImpactZone;->useDeviceOrientationForVideo()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 263
    const/4 v4, -0x1

    .line 266
    :cond_1
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 268
    iget-object v5, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-direct {p0, v5}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    .line 269
    iget-object v5, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v6, "hideSpinner"

    invoke-virtual {v5, v6, v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 270
    iget-object v5, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v6, "completed"

    invoke-virtual {v5, v6, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 271
    return-void

    .line 245
    .end local v0           #currentZone:Lcom/applifier/impact/android/zone/ApplifierImpactZone;
    .end local v4           #targetOrientation:I
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Could not create JSON"

    invoke-static {v5, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoSkip()V
    .locals 6

    .prologue
    .line 328
    const/4 v2, 0x0

    .line 329
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 330
    .restart local v2       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "bufferingDuration"

    iget-object v4, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    invoke-virtual {v4}, Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;->getBufferingDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v3, "eventValue"

    const-string v4, "skip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v3, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-static {v3, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactInstrumentation;->gaInstrumentationVideoAbort(Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;Ljava/util/Map;)V

    .line 334
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->afterVideoPlaybackOperations()V

    .line 335
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 338
    .local v1, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "campaignId"

    sget-object v4, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->SELECTED_CAMPAIGN:Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;

    invoke-virtual {v4}, Lcom/applifier/impact/android/campaign/ApplifierImpactCampaign;->getCampaignId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    iget-object v3, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    const-string v4, "videoCompleted"

    invoke-virtual {v3, v4, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->sendNativeEventToWebApp(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 345
    sget-object v3, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;->VideoSkipped:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;

    invoke-direct {p0, v3}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->sendActionToListener(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewAction;)V

    .line 346
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Could not create JSON"

    invoke-static {v3, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onWebAppLoaded()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    sget-object v1, Lcom/applifier/impact/android/ApplifierImpact;->webdata:Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebData;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->initWebApp(Lorg/json/JSONObject;)V

    .line 383
    return-void
.end method

.method public openImpact(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "view"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 77
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.applifier.impact.android.view.ApplifierImpactFullscreenActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {v0, p1, p2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;->setWebViewCurrentView(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 80
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Lcom/applifier/impact/android/properties/ApplifierImpactProperties;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_1
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->WebView:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->setViewState(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_2
    const-string v0, "Cannot open, wrong activity"

    invoke-static {v0, p0}, Lcom/applifier/impact/android/ApplifierImpactUtils;->Log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setViewState(Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, -0x1

    .line 105
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    invoke-virtual {v0, p1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iput-object p1, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->_currentState:Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;

    .line 108
    invoke-static {}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewState()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView$ApplifierImpactMainViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->removeFromMainView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->videoplayerview:Lcom/applifier/impact/android/video/ApplifierImpactVideoPlayView;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->createVideoPlayerView()V

    .line 117
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->bringChildToFront(Landroid/view/View;)V

    .line 118
    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->webview:Lcom/applifier/impact/android/webapp/ApplifierImpactWebView;

    invoke-direct {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMainView;->focusToView(Landroid/view/View;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
