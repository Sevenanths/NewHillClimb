.class final enum Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
.super Ljava/lang/Enum;
.source "ApplifierImpactWebBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ApplifierImpactWebEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent:[I

.field public static final enum CloseView:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

.field private static final synthetic ENUM$VALUES:[Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

.field public static final enum InitComplete:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

.field public static final enum NavigateTo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

.field public static final enum PauseVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

.field public static final enum PlayStore:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

.field public static final enum PlayVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;


# direct methods
.method static synthetic $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->values()[Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->CloseView:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->InitComplete:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->NavigateTo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PauseVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayStore:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-virtual {v1}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    const-string v1, "PlayVideo"

    invoke-direct {v0, v1, v3}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    const-string v1, "PauseVideo"

    invoke-direct {v0, v1, v4}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PauseVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    const-string v1, "CloseView"

    invoke-direct {v0, v1, v5}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->CloseView:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    const-string v1, "InitComplete"

    invoke-direct {v0, v1, v6}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->InitComplete:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    const-string v1, "PlayStore"

    invoke-direct {v0, v1, v7}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayStore:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    new-instance v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    const-string v1, "NavigateTo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->NavigateTo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PauseVideo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->CloseView:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->InitComplete:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->PlayStore:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->NavigateTo:Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ENUM$VALUES:[Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    return-object v0
.end method

.method public static values()[Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ENUM$VALUES:[Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, retVal:Ljava/lang/String;
    invoke-static {}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebBridge$ApplifierImpactWebEvent()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/applifier/impact/android/webapp/ApplifierImpactWebBridge$ApplifierImpactWebEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 38
    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    const-string v0, "playVideo"

    .line 21
    goto :goto_0

    .line 23
    :pswitch_1
    const-string v0, "pauseVideo"

    .line 24
    goto :goto_0

    .line 26
    :pswitch_2
    const-string v0, "close"

    .line 27
    goto :goto_0

    .line 29
    :pswitch_3
    const-string v0, "initComplete"

    .line 30
    goto :goto_0

    .line 32
    :pswitch_4
    const-string v0, "appStore"

    .line 33
    goto :goto_0

    .line 35
    :pswitch_5
    const-string v0, "navigateTo"

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
