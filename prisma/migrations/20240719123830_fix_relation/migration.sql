/*
  Warnings:

  - You are about to drop the column `petsId` on the `Owner` table. All the data in the column will be lost.
  - You are about to drop the column `owner` on the `Pets` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Owner" DROP CONSTRAINT "Owner_petsId_fkey";

-- AlterTable
ALTER TABLE "Owner" DROP COLUMN "petsId";

-- AlterTable
ALTER TABLE "Pets" DROP COLUMN "owner",
ADD COLUMN     "ownerId" INTEGER;

-- AddForeignKey
ALTER TABLE "Pets" ADD CONSTRAINT "Pets_ownerId_fkey" FOREIGN KEY ("ownerId") REFERENCES "Owner"("id") ON DELETE SET NULL ON UPDATE CASCADE;
