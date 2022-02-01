.class public Lcom/mojang/minecraftpe/Minecraft_Market_Demo;
.super Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buyGame()V
    .locals 3

    const-string v0, "market://details?id=com.mojang.minecraftpe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/Minecraft_Market_Demo;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public checkLicense()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
