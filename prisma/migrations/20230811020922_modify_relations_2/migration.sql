-- DropForeignKey
ALTER TABLE "Answer" DROP CONSTRAINT "Answer_pollId_fkey";

-- DropForeignKey
ALTER TABLE "Response" DROP CONSTRAINT "Response_answerId_fkey";

-- AlterTable
ALTER TABLE "Answer" ALTER COLUMN "pollId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "Response" ALTER COLUMN "answerId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Answer" ADD CONSTRAINT "Answer_pollId_fkey" FOREIGN KEY ("pollId") REFERENCES "Poll"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Response" ADD CONSTRAINT "Response_answerId_fkey" FOREIGN KEY ("answerId") REFERENCES "Answer"("id") ON DELETE SET NULL ON UPDATE CASCADE;
