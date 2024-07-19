-- CreateTable
CREATE TABLE "Owner" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "petsId" INTEGER NOT NULL,

    CONSTRAINT "Owner_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Owner" ADD CONSTRAINT "Owner_petsId_fkey" FOREIGN KEY ("petsId") REFERENCES "Pets"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
