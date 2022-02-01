.class final Lcom/mojang/minecraftpe/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/e;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/mojang/minecraftpe/e;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->a(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/mojang/minecraftpe/e;->a:Lcom/mojang/minecraftpe/MainActivity;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mojang/minecraftpe/MainActivity;->a(Lcom/mojang/minecraftpe/MainActivity;[Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/e;->a:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->a(Lcom/mojang/minecraftpe/MainActivity;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/e;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->b(Lcom/mojang/minecraftpe/MainActivity;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mojang/minecraftpe/e;->a:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->a(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
