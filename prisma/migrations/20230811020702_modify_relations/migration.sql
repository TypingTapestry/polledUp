/*
  Warnings:

  - Made the column `pollId` on table `Answer` required. This step will fail if there are existing NULL values in that column.
  - Made the column `answerId` on table `Response` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Answer" DROP CONSTRAINT "Answer_pollId_fkey";

-- DropForeignKey
ALTER TABLE "Response" DROP CONSTRAINT "Response_answerId_fkey";

-- AlterTable
ALTER TABLE "Answer" ALTER COLUMN "pollId" SET NOT NULL;

-- AlterTable
ALTER TABLE "Response" ALTER COLUMN "answerId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Answer" ADD CONSTRAINT "Answer_pollId_fkey" FOREIGN KEY ("pollId") REFERENCES "Poll"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Response" ADD CONSTRAINT "Response_answerId_fkey" FOREIGN KEY ("answerId") REFERENCES "Answer"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
