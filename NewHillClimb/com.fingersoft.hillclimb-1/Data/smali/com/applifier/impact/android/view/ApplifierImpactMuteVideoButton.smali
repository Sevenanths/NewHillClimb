.class public Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;
.super Landroid/widget/ImageButton;
.source "ApplifierImpactMuteVideoButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;,
        Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState:[I


# instance fields
.field private _size:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

.field private _state:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->values()[Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->Muted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {v1}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState:[I

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
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_state:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    .line 17
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Medium:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_size:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    .line 24
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setupView()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_state:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    .line 17
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Medium:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_size:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    .line 29
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setupView()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->UnMuted:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_state:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    .line 17
    sget-object v0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Medium:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    iput-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_size:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    .line 35
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setupView()V

    .line 36
    return-void
.end method

.method private selectBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/16 v3, 0x78

    .line 46
    const-string v0, ""

    .line 47
    .local v0, bitmapString:Ljava/lang/String;
    iget-object v1, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_size:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_size:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    sget-object v2, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->Medium:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;

    invoke-virtual {v1, v2}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_state:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {v2}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 50
    :pswitch_0
    sget-object v0, Lcom/applifier/impact/android/data/ApplifierImpactGraphicsBundle;->ICON_AUDIO_UNMUTED_50x50:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getScreenDensity()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 52
    sget-object v0, Lcom/applifier/impact/android/data/ApplifierImpactGraphicsBundle;->ICON_AUDIO_UNMUTED_32x32:Ljava/lang/String;

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/applifier/impact/android/data/ApplifierImpactGraphicsBundle;->getBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 56
    :pswitch_1
    sget-object v0, Lcom/applifier/impact/android/data/ApplifierImpactGraphicsBundle;->ICON_AUDIO_MUTED_50x50:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/applifier/impact/android/data/ApplifierImpactDevice;->getScreenDensity()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 58
    sget-object v0, Lcom/applifier/impact/android/data/ApplifierImpactGraphicsBundle;->ICON_AUDIO_MUTED_32x32:Ljava/lang/String;

    .line 61
    :cond_2
    invoke-static {v0}, Lcom/applifier/impact/android/data/ApplifierImpactGraphicsBundle;->getBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupView()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setAdjustViewBounds(Z)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->selectBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setPadding(IIII)V

    .line 74
    return-void
.end method


# virtual methods
.method public setState(Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_state:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    invoke-virtual {p1, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->_state:Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;

    .line 41
    invoke-direct {p0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->selectBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applifier/impact/android/view/ApplifierImpactMuteVideoButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    :cond_0
    return-void
.end method
